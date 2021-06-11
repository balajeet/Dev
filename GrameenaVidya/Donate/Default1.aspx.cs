using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Collections;
using System.Configuration;
using System.IO;
using System.Web.Security;
using GrameenaVidya.AppCode;

namespace GrameenaVidya.Donate
{
    public partial class Default1 : System.Web.UI.Page
    {
        long _UserID;
        int _TransactionID;
        string Amount;
        string CID;
        string CampaignName, CampaignDate, CampaignImg, CampaignMessage;
        DonarDetails Details = new DonarDetails();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCountries();
                BindSuggestState();
                if (this.Page.User.Identity.IsAuthenticated)
                {
                    if (Convert.ToString(Session["UserName"]) != "")
                    {
                        GetDonarExistingData();
                        divDonateDetails.Visible = false;
                        divcamDonarDetails.Visible = true;
                    }
                    else
                     {
                         if (Request.QueryString["CampaignID"] == "CID")
                         {
                             GetNewDonarDetails();
                             divDonateDetails.Visible = true;
                             divcamDonarDetails.Visible =false ;
                         }
                         else
                         {
                             divDonate.Visible = true;                            
                             divcampaign.Visible = false;
                             lnkCampDonate.Visible = false;
                             lnkdonate.Visible = true;
                         }         
                     }
                }
                
            }
        }

        private void GetNewDonarDetails()
        {
            string Query = Session["NewDonarDetails"].ToString();
            Session.Remove("NewDonarDetails");
            string[] QValues = Query.Split('~');

            txtDonarName.Text =  QValues[0].ToString();
            txtEmail.Text =  QValues[1].ToString();
          
            txtMobilenum.Text = QValues[2].ToString();
            txtAddress1.Text =  QValues[3].ToString();
            txtlocation.Text =  QValues[5];
            ddlcountry.SelectedIndex = Convert.ToInt32( QValues[6]);
            BindStates(Convert.ToInt32(QValues[6]));
            ddlState.SelectedIndex = Convert.ToInt32(QValues[7]);
            txtAddress2.Text = QValues[4].ToString();
            hdDonarUserType.Value = "1";
            hdDonarStateID.Value = Convert.ToString(ddlState.SelectedIndex);
            
                divcampaign.Visible = true;
                divDonate.Visible = false;
                dvSponserType.Visible = false;
                lnkCampDonate.Visible = true;
                lnkdonate.Visible = false;
              
        }


        private void GetDonarExistingData()
        {
            DataTable dt = GrameenaVidya.BLL.Users.GetUserLoginDetails(Convert.ToString(Session["UserName"])).Tables[0];
            if (dt.Rows.Count > 0)
            {
                txtDonarName.Text = dt.Rows[0]["Name"].ToString();
                txtEmail.Text = dt.Rows[0]["Email"].ToString();
                txtEmail.Attributes.Add("readonly", "false");
                txtMobilenum.Text = dt.Rows[0]["ContactNumber"].ToString();
                txtAddress1.Text = dt.Rows[0]["Address"].ToString();
                txtlocation.Text = "";
                ddlcountry.SelectedIndex = Convert.ToInt32(dt.Rows[0]["CountryID"]);
                BindStates(Convert.ToInt32(dt.Rows[0]["CountryID"]));
                ddlState.SelectedIndex = Convert.ToInt32(dt.Rows[0]["StateID"]);
                txtAddress2.Text = dt.Rows[0]["Address"].ToString();
                hdDonarUserType.Value = "2";
                hdDonarStateID.Value = Convert.ToString(ddlState.SelectedIndex);
                if (Request.QueryString["CampaignID"] == "CID")
                {
                    divcampaign.Visible = true;
                    divDonate.Visible = false;
                    dvSponserType.Visible = false;
                    lnkCampDonate.Visible = true;
                    lnkdonate.Visible = false;

                }
                else
                {
                    divDonateDetails.Visible = false;
                    divcamDonarDetails.Visible = true;
                    divcampaign.Visible = false;
                    lnkCampDonate.Visible = false;
                    lnkdonate.Visible = true;
                }
            }
        
        
        }

        private void BindStates(int CountryID)
        {
            ddlState.DataSource = GVSchools.BLL.Schools.Select_States(Convert.ToInt32(CountryID));
            ddlState.DataBind();
        }

        private void BindSuggestState()
        {
            ddlSuggestedStates.DataSource = GVSchools.BLL.Schools.SelectStates();
            ddlSuggestedStates.DataBind();
            ddlSuggestedStates.Items.Insert(0, new ListItem("Select State", "0"));
        }


        private void BindCountries()
        {
            DataSet ds = GVSchools.BLL.Schools.SelectCountries();
            ddlcountry.DataSource = ds.Tables[0];
            ddlcountry.DataBind();
            ddlcountry.Items.Insert(0, new ListItem("Select Country", "0"));
            
        }

        [System.Web.Services.WebMethod]
        public static ArrayList PopulateDistricts(int StateID)
        {

            ArrayList list = new ArrayList();
            DataSet ds = GVSchools.BLL.Schools.SelectDistricts(Convert.ToInt32(StateID));
            DataTable dt = ds.Tables[0];
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {

                list.Add(new ListItem(ds.Tables[0].Rows[i]["DistrictName"].ToString(), ds.Tables[0].Rows[i]["DistrictID"].ToString()));

            }
            return list;


        }

        [System.Web.Services.WebMethod]
        public static ArrayList PopulateStates(int CountryID)
        {

            ArrayList list = new ArrayList();
            DataSet ds = GVSchools.BLL.Schools.Select_States(Convert.ToInt32(CountryID));
            DataTable dt = ds.Tables[0];
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {

                list.Add(new ListItem(ds.Tables[0].Rows[i]["StateName"].ToString(), ds.Tables[0].Rows[i]["StateID"].ToString()));

            }
            return list;


        }



        [System.Web.Services.WebMethod]
        public static GetUserDetails[] CheckLogin(string username, string Password)
        {
            List<GetUserDetails> details = new List<GetUserDetails>();
            GrameenaVidya.BLL.Users oUser = new GrameenaVidya.BLL.Users();
            oUser = GrameenaVidya.BLL.Users.UsersGetUserDetails(username);
            if (oUser != null)
            {
                if (oUser.UserPassword == Password)
                {
                    
                    //TLW.BLL.UserLogIn.UserLogIn_CloseSessionDetails(oUser.UserID);
                    string SessionID = GrameenaVidya.BLL.Users.UserLogIn_InsertSessionDetails(oUser.UserID);
                    DonarDetails Details = new DonarDetails();
                    Details.UserID = oUser.UserID;
                    if (SessionID != null)
                    {
                        DataTable dt = GrameenaVidya.BLL.Users.GetUserLoginDetails(username).Tables[0];

                        foreach (DataRow dtrow in dt.Rows)
                        {
                            GetUserDetails gv = new GetUserDetails();
                            gv.Name = dtrow["Name"].ToString();
                            gv.Email = dtrow["Email"].ToString();
                            gv.MobileNum = dtrow["ContactNumber"].ToString();
                            gv.Address = dtrow["Address"].ToString();
                            gv.ContactPerson = dtrow["ContactPerson"].ToString();
                            gv.Country = dtrow["CountryName"].ToString();
                            gv.CountryID = dtrow["CountryID"].ToString();
                            gv.State = dtrow["StateName"].ToString();
                            gv.StateID = dtrow["StateID"].ToString();
                            gv.Location = dtrow["Location"].ToString();
                            gv.ZipCode = dtrow["Pincode"].ToString();
                           
                            details.Add(gv);
                        }
                      
                    }

                }
            }
            else
            {

            }

            return details.ToArray();
        }


        [System.Web.Services.WebMethod]
        public static string CheckUserName(string username)
        {
            string returnValue = string.Empty;
            bool _UserExist = GrameenaVidya.BLL.Users.CheckUserExists(username);
                //TLW.BLL.UserProfile.CheckUserExists(username);

            if (_UserExist)// User Name Not Available
            {
                returnValue = "<font color='#cc0000'><b>'" + username + "'</b> is already in use.</font>";
            }
            else //User_Name is available
            {
                returnValue = "Available";
            }
            return returnValue;

        }

        public class GetUserDetails
        {
            public string Name { get; set; }
            public string Email { get; set; }
            public string MobileNum { get; set; }
            public string Address { get; set; }
            public string ContactPerson { get; set; }
            public string Country { get; set; }
            public string State { get; set; }
            public string Location { get; set; }
            public string ZipCode { get; set; }
            public string CountryID { get; set; }
            public string StateID { get; set; }

        }

        private void PopulateDropDownList(ArrayList list, DropDownList ddl)
        {
            ddl.DataSource = list;
            ddl.DataTextField = "Text";
            ddl.DataValueField = "Value";
            ddl.DataBind();
        }

        protected void lnkdonate_Click(object sender, EventArgs e)
        {
            int DonarType = Convert.ToInt32(hdDonarUserType.Value);//NewUser or Existing User
            if (DonarType == 1)//NewUser
            {
                if (Convert.ToInt32(hdSelectSchoolType.Value) == 1)//select a school
                {
                    BindSchoolDetails();
                }
                else
                {
                    if (Convert.ToInt32(hdSelectSchoolType.Value) == 2)//select a school
                    {
                        BindSuggestSchoolDetails();
                    }
                
                }
           }
            if (DonarType == 2)//Existinguser
            {
                if (Convert.ToInt32(hdSelectSchoolType.Value) == 1)
                {
                    BindExistingUserSchoolDetails();
                }
                if (Convert.ToInt32(hdSelectSchoolType.Value) == 2)//select a school
                {
                    BindExistingSuggestedSchoolDetails();
                }
            }
         
        }

        #region Donate Data
        private void BindExistingSuggestedSchoolDetails()
        {
            DateTime ExpiryDate = DateTime.Now.AddYears(1);
            int DonateMode = 1;//Donate Mode From Donate
            int paymentMode = 1;//offline
            int AdoptType = 1;//Adopt a school
            int SponserType = Convert.ToInt32(hdSelectSponserType.Value);//Sponser type id
            //  int RegUserID = Convert.ToInt32(hdSelectSchoolType.Value);
         
            int ContributionType = Convert.ToInt32(hdContributionType.Value);//Contribution TypeID
            GetAmount(hdContributionType.Value);
            string _TransactionDetails;
            int SchoolType = Convert.ToInt32(hdSelectSchoolType.Value);//Select a school or support a school
            _TransactionDetails = GrameenaVidya.BLL.Donate.InsertExistingDonarDetails(Convert.ToInt32(Details.UserID), txtDonarName.Text, txtMobilenum.Text, Convert.ToInt32(hdSelectSponserType.Value), 1,
                    Convert.ToInt32(ddlcountry.SelectedValue),
                    Convert.ToInt32(hdDonarStateID.Value),
                    txtlocation.Text,
                    txtAddress1.Text,
                    txtpincode.Text,
                    DonateMode,
                    Convert.ToInt32(SchoolType),
                    AdoptType,
                    paymentMode,
                    Amount,
                    ExpiryDate,
                    Convert.ToInt32(ContributionType), 0,
                       0, 0, txtPrincipalName.Text, txtSchoolName.Text, txtSchoolMobileNumber.Text, Convert.ToInt32(hdSuggestedDistrictID.Value), Convert.ToInt32(ddlSuggestedStates.SelectedValue));
            string[] strArray = _TransactionDetails.Split(',');
            foreach (object obj in strArray)
            {
                _UserID = Convert.ToInt32(strArray[0]);
                _TransactionID = Convert.ToInt32(strArray[1]);
                Amount = strArray[2];
            }

            if (_UserID > 0)
            {
                SendMail(_UserID);
                Response.Redirect("Success.aspx?TransactionID=" + _TransactionID + "&Amount=" + Amount);
            }
        }

        private void BindExistingUserSchoolDetails()
        {
            DateTime ExpiryDate = DateTime.Now.AddYears(1);
            int DonateMode = 1;//Donate Mode From Donate
            int paymentMode = 1;//offline
            int AdoptType = 1;//Adopt a school
            int SponserType = Convert.ToInt32(hdSelectSponserType.Value);//Sponser type id
            //  int RegUserID = Convert.ToInt32(hdSelectSchoolType.Value);
            int SchoolID = Convert.ToInt32(hdschoolID.Value);//SchoolID
            int ContributionType = Convert.ToInt32(hdContributionType.Value);//Contribution TypeID
            GetAmount(hdContributionType.Value);
            string _TransactionDetails;
            int SchoolType = Convert.ToInt32(hdSelectSchoolType.Value);//Select a school or support a school
            _TransactionDetails = GrameenaVidya.BLL.Donate.InsertExistingDonarDetails(Convert.ToInt32(Details.UserID), txtDonarName.Text, txtMobilenum.Text, Convert.ToInt32(hdSelectSponserType.Value), 1,
                    Convert.ToInt32(ddlcountry.SelectedValue),
                    Convert.ToInt32(hdDonarStateID.Value),
                    txtlocation.Text,
                    txtAddress1.Text,
                    txtpincode.Text,
                    DonateMode,
                    Convert.ToInt32(SchoolType),
                    AdoptType,
                    paymentMode,
                    Amount,
                    ExpiryDate,
                    Convert.ToInt32(ContributionType), SchoolID,
                      Convert.ToInt32(hdstateID.Value), Convert.ToInt32(hddistrictID.Value), "", "", "", Convert.ToInt32(""), Convert.ToInt32(""));
            string[] strArray = _TransactionDetails.Split(',');
            foreach (object obj in strArray)
            {
                _UserID = Convert.ToInt32(strArray[0]);
                _TransactionID = Convert.ToInt32(strArray[1]);
                Amount = strArray[2];
            }

            if (_UserID > 0)
            {
                SendMail(_UserID);
                Response.Redirect("Success.aspx?TransactionID=" + _TransactionID + "&Amount=" + Amount);
            }
        }

        private void BindSuggestSchoolDetails()
        {
            DateTime ExpiryDate = DateTime.Now.AddYears(1);
            int DonateMode = 1;//Donate Mode From Donate
            int paymentMode = 1;//offline
            int AdoptType = 1;//Adopt a school
            int SponserType = Convert.ToInt32(hdSelectSponserType.Value);//Sponser type id
            //  int RegUserID = Convert.ToInt32(hdSelectSchoolType.Value);
            //int SchoolID = Convert.ToInt32(hdschoolID.Value);//SchoolID
            int ContributionType = Convert.ToInt32(hdContributionType.Value);//Contribution TypeID
            GetAmount(hdContributionType.Value);
            string _TransactionDetails;
            int SchoolType = Convert.ToInt32(hdSelectSchoolType.Value);//Select a school or support a school
            _TransactionDetails = GrameenaVidya.BLL.Donate.InsertDonarDetails(txtDonarName.Text, txtEmail.Text, txtMobilenum.Text, Convert.ToInt32(hdSelectSponserType.Value), 1,
                    Convert.ToInt32(ddlcountry.SelectedValue),
                    Convert.ToInt32(hdDonarStateID.Value),
                    txtlocation.Text,
                    txtAddress1.Text,
                    txtpincode.Text,
                    DonateMode,
                    Convert.ToInt32(SchoolType),
                    AdoptType,
                    paymentMode,
                    Amount,
                    ExpiryDate,
                    Convert.ToInt32(ContributionType), 0,
                      0, 0, txtPrincipalName.Text, txtSchoolName.Text, txtSchoolMobileNumber.Text, Convert.ToInt32(hdSuggestedDistrictID.Value), Convert.ToInt32(ddlSuggestedStates.SelectedItem.Value));
            string[] strArray = _TransactionDetails.Split(',');
            foreach (object obj in strArray)
            {
                _UserID = Convert.ToInt32(strArray[0]);
                _TransactionID = Convert.ToInt32(strArray[1]);
                Amount = strArray[2];
            }

            if (_UserID > 0)
            {
                SendMail(_UserID);
                Response.Redirect("Success.aspx?TransactionID=" + _TransactionID + "&Amount=" + Amount);
            }
        }

        private void BindSchoolDetails()
        {
          
            DateTime ExpiryDate = DateTime.Now.AddYears(1);
            int DonateMode = 1;//Donate Mode From Donate
            int paymentMode = 1;//offline
            int AdoptType = 1;//Adopt a school
            int SponserType = Convert.ToInt32(hdSelectSponserType.Value);//Sponser type id
          //  int RegUserID = Convert.ToInt32(hdSelectSchoolType.Value);
            int SchoolID = Convert.ToInt32(hdschoolID.Value);//SchoolID
            int ContributionType = Convert.ToInt32(hdContributionType.Value);//Contribution TypeID
            GetAmount(hdContributionType.Value);
            string _TransactionDetails;
            int SchoolType = Convert.ToInt32(hdSelectSchoolType.Value);//Select a school or support a school
            _TransactionDetails = GrameenaVidya.BLL.Donate.InsertDonarDetails(txtDonarName.Text, txtEmail.Text, txtMobilenum.Text, Convert.ToInt32(hdSelectSponserType.Value), 1,
                    Convert.ToInt32(ddlcountry.SelectedValue),
                    Convert.ToInt32(hdDonarStateID.Value),
                    txtlocation.Text,
                    txtAddress1.Text,
                    txtpincode.Text,
                    DonateMode,
                    Convert.ToInt32(SchoolType),
                    AdoptType,
                    paymentMode,
                    Amount,
                    ExpiryDate,
                    Convert.ToInt32(ContributionType), SchoolID,
                      Convert.ToInt32(hdstateID.Value), Convert.ToInt32(hddistrictID.Value), "", "", "",  Convert.ToInt32("") , Convert.ToInt32(""));
            string[] strArray = _TransactionDetails.Split(',');
            foreach (object obj in strArray)
            {
                _UserID = Convert.ToInt32(strArray[0]);
                _TransactionID = Convert.ToInt32(strArray[1]);
                Amount = strArray[2];
            }

            if (_UserID > 0)
            {
                SendMail(_UserID);
                Response.Redirect("Success.aspx?TransactionID=" + _TransactionID + "&Amount=" + Amount);
            }
        }
        #endregion

        #region CampaignData
        private void BindExistingSuggestedCampaignetails()
        {
            DateTime ExpiryDate = DateTime.Now.AddYears(1);
            DateTime CExpiryDate = DateTime.Now.AddMonths(1);
            int DonateMode = 1;//Donate Mode From Donate
            int paymentMode = 1;//offline
            int AdoptType = 1;//Adopt a school
            int SponserType = Convert.ToInt32(hdSelectSponserType.Value);//Sponser type id
            //  int RegUserID = Convert.ToInt32(hdSelectSchoolType.Value);
           // int SchoolID = Convert.ToInt32(hdschoolID.Value);//SchoolID
            int ContributionType = Convert.ToInt32(hdContributionType.Value);//Contribution TypeID
            GetAmount(hdContributionType.Value);
            string _TransactionDetails;
            int SchoolType = Convert.ToInt32(hdSelectSchoolType.Value);//Select a school or support a school
            _TransactionDetails = GrameenaVidya.BLL.Donate.InsertExistingCDonarDetails(Convert.ToInt32(Details.UserID), txtDonarName.Text, txtMobilenum.Text, Convert.ToInt32(hdSelectSponserType.Value), 1,
                   Convert.ToInt32(ddlcountry.SelectedValue),
                   Convert.ToInt32(hdDonarStateID.Value),
                   txtlocation.Text,
                   txtAddress1.Text,
                   txtpincode.Text,
                   DonateMode,
                   Convert.ToInt32(SchoolType),
                   AdoptType,
                   paymentMode,
                   Convert.ToString(hdCampAmount.Value),
                   System.DateTime.Now,
                   Convert.ToInt32(ContributionType), 0,
                     0, 0, txtPrincipalName.Text, txtSchoolName.Text, txtMobilenum.Text, Convert.ToInt32(hdSuggestedDistrictID.Value), Convert.ToInt32(ddlSuggestedStates.SelectedItem.Value), CampaignName, CampaignDate, CExpiryDate.ToString(), "", CampaignMessage);
            string[] strArray = _TransactionDetails.Split(',');
            foreach (object obj in strArray)
            {
                _UserID = Convert.ToInt32(strArray[0]);
                _TransactionID = Convert.ToInt32(strArray[1]);
                Amount = strArray[2];
            }

            if (_UserID > 0)
            {
                SendMail(_UserID);
                Response.Redirect("Success.aspx?TransactionID=" + _TransactionID + "&Amount=" + Amount);
            }
        }

        private void BindExistingUserCampaignDetails()
        {
            DateTime ExpiryDate = DateTime.Now.AddYears(1);
            DateTime CExpiryDate = DateTime.Now.AddMonths(1);
            int DonateMode = 1;//Donate Mode From Donate
            int paymentMode = 1;//offline
            int AdoptType = 1;//Adopt a school
            int SponserType = Convert.ToInt32(hdSelectSponserType.Value);//Sponser type id
            //  int RegUserID = Convert.ToInt32(hdSelectSchoolType.Value);
            int SchoolID = Convert.ToInt32(hdschoolID.Value);//SchoolID
            int ContributionType = Convert.ToInt32(hdContributionType.Value);//Contribution TypeID
            GetAmount(hdContributionType.Value);
            string _TransactionDetails;
            int SchoolType = Convert.ToInt32(hdSelectSchoolType.Value);//Select a school or support a school
            _TransactionDetails = GrameenaVidya.BLL.Donate.InsertExistingCDonarDetails(Convert.ToInt32(Details.UserID),txtDonarName.Text,txtMobilenum.Text, Convert.ToInt32(hdSelectSponserType.Value), 1,
                   Convert.ToInt32(ddlcountry.SelectedValue),
                   Convert.ToInt32(hdDonarStateID.Value),
                   txtlocation.Text,
                   txtAddress1.Text,
                   txtpincode.Text,
                   DonateMode,
                   Convert.ToInt32(SchoolType),
                   AdoptType,
                   paymentMode,
                   Convert.ToString(hdCampAmount.Value),
                   System.DateTime.Now,
                   Convert.ToInt32(ContributionType), SchoolID,
                     Convert.ToInt32("212"), Convert.ToInt32("11"), "", "", "", 0, 0, CampaignName, CampaignDate, CExpiryDate.ToString(), "", CampaignMessage);
            string[] strArray = _TransactionDetails.Split(',');
            foreach (object obj in strArray)
            {
                _UserID = Convert.ToInt32(strArray[0]);
                _TransactionID = Convert.ToInt32(strArray[1]);
                Amount = strArray[2];
            }

            if (_UserID > 0)
            {
                SendMail(_UserID);
                Response.Redirect("Success.aspx?TransactionID=" + _TransactionID + "&Amount=" + Amount);
            }
        }

        private void BindCampaignSuggestSchoolDetails()
        {
            DateTime ExpiryDate = DateTime.Now.AddYears(1);

            DateTime CExpiryDate = DateTime.Now.AddMonths(1);
            int DonateMode = 2;//Donate Mode From Campaign
            int paymentMode = 1;//offline
            int AdoptType = 1;//Adopt a school
            int SponserType = Convert.ToInt32(hdSelectSponserType.Value);//Sponser type id
            //  int RegUserID = Convert.ToInt32(hdSelectSchoolType.Value);
           // int SchoolID = Convert.ToInt32(hdschoolID.Value);//SchoolID
            int ContributionType = Convert.ToInt32(hdContributionType.Value);//Contribution TypeID
            GetAmount(hdContributionType.Value);
            string _TransactionDetails;
            int SchoolType = Convert.ToInt32(hdSelectSchoolType.Value);//Select a school or support a school


            //string[] strArray = _TransactionDetails.Split(',');
            //foreach (object obj in strArray)
            //{
            //    _UserID = Convert.ToInt32(strArray[0]);
            //    _TransactionID = Convert.ToInt32(strArray[1]);
            //    Amount = strArray[2];
            //    CID = strArray[3];


            //    if (_UserID > 0)
            //    {
            //        SendMail(_UserID);
            //        Response.Redirect("Success.aspx?TransactionID=" + _TransactionID + "&Amount=" + Amount);
            //    }
            //}
        }

        private void BindCampaignDetails()
        {
            DateTime ExpiryDate = DateTime.Now.AddYears(1);

            DateTime CExpiryDate = DateTime.Now.AddMonths(1);
            int DonateMode = 2;//Donate Mode From Campaign
            int paymentMode = 1;//offline
            int AdoptType = 1;//Adopt a school
            int SponserType = Convert.ToInt32(hdSelectSponserType.Value);//Sponser type id
            //  int RegUserID = Convert.ToInt32(hdSelectSchoolType.Value);
            int SchoolID = Convert.ToInt32(hdschoolID.Value);//SchoolID
            int ContributionType = Convert.ToInt32(hdContributionType.Value);//Contribution TypeID
            GetAmount(hdContributionType.Value);
            string _TransactionDetails;
            int SchoolType = Convert.ToInt32(hdSelectSchoolType.Value);//Select a school or support a school

            //_TransactionDetails = GrameenaVidya.BLL.Donate.InsertCampaignDetails(txtDonarName.Text, txtEmail.Text, txtMobilenum.Text, Convert.ToInt32(hdSelectSponserType.Value), 1,
            //        Convert.ToInt32(ddlcountry.SelectedValue),
            //        Convert.ToInt32(hdDonarStateID.Value),
            //        txtlocation.Text,
            //        txtAddress1.Text,
            //        txtpincode.Text,
            //        DonateMode,
            //        Convert.ToInt32(SchoolType),
            //        AdoptType,
            //        paymentMode,
            //        Convert.ToString(hdCampAmount.Value),
            //        System.DateTime.Now,
            //        Convert.ToInt32(ContributionType), SchoolID,
            //          Convert.ToInt32("212"), Convert.ToInt32("11"), "", "", "", 0, 0, CampaignName, CampaignDate,CExpiryDate.ToString(),"", CampaignMessage);

          

            //string[] strArray = _TransactionDetails.Split(',');
            //foreach (object obj in strArray)
            //{
            //    _UserID = Convert.ToInt32(strArray[0]);
            //    _TransactionID = Convert.ToInt32(strArray[1]);
            //    Amount = strArray[2];
            //    CID = strArray[3];


            //    if (_UserID > 0)
            //    {
            //        SendMail(_UserID);
            //        Response.Redirect("Success.aspx?TransactionID=" + _TransactionID + "&Amount=" + Amount);
            //    }
            //}
        }
        #endregion

        private void GetAmount(string ContributionID)
        {


            switch (ContributionID)
            {
                case "1":
                    Amount = "1,00,000/- ";
                    break;
                case "2":
                    Amount = "1,50,000 /-";
                    break;
                case "3":
                    Amount = "2,00,000/-";
                    break;
                case "4":
                    Amount = "60,000/-";
                    break;
                case "5":
                    Amount = "22,500/-";
                    break;
                case "6":
                    Amount = "17,500/-";
                    break;
                case "7":
                    Amount = txtother.Text;
                    break;

            }
        }

     


        private void SendMail(long UserID)
        {
            try
            {
                GrameenaVidya.BLL.Users oUser = GrameenaVidya.BLL.Users.UserRegisterSelectRow(UserID);

                GrameenaVidya.Common.Mailing oMailing = new GrameenaVidya.Common.Mailing();



                //Mail to User

                // Mailing 
                oMailing.From = ConfigurationManager.AppSettings["RegistrationSender"].ToString();
                oMailing.DisplayFromName = "GrameenaVidya Registration Service";
                oMailing.To = oUser.EmailAddress;
                oMailing.DisplayToName = oUser.Name;
                oMailing.IsBodyHtml = true;
                oMailing.Subject = "GrameenaVidya, Confirmation mail";

                string body = string.Empty;
                string encryptEmail = Server.UrlEncode(GrameenaVidya.Common.Cryptography.EncryptURL("ACTIVATE|" + oUser.Name));
                string HostAddress = Request.Url.Scheme + "://" + Request.Url.Host + Request.ApplicationPath;
                string password = GeneratePassword();
                using (StreamReader reader = new StreamReader(Server.MapPath("~/Templates/PurchaseOrder.html")))
                {
                    body = reader.ReadToEnd();
                }
                body = body.Replace("{Name}", oUser.Name);
                body = body.Replace("{EmailAddress}", oUser.EmailAddress);
                body = body.Replace("{Password}", password);

                body = body.Replace("{SiteUrl}", HostAddress + encryptEmail);

                oMailing.Message = body;

                oMailing.SendMail();

                //Mailing object to send mails to CET Eggog Admin
                GrameenaVidya.Common.Mailing oAdminMailing = new GrameenaVidya.Common.Mailing();


                oAdminMailing.From = oUser.EmailAddress;
                oAdminMailing.DisplayFromName = "GrameenaVidya Registration Details";
                oAdminMailing.To = ConfigurationManager.AppSettings["AdminEmail"].ToString();
                oAdminMailing.DisplayToName = "GrameenaVidya Admin";
                oAdminMailing.IsBodyHtml = true;
                oAdminMailing.Subject = "GrameenaVidya  Registeration Details";
                System.Text.StringBuilder oSBAdminMessage = new System.Text.StringBuilder();
                oSBAdminMessage.Append("Dear ").Append("Admin").Append(" ").Append("<br/><br/>")
                    .Append("Please find the details of the new student registered on GrameenaVidya website below").Append("<br/><br/>")
                    .Append("Name : " + oUser.Name + "<br/>")
                    .Append("Email ID : " + oUser.EmailAddress + "<br/>")
                    .Append("Mobile No : " + oUser.ContactNumber + "<br/>")
                      .Append("Password : " + password + "<br/>")
                    .Append("<br/><br/>").Append("Thank you,<br/>GrameenaVidya Team");
                oAdminMailing.Message = oSBAdminMessage.ToString();
                oAdminMailing.SendMail();
                GrameenaVidya.BLL.Users.UserCredentialsInsertRow(UserID, password, DateTime.Now, DateTime.Now, false);



                //SendSMS(oUser);
            }
            catch (Exception ex)
            {


            }
        }

        private string GeneratePassword()
        {
            string strPwdchar = "abcdefghjkmnpqrstuvwxyz23456789ABCDEFGHJKMNPQRSTUVWXYZ";
            string strPwd = "";
            Random rnd = new Random();
            for (int i = 0; i <= 5; i++)
            {
                int iRandom = rnd.Next(0, strPwdchar.Length - 1);
                strPwd += strPwdchar.Substring(iRandom, 1);
            }
            return strPwd;
        }

        protected void lnkCampDonate_Click1(object sender, EventArgs e)
        {
            string Query = Session["QueryValues"].ToString();
            Session.Remove("QueryValues");
            string[] QValues = Query.Split('~');

            CampaignName = QValues[0];
            CampaignDate = QValues[1];
            CampaignImg = "";
            CampaignMessage = QValues[2];




            int DonarType = Convert.ToInt32(hdDonarUserType.Value);//NewUser or Existing User
            if (DonarType == 1)//NewUser
            {
                if (Convert.ToInt32(hdSelectSchoolType.Value) == 1)//select a school
                {
                    BindCampaignDetails();
                }
                else
                {
                    if (Convert.ToInt32(hdSelectSchoolType.Value) == 2)//select a school
                    {
                        BindCampaignSuggestSchoolDetails();
                    }

                }
            }
            if (DonarType == 2)//Existinguser
            {
                if (Convert.ToInt32(hdSelectSchoolType.Value) == 1)
                {
                    BindExistingUserCampaignDetails();
                }
                if (Convert.ToInt32(hdSelectSchoolType.Value) == 2)//select a school
                {
                    BindExistingSuggestedCampaignetails();
                }
            }
          

            

        }

    }
}