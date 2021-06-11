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

namespace GrameenaVidya.Donate
{
    public partial class Default : System.Web.UI.Page
    {
        long _UserID;
        int _TransactionID;
        string Amount;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCountries();
                BindSuggestState();
            
            }
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
                            gv.State = dtrow["StateName"].ToString();
                            gv.Location = dtrow["CityID"].ToString();
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
            int UserID=Convert.ToInt32(hdDonarUserType.Value);
            if (UserID == 1)
            {

                if (Convert.ToInt32(hdSelectSchoolType.Value) == 1)
                {
                    BindSelectSchoolDetails();
                }
                if (Convert.ToInt32(hdSelectSchoolType.Value) == 2)
                {
                    BindSuggestSchoolDetails();
                }
                if (Convert.ToInt32(hdSelectSchoolType.Value) == 3)
                {
                    BindBlindDetails();
                }
            }
                   
                

        }

      

        private void BindSuggestSchoolDetails()
        {
            DateTime ExpiryDate = DateTime.Now.AddYears(1);
            int DonateMode = 1;//Donate Mode From Donate
            int paymentMode = 1;//offline
            int AdoptType = 1;//Adopt a school
            int SponserType = Convert.ToInt32(hdSelectSponserType.Value);//Sponser type id
            int RegUserID = Convert.ToInt32(hdSelectSchoolType.Value);
            int SchoolID = 44;
            string _TransactionDetails;
            int SchoolType = Convert.ToInt32(hdSelectSchoolType.Value);
            _TransactionDetails = GrameenaVidya.BLL.Donate.InsertDonarDetails(txtDonarName.Text, txtEmail.Text, txtMobilenum.Text, Convert.ToInt32(hdSelectSponserType.Value), 1,
                    Convert.ToInt32(ddlcountry.SelectedValue),
                    Convert.ToInt32(hdDonarStateID.Value),
                    txtlocation.Text,
                    txtAddress1.Text,
                    txtpincode.Text,
                    DonateMode,
                    Convert.ToInt32(hdSelectSchoolType.Value),
                    AdoptType,
                    paymentMode,
                    Convert.ToInt32("100000"),
                    ExpiryDate,
                    Convert.ToInt32(3), 1, 0,
                   0, 0, txtPrincipalName.Text, txtSchoolName.Text, txtSchoolMobileNumber.Text, Convert.ToString("Visakhapatnam"), Convert.ToString(ddlSuggestedStates.SelectedItem.Text));
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

        private void BindBlindDetails()
        {
            DateTime ExpiryDate = DateTime.Now.AddYears(1);
            int DonateMode = 1;//Donate Mode From Donate
            int paymentMode = 1;//offline
            int AdoptType = 1;//Adopt a school
            int SponserType = Convert.ToInt32(hdSelectSponserType.Value);//Sponser type id
            int RegUserID = Convert.ToInt32(hdSelectSchoolType.Value);
            int SchoolID = 44;
            string _TransactionDetails;
            int SchoolType = Convert.ToInt32(hdSelectSchoolType.Value);
            _TransactionDetails = GrameenaVidya.BLL.Donate.InsertDonarDetails(txtDonarName.Text, txtEmail.Text, txtMobilenum.Text, Convert.ToInt32(hdSelectSponserType.Value), 1,
                    Convert.ToInt32(ddlcountry.SelectedValue),
                    Convert.ToInt32(hdDonarStateID.Value),
                    txtlocation.Text,
                    txtAddress1.Text,
                    txtpincode.Text,
                    DonateMode,
                    Convert.ToInt32(hdSelectSchoolType.Value),
                    AdoptType,
                    paymentMode,
                    Convert.ToInt32("100000"),
                    ExpiryDate,
                   0, 0, 0,
                    0, 0, "", "","", "", "");
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

        private void BindSelectSchoolDetails()
        {
            DateTime ExpiryDate = DateTime.Now.AddYears(1);
            int DonateMode = 1;//Donate Mode From Donate
            int paymentMode = 1;//offline
            int AdoptType = 1;//Adopt a school
            int SponserType = Convert.ToInt32(hdSelectSponserType.Value);//Sponser type id
            int RegUserID = Convert.ToInt32(hdSelectSchoolType.Value);
            int SchoolID = 44;
            string _TransactionDetails;
            int SchoolType = Convert.ToInt32(hdSelectSchoolType.Value);
            _TransactionDetails = GrameenaVidya.BLL.Donate.InsertDonarDetails(txtDonarName.Text, txtEmail.Text, txtMobilenum.Text, Convert.ToInt32(hdSelectSponserType.Value), 1,
                    Convert.ToInt32(ddlcountry.SelectedValue),
                    Convert.ToInt32(hdDonarStateID.Value),
                    txtlocation.Text,
                    txtAddress1.Text,
                    txtpincode.Text,
                    DonateMode,
                    Convert.ToInt32(hdSelectSchoolType.Value),
                    AdoptType,
                    paymentMode,
                    Convert.ToInt32("100000"),
                    ExpiryDate,
                    Convert.ToInt32(3), 1, SchoolID,
                    Convert.ToInt32(hdstateID.Value), Convert.ToInt32(hddistrictID.Value),"","","","","");
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


    }
}