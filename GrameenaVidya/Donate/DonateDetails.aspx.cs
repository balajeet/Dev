using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Collections;
using GrameenaVidya.AppCode;
using System.Configuration;
using System.IO;
using System.Text;
using GrameenaVidya.Common;


namespace GrameenaVidya.Donate
{
    public partial class DonateDetails : System.Web.UI.Page
    {
        #region Private Variables
        int _UserID;
        int _CampID;
        int _TransactionID;
        string Amount;
        string CID;
        DonarDetails Details = new DonarDetails();
        #endregion

        #region Private Methods
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCountries();
                BindSuggestState();
            }
        }

        #endregion

        #region BindEvents
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

        #endregion

        #region Webservicses
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
        public static ArrayList BinDropDownList(int Units)
        {
            ArrayList list = new ArrayList();
            for (int i = 1; i <= Units; i++)
            {
                int UnitsID = Units;
                list.Add(new ListItem(i + " Unit".ToString(), i.ToString()));

            }
            return list;
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

        [System.Web.Services.WebMethod]
        public static string SendMailForgetPwd(string Email)
        {
            string returnValue = string.Empty;
            if (GrameenaVidya.DAL.Common.CheckFieldExist("UserProfile", "EmailAddress", Email, "UserID", "0"))
            {
                GrameenaVidya.BLL.Users oUser = new GrameenaVidya.BLL.Users();

                oUser = GrameenaVidya.BLL.Users.UsersGetUserDetails(Email.Trim());

                string UserEmail = oUser.EmailAddress;
                string UserID = oUser.Name;
                string Password = oUser.UserPassword;
                StringBuilder oSBMessage = new StringBuilder();
                Mailing oMailing;
                try
                {
                    oMailing = new Mailing();
                    oMailing.From = "shilpab@grameenavidya.org";
                    oMailing.DisplayFromName = "Password Recovery Service";
                    oMailing.To = UserEmail;
                    oMailing.DisplayToName = UserEmail;//oUser.FirstName + " " + oUser.LastName;
                    oMailing.IsBodyHtml = true;
                    oMailing.Subject = "Grameenavidya Website password recovery details";

                    oSBMessage.Append("Dear ").Append(oUser.Name).Append(" ").Append("<br/><br/>")
                    .Append("We have received a request from the User Name <b>" + UserID + "</b>")
                    .Append(" for a recovery of password,<br/> Following are your Password Details:")
                    .Append("<br/>")
                    .Append("Your Login ID : " + UserID)
                    .Append("<br/>")
                    .Append("Your password : <b><i>" + Password)
                    .Append("</b></i>")
                    .Append("<br/>")
                    .Append("<br/><br/>-----------<br/>")
                    .Append("Thank you,<br/>Grameenavidya Team<br/>www.Grameenavidya.org.com");
                    oMailing.Message = oSBMessage.ToString();
                    oMailing.SendMail();
                    returnValue = "Available";

                }
                catch (Exception ex)
                {

                }


            }
            else
            {
                returnValue = "NotAvailable";
            
            }
            return returnValue;
        }

     

        #endregion

        #region Methods

        private void GetAmount(string ContributionID)
        {


            switch (ContributionID)
            {
                case "1":
                    Amount = "100000/- ";
                    break;
                case "2":
                    Amount = "150000 /-";
                    break;
                case "3":
                    Amount = "200000/-";
                    break;
                case "4":
                    Amount = "60000/-";
                    break;
                case "5":
                    Amount = "22500/-";
                    break;
                case "6":
                    Amount = "17500/-";
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
                if (Convert.ToInt32(hdDonarUserType.Value) == 1)
                {
                    GrameenaVidya.BLL.Users.UserCredentialsInsertRow(UserID, password, DateTime.Now, DateTime.Now, false);
                }



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

        protected void lnkdonate_Click1(object sender, EventArgs e)
        {
            int DonateType1 = Convert.ToInt32(hdAmountPaymentType.Value);//Campaign or Donate if 1 donate,2 Campaign
            int AdoptTypeID = 1;//Adopt a School
            int School_ContributionID = Convert.ToInt32(hdSelectSchoolType.Value);//Select a School/Support a School/Gv Pool
            //int Sponser_ContributionType = Convert.ToInt32(hdSponserContributionType.Value);//Fixed or Variable Contribution        
            
           // string Amount = Convert.ToString(txtAmountSelected.Text);
            string Amount = Convert.ToString(hdtotalAmount.Value);
            int Sponser_ContributionID = Convert.ToInt32(hdSponserContributionID.Value);//Type of Sponser like hardWare,Software,DtTest
            int SchoolID = Convert.ToInt32(hdschoolID.Value);
            int DonateMode =Convert.ToInt32(hdDonateMode.Value) ;//from donate or campaign or gv
            int PaymentMode = 1;
            DateTime ExpiryDate = DateTime.Now.AddYears(1);
            int DonarType = Convert.ToInt32(hdDonarUserType.Value);//NewUser or Existing User
            if (DonarType == 1)//NewUser
            {
                if (DonateType1 == 1)
                {

                    if (School_ContributionID == 1)//select a school
                    {
                        InsertSelectedSchoolData(AdoptTypeID, School_ContributionID, Convert.ToInt32(hdunits.Value), Convert.ToInt32(hdYears.Value), Amount, Sponser_ContributionID, SchoolID, DonateMode, PaymentMode, ExpiryDate);
                    }
                    else
                    {
                        if (School_ContributionID == 2)//Support a School
                        {
                            BindSuggestSchoolDetails(AdoptTypeID, School_ContributionID, Convert.ToInt32(hdunits.Value), Convert.ToInt32(hdYears.Value), Amount, Sponser_ContributionID, SchoolID, DonateMode, PaymentMode, ExpiryDate, txtPrincipalName.Text, txtSchoolName.Text, txtMobilenum.Text, Convert.ToInt32(hdSuggestedStateID.Value), Convert.ToInt32(hdSuggestedDistrictID.Value));
                        }

                        else
                        {

                            if (School_ContributionID == 3)//GVpool
                            {
                                InsertGVpoolDetails(AdoptTypeID, School_ContributionID, 0, 0, txtother.Text, Sponser_ContributionID, SchoolID, DonateMode, PaymentMode, ExpiryDate, "", "", "", 0, 0);
                            }
                        }

                    }
                }
                else
                {
                    if (DonateType1 == 2)
                    {


                        if (School_ContributionID == 1)//select a school + Start a Campaign
                        {

                            InsertSelectedSchoolDataCampaign(AdoptTypeID, School_ContributionID, Convert.ToInt32(hdunits.Value), Convert.ToInt32(hdYears.Value), Amount, Sponser_ContributionID, SchoolID, DonateMode, PaymentMode, ExpiryDate, txtCampName.Text, CampDate.Text, txtCamAmount.Text, txtMessage.Text, hdGoalAmt.Value);
                        }
                        else
                        {
                            if (School_ContributionID == 2)//Support a School + Start a Campaign
                            {
                                BindSuggestSchoolDataCampaign(AdoptTypeID, School_ContributionID, Convert.ToInt32(hdunits.Value), Convert.ToInt32(hdYears.Value), Amount, Sponser_ContributionID, SchoolID, DonateMode, PaymentMode, ExpiryDate, txtPrincipalName.Text, txtSchoolName.Text, txtMobilenum.Text, Convert.ToInt32(hdSuggestedStateID.Value), Convert.ToInt32(hdSuggestedDistrictID.Value));
                            }

                        }


                    }


                }


            }
            if (DonarType == 2)//Existinguser
            {
                if (DonateType1 == 1)
                {
                    if (Convert.ToInt32(hdSelectSchoolType.Value) == 1)//select a school
                    {
                        InsertExistingDonarDetails(AdoptTypeID, School_ContributionID,Convert.ToInt32(hdunits.Value), Convert.ToInt32(hdYears.Value), Amount, Sponser_ContributionID, SchoolID, DonateMode, PaymentMode, ExpiryDate);
                    }
                    if (School_ContributionID == 2)//Support a School
                    {
                        BindExistingSuggestSchoolDetails(AdoptTypeID, School_ContributionID, Convert.ToInt32(hdunits.Value), Convert.ToInt32(hdYears.Value), Amount, Sponser_ContributionID, SchoolID, DonateMode, PaymentMode, ExpiryDate, txtPrincipalName.Text, txtSchoolName.Text, txtMobilenum.Text, Convert.ToInt32(hdSuggestedStateID.Value), Convert.ToInt32(hdSuggestedDistrictID.Value));
                    }

                    else
                    {

                        if (School_ContributionID == 3)//GVpool
                        {
                            InsertExistingGVpoolDetails(AdoptTypeID, School_ContributionID, 0, 0, txtother.Text, Sponser_ContributionID, SchoolID, DonateMode, PaymentMode, ExpiryDate, "", "", "", 0, 0);
                        }
                    }
                }
                else
                {
                    if (DonateType1 == 2)
                    {

                        if (School_ContributionID == 1)//select a school + Start a Campaign
                        {

                            InsertExistingDonarDetailsCampaign(AdoptTypeID, School_ContributionID, Convert.ToInt32(hdunits.Value), Convert.ToInt32(hdYears.Value), Amount, Sponser_ContributionID, SchoolID, DonateMode, PaymentMode, ExpiryDate);
                        }
                        else
                        {
                            if (School_ContributionID == 2)//Support a School + Start a Campaign
                            {
                                BindExistingSuggestSchoolDetailsCampaign(AdoptTypeID, School_ContributionID, Convert.ToInt32(hdunits.Value), Convert.ToInt32(hdYears.Value), Amount, Sponser_ContributionID, SchoolID, DonateMode, PaymentMode, ExpiryDate, txtPrincipalName.Text, txtSchoolName.Text, txtMobilenum.Text, Convert.ToInt32(hdSuggestedStateID.Value), Convert.ToInt32(hdSuggestedDistrictID.Value));
                            }

                        }
                    }
                }

            }



        }

        #endregion

        #region New DonarData

        private void BindSuggestSchoolDetails(int AdoptTypeID, int School_ContributionID,int Units, int Years, string Amount, int Sponser_ContributionID, int SchoolID, int DonateMode, int PaymentMode, DateTime ExpiryDate, string principalName, string SchoolName, string Mobilenumber, int StateID, int DistrictID)
        {
            string _TransactionDetails;

            _TransactionDetails = GrameenaVidya.BLL.Donate.Insert_NewTransactionDetails(txtDonarName.Text, txtEmail.Text, txtMobilenum.Text, Convert.ToInt32(hdSelectSponserType.Value), 1,
                    Convert.ToInt32(ddlcountry.SelectedValue),
                    Convert.ToInt32(hdDonarStateID.Value),
                    txtlocation.Text,
                    txtAddress1.Text,
                    txtpincode.Text,
                    AdoptTypeID, School_ContributionID, Units, Years, Amount, Sponser_ContributionID, SchoolID, DonateMode, PaymentMode, ExpiryDate, principalName, SchoolName, Mobilenumber, StateID, DistrictID);
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
                Details.UserID = _UserID;
                Details.DonarName = txtEmail.Text;
                Session["UserID"] = _UserID;
                Response.Redirect("Success.aspx?TransactionID=" + _TransactionID + "&Amount=" + Amount);
            }
        }

        private void InsertSelectedSchoolData(int AdoptTypeID, int School_ContributionID, int Units, int Years, string Amount, int Sponser_ContributionID, int SchoolID, int DonateMode, int PaymentMode, DateTime ExpiryDate)
        {
            string _TransactionDetails;

            _TransactionDetails = GrameenaVidya.BLL.Donate.Insert_NewTransactionDetails(txtDonarName.Text, txtEmail.Text, txtMobilenum.Text, Convert.ToInt32(hdSelectSponserType.Value), 1,
                    Convert.ToInt32(ddlcountry.SelectedValue),
                    Convert.ToInt32(hdDonarStateID.Value),
                    txtlocation.Text,
                    txtAddress1.Text,
                    txtpincode.Text,
                    AdoptTypeID, School_ContributionID, Units, Years, Amount, Sponser_ContributionID, SchoolID, DonateMode, PaymentMode, ExpiryDate, "", "", "", 0, 0);
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
                Details.UserID = _UserID;
                Details.DonarName = txtEmail.Text;
                Session["UserID"] = _UserID;
                Response.Redirect("Success.aspx?TransactionID=" + _TransactionID + "&Amount=" + Amount);
            }
        }
        private void InsertGVpoolDetails(int AdoptTypeID, int School_ContributionID, int Units, int Years, string p, int Sponser_ContributionID, int SchoolID, int DonateMode, int PaymentMode, DateTime ExpiryDate, string p_2, string p_3, string p_4, int p_5, int p_6)
        {
            string _TransactionDetails;

            _TransactionDetails = GrameenaVidya.BLL.Donate.Insert_NewTransactionDetails(txtDonarName.Text, txtEmail.Text, txtMobilenum.Text, Convert.ToInt32(hdSelectSponserType.Value), 1,
                    Convert.ToInt32(ddlcountry.SelectedValue),
                    Convert.ToInt32(hdDonarStateID.Value),
                    txtlocation.Text,
                    txtAddress1.Text,
                    txtpincode.Text,
                    AdoptTypeID, School_ContributionID,Units, Years, txtother.Text, Sponser_ContributionID, 0, DonateMode, PaymentMode, ExpiryDate, "", "", "", 0, 0);
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
                Details.UserID = _UserID;
                Details.DonarName = txtEmail.Text;
                Session["UserID"] = _UserID;
                Response.Redirect("Success.aspx?TransactionID=" + _TransactionID + "&Amount=" + Amount);
            }
        }

        #endregion

        #region new CampaignCreation for new Donar
        private void BindSuggestSchoolDataCampaign(int AdoptTypeID, int School_ContributionID, int units, int Years, string Amount, int Sponser_ContributionID, int SchoolID, int DonateMode, int PaymentMode, DateTime ExpiryDate, string PrincipalName, string SchoolName, string mobileNumber, int SuggestedStateID, int SuggestedDistrictID)
        {
            string _TransactionDetails;
            string _CampaignDetails;
            DonateMode = 2;//Campaign
            _TransactionDetails = GrameenaVidya.BLL.Donate.Insert_NewTransactionDetails(txtDonarName.Text, txtEmail.Text, txtMobilenum.Text, Convert.ToInt32(hdSelectSponserType.Value), 1,
                    Convert.ToInt32(ddlcountry.SelectedValue),
                    Convert.ToInt32(hdDonarStateID.Value),
                    txtlocation.Text,
                    txtAddress1.Text,
                    txtpincode.Text,
                    AdoptTypeID, School_ContributionID, units, Years, Amount, Sponser_ContributionID, SchoolID, DonateMode, PaymentMode, ExpiryDate, PrincipalName, SchoolName, mobileNumber, SuggestedStateID, SuggestedDistrictID);
            string[] strArray = _TransactionDetails.Split(',');
            foreach (object obj in strArray)
            {
                _UserID = Convert.ToInt32(strArray[0]);
                _TransactionID = Convert.ToInt32(strArray[1]);
                Amount = strArray[2];
            }
            if (_UserID > 0)
            {
                DateTime CExpiryDate = DateTime.Now.AddMonths(1);
                _CampaignDetails = GrameenaVidya.BLL.Donate.InsertCampaignDetails(_UserID, txtCampName.Text, Convert.ToDateTime(CampDate.Text), CExpiryDate, txtMessage.Text, Convert.ToDecimal(hdGoalAmt.Value), Convert.ToDecimal(hdActualAmt.Value));
                string[] strCImg = _CampaignDetails.Split(',');
                foreach (object obj in strCImg)
                {
                    _CampID = Convert.ToInt32(strCImg[1]);

                    Amount = strArray[0];
                }
                SaveCampaignImage(_CampID, _UserID);
                SendMail(_UserID);
                Details.UserID = _UserID;
                Details.DonarName = txtEmail.Text;
                Session["UserID"] = _UserID;
                Response.Redirect("Success.aspx?TransactionID=" + _TransactionID + "&Amount=" + Amount);
            }
        }

        private void InsertSelectedSchoolDataCampaign(int AdoptTypeID, int School_ContributionID, int Units, int Years, string Amount, int Sponser_ContributionID, int SchoolID, int DonateMode, int PaymentMode, DateTime ExpiryDate, string CampaignName, string CampainDate, string CamAmount, string CampMessage, string GoalAmount)
        {

            string _TransactionDetails;
            string _CampaignDetails;
            DonateMode = 2;//Campaign
            _TransactionDetails = GrameenaVidya.BLL.Donate.Insert_NewTransactionDetails(txtDonarName.Text, txtEmail.Text, txtMobilenum.Text, Convert.ToInt32(hdSelectSponserType.Value), 1,
                    Convert.ToInt32(ddlcountry.SelectedValue),
                    Convert.ToInt32(hdDonarStateID.Value),
                    txtlocation.Text,
                    txtAddress1.Text,
                    txtpincode.Text,
                    AdoptTypeID, School_ContributionID, Units, Years, Amount, Sponser_ContributionID, SchoolID, DonateMode, PaymentMode, ExpiryDate, "", "", "", 0, 0);
            string[] strArray = _TransactionDetails.Split(',');
            foreach (object obj in strArray)
            {
                _UserID = Convert.ToInt32(strArray[0]);
                _TransactionID = Convert.ToInt32(strArray[1]);
                Amount = strArray[2];
            }

            if (_UserID > 0)
            {
                DateTime CExpiryDate = DateTime.Now.AddMonths(1);
                _CampaignDetails = GrameenaVidya.BLL.Donate.InsertCampaignDetails(_UserID, CampaignName, Convert.ToDateTime(CampDate.Text), CExpiryDate, CampMessage, Convert.ToDecimal(hdGoalAmt.Value), Convert.ToDecimal(hdActualAmt.Value));
                string[] strCImg = _CampaignDetails.Split(',');
                foreach (object obj in strCImg)
                {
                    _CampID = Convert.ToInt32(strCImg[1]);

                    Amount = strArray[0];
                }
                SaveCampaignImage(_CampID, _UserID);
                SendMail(_UserID);
                Details.UserID = _UserID;
                Details.DonarName = txtEmail.Text;
                Session["UserID"] = _UserID;
                Response.Redirect("Success.aspx?TransactionID=" + _TransactionID + "&Amount=" + Amount);
            }


        }

        #endregion

        #region Existing user Campaign Creation
        private void BindExistingSuggestSchoolDetailsCampaign(int AdoptTypeID, int School_ContributionID, int Units, int Years, string Amount, int Sponser_ContributionID, int SchoolID, int DonateMode, int PaymentMode, DateTime ExpiryDate, string PrincipalName, string SchoolName, string MobileNumber, int StateID, int DistrictID)
        {
            string _TransactionDetails;
            string _CampaignDetails;

            _TransactionDetails = GrameenaVidya.BLL.Donate.Insert_ExistingTransactionDetails(Convert.ToInt32(Details.UserID), txtDonarName.Text, txtMobilenum.Text, Convert.ToInt32(hdSelectSponserType.Value), 1,
                    Convert.ToInt32(ddlcountry.SelectedValue),
                    Convert.ToInt32(hdDonarStateID.Value),
                    txtlocation.Text,
                    txtAddress1.Text,
                    txtpincode.Text,
                    AdoptTypeID, School_ContributionID, Units, Years, Amount, Sponser_ContributionID, SchoolID, DonateMode, PaymentMode, ExpiryDate, PrincipalName, SchoolName, MobileNumber, StateID, DistrictID);
            string[] strArray = _TransactionDetails.Split(',');
            foreach (object obj in strArray)
            {
                _UserID = Convert.ToInt32(strArray[0]);
                _TransactionID = Convert.ToInt32(strArray[1]);
                Amount = strArray[2];
            }
            if (_UserID > 0)
            {
                DateTime CExpiryDate = DateTime.Now.AddMonths(1);
                _CampaignDetails = GrameenaVidya.BLL.Donate.InsertCampaignDetails(_UserID, txtCampName.Text, Convert.ToDateTime(CampDate.Text), CExpiryDate, txtMessage.Text, Convert.ToDecimal(hdGoalAmt.Value), Convert.ToDecimal(hdActualAmt.Value));
                string[] strCImg = _CampaignDetails.Split(',');
                foreach (object obj in strCImg)
                {
                    _CampID = Convert.ToInt32(strCImg[1]);

                    Amount = strArray[0];
                }
                SaveCampaignImage(_CampID, _UserID);
                SendMail(_UserID);
                Details.UserID = _UserID;
                Details.DonarName = txtEmail.Text;
                Session["UserID"] = _UserID;
                Response.Redirect("Success.aspx?TransactionID=" + _TransactionID + "&Amount=" + Amount);
            }
        }

        private void InsertExistingDonarDetailsCampaign(int AdoptTypeID, int School_ContributionID, int Units, int Years, string Amount, int Sponser_ContributionID, int SchoolID, int DonateMode, int PaymentMode, DateTime ExpiryDate)
        {
            string _TransactionDetails;
            string _CampaignDetails;
            _TransactionDetails = GrameenaVidya.BLL.Donate.Insert_ExistingTransactionDetails(Convert.ToInt32(Details.UserID), txtDonarName.Text, txtMobilenum.Text, Convert.ToInt32(hdSelectSponserType.Value), 1,
                    Convert.ToInt32(ddlcountry.SelectedValue),
                    Convert.ToInt32(hdDonarStateID.Value),
                    txtlocation.Text,
                    txtAddress1.Text,
                    txtpincode.Text,
                    AdoptTypeID, School_ContributionID, Units, Years, Amount, Sponser_ContributionID, SchoolID, DonateMode, PaymentMode, ExpiryDate, "", "", "", 0, 0);
            string[] strArray = _TransactionDetails.Split(',');
            foreach (object obj in strArray)
            {
                _UserID = Convert.ToInt32(strArray[0]);
                _TransactionID = Convert.ToInt32(strArray[1]);
                Amount = strArray[2];
            }

            if (_UserID > 0)
            {
                DateTime CExpiryDate = DateTime.Now.AddMonths(1);
                _CampaignDetails = GrameenaVidya.BLL.Donate.InsertCampaignDetails(_UserID, txtCampName.Text, Convert.ToDateTime(CampDate.Text), CExpiryDate, txtMessage.Text, Convert.ToDecimal(hdGoalAmt.Value), Convert.ToDecimal(hdActualAmt.Value));
                string[] strCImg = _CampaignDetails.Split(',');
                foreach (object obj in strCImg)
                {
                    _CampID = Convert.ToInt32(strCImg[1]);

                    Amount = strArray[0];
                }
                SaveCampaignImage(_CampID, _UserID);
                SendMail(_UserID);
                Details.UserID = _UserID;
                Details.DonarName = txtEmail.Text;
                Session["UserID"] = _UserID;
                Response.Redirect("Success.aspx?TransactionID=" + _TransactionID + "&Amount=" + Amount);
            }

        }


        #endregion

        #region SaveCampaignImg
        private void SaveCampaignImage(int _CampID, int _UserID)
        {
            string imagename = System.IO.Path.GetExtension(fuload1.FileName.ToString());
            imagename = imagename.ToLower();
            if (imagename == "")
            {
                string selectedImage = rdbtnImg.SelectedValue.ToString();
                string imgpath = "";
                if (selectedImage=="1")
                {
                    imgpath = "adopt-a-school.jpg";
                }
                else if (selectedImage == "2")
                {
                    imgpath = "campaing2.jpg";
                }
                else if (selectedImage == "3")
                {
                    imgpath = "campaing3.jpg";
                }
                
                string ProfileImageID = GrameenaVidya.BLL.Donate.UpdateCampaignImage(_CampID, imgpath);
            }
            if (imagename == ".jpeg" || imagename == ".jpg" || imagename == ".gif" || imagename == ".png" || imagename == ".bmp")
            {
                string path = Server.MapPath("~/CampaignsImages/" + _CampID + '.' + fuload1.FileName.ToString());
                fuload1.PostedFile.SaveAs(path);
                System.Drawing.Image image1 = System.Drawing.Image.FromFile(path);
                System.Drawing.Image image2 = image1.GetThumbnailImage(150, 150, new System.Drawing.Image.GetThumbnailImageAbort(ThumbnailCallback), IntPtr.Zero);
                string imgpath = _CampID + "." + fuload1.FileName.ToString();
                string ProfileImageID = GrameenaVidya.BLL.Donate.UpdateCampaignImage(_CampID, imgpath);

                //image2.Save(Server.MapPath("~/CampaignsImages/" + _CampID +'.' +  fuload1.FileName +  ".jpg"), System.Drawing.Imaging.ImageFormat.Jpeg);
            }
            else
            {
                //rfvImage.ErrorMessage = "<br /><br />Please select jpg, jpeg, gif, png, bmp files only";
                //rfvImage.IsValid = false;
                //ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "ToggleScript", "ShowProfileImage()", true);
            }
        }

        public bool ThumbnailCallback() { return false; }
        #endregion

        #region Existing UserDetails

        private void InsertExistingGVpoolDetails(int AdoptTypeID, int School_ContributionID, int Units, int Years, string Amount, int Sponser_ContributionID, int SchoolID, int DonateMode, int PaymentMode, DateTime ExpiryDate, string PrincipalName, string SchoolName, string MobileNumber, int StateID, int DistrictID)
        {
            string _TransactionDetails;

            _TransactionDetails = GrameenaVidya.BLL.Donate.Insert_ExistingTransactionDetails(Convert.ToInt32(Details.UserID), txtDonarName.Text, txtMobilenum.Text, Convert.ToInt32(hdSelectSponserType.Value), 1,
                    Convert.ToInt32(ddlcountry.SelectedValue),
                    Convert.ToInt32(hdDonarStateID.Value),
                    txtlocation.Text,
                    txtAddress1.Text,
                    txtpincode.Text,
                    AdoptTypeID, School_ContributionID, 0, 0, Amount, 0, 0, DonateMode, PaymentMode, ExpiryDate, "", "", "" ,0, 0);
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
                Details.UserID = _UserID;
                Details.DonarName = txtEmail.Text;
                Session["UserID"] = _UserID;
                Response.Redirect("Success.aspx?TransactionID=" + _TransactionID + "&Amount=" + Amount);
            }
        }

        private void BindExistingSuggestSchoolDetails(int AdoptTypeID, int School_ContributionID, int Units, int Years, string Amount, int Sponser_ContributionID, int SchoolID, int DonateMode, int PaymentMode, DateTime ExpiryDate, string PrincipalName, string SchoolName, string MobileNumber, int StateID, int DistrictID)
        {
            string _TransactionDetails;

            _TransactionDetails = GrameenaVidya.BLL.Donate.Insert_ExistingTransactionDetails(Convert.ToInt32(Details.UserID), txtDonarName.Text, txtMobilenum.Text, Convert.ToInt32(hdSelectSponserType.Value), 1,
                    Convert.ToInt32(ddlcountry.SelectedValue),
                    Convert.ToInt32(hdDonarStateID.Value),
                    txtlocation.Text,
                    txtAddress1.Text,
                    txtpincode.Text,
                    AdoptTypeID, School_ContributionID, Units, Years, Amount, Sponser_ContributionID, SchoolID, DonateMode, PaymentMode, ExpiryDate, PrincipalName, SchoolName, MobileNumber, StateID, DistrictID);
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
                Details.UserID = _UserID;
                Details.DonarName = txtEmail.Text;
                Session["UserID"] = _UserID;
                Response.Redirect("Success.aspx?TransactionID=" + _TransactionID + "&Amount=" + Amount);
            }
        }

        private void InsertExistingDonarDetails(int AdoptTypeID, int School_ContributionID, int Units, int Years, string Amount, int Sponser_ContributionID, int SchoolID, int DonateMode, int PaymentMode, DateTime ExpiryDate)
        {
            string _TransactionDetails;

            _TransactionDetails = GrameenaVidya.BLL.Donate.Insert_ExistingTransactionDetails(Convert.ToInt32(Details.UserID), txtDonarName.Text, txtMobilenum.Text, Convert.ToInt32(hdSelectSponserType.Value), 1,
                    Convert.ToInt32(ddlcountry.SelectedValue),
                    Convert.ToInt32(hdDonarStateID.Value),
                    txtlocation.Text,
                    txtAddress1.Text,
                    txtpincode.Text,
                    AdoptTypeID, School_ContributionID,Units, Years, Amount, Sponser_ContributionID, SchoolID, DonateMode, PaymentMode, ExpiryDate, "", "", "", 0, 0);
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
                Details.UserID = _UserID;
                Details.DonarName = txtEmail.Text;
                Session["UserID"] = _UserID;
                Response.Redirect("Success.aspx?TransactionID=" + _TransactionID + "&Amount=" + Amount);
            }
        }

        #endregion

    }
}