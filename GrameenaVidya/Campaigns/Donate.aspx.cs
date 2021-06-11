using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using GrameenaVidya.AppCode;
using System.Collections;
using System.Configuration;
using System.IO;
using System.Text;
using GrameenaVidya.Common;

namespace GrameenaVidya.Campaigns
{
    public partial class Donate : System.Web.UI.Page
    {
        DonarDetails Details = new DonarDetails();
        string Amount;
        int CID;
        int _UserID;
        int _TransactionID;
        protected void Page_Load(object sender, EventArgs e)
        {
            Amount = Convert.ToString(Request.QueryString["Amount"]);
            CID = Convert.ToInt32(Request.QueryString["CampaignID"]);
            if (!IsPostBack)
            {
               BindCountries();
            }
        }

        private void BindCountries()
        {
            DataSet ds = GVSchools.BLL.Schools.SelectCountries();
            ddlcountry.DataSource = ds.Tables[0];
            ddlcountry.DataBind();
            ddlcountry.Items.Insert(0, new ListItem("Select Country", "0"));

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
                if (Convert.ToInt32(hdUserType.Value) == 1)
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

        protected void lnkdonate_Click(object sender, EventArgs e)
        {
            int AdoptTypeID = 1;//Adopt a School
         
            string _TransactionDetails;
            int DonateUserType = Convert.ToInt32(hdUserType.Value);
            int PaymentMode = 1;
            DateTime ExpiryDate = DateTime.Now.AddYears(1);
            if (DonateUserType == 1)
            {
                _TransactionDetails = GrameenaVidya.BLL.Donate.Insert_ExistingCampaign_NewUser(txtDonarName.Text, txtEmail.Text, txtMobilenum.Text, Convert.ToInt32(hdSelectSponserType.Value), 1,
                   Convert.ToInt32(ddlcountry.SelectedValue),
                   Convert.ToInt32(hdDonarStateID.Value),
                   txtlocation.Text,
                   txtAddress1.Text,
                   txtpincode.Text,
                   AdoptTypeID, 0, 0, 0, Amount, 0, 0, 3, PaymentMode, ExpiryDate, CID);
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
            else
            {
                if (DonateUserType == 2)
                {

                    _TransactionDetails = GrameenaVidya.BLL.Donate.Insert_ExistingCampaign_ExistingUser(Convert.ToInt32(Details.UserID), txtDonarName.Text,txtMobilenum.Text, Convert.ToInt32(hdSelectSponserType.Value), 1,
                     Convert.ToInt32(ddlcountry.SelectedValue),
                     Convert.ToInt32(hdDonarStateID.Value),
                     txtlocation.Text,
                     txtAddress1.Text,
                     txtpincode.Text,
                     AdoptTypeID, 0, 0, 0, Amount, 0, 0, 3, PaymentMode, ExpiryDate, CID);
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
            
            
            
            }


        }
    }
}