using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GrameenaVidya.AppCode;
using System.Data;
using System.Drawing;
using System.IO;
using System.Configuration;
using System.Web.Security;

namespace GrameenaVidya.Controls
{
    public partial class DonateControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Control myControl = this;
                var hiddenField = this.Parent.FindControl("hfDCPage") as HiddenField;
                hfDCPage1.Value = hiddenField.Value;
                rbdCountry.Checked = true;
                if (HttpContext.Current.User.Identity.IsAuthenticated)
                {

                    UserDetails ud = new UserDetails();
                    int UserID = Convert.ToInt32(ud.UserID);
                    hfUserIDFinal.Value = UserID.ToString();
                    if (UserID == 0)
                    {
                        LoadCountries();

                    }
                    else
                    {
                        DataSet Doners = GVSchools.DAL.Schools.GetSelectDoner(UserID);
                        DataTable dt = new DataTable();
                        dt = Doners.Tables[0];
                        string UserName = dt.Rows[0]["UserName"].ToString();
                        int CountryID = Convert.ToInt32(dt.Rows[0]["CountryID"]);
                        int StateID = Convert.ToInt32(dt.Rows[0]["StateID"]);
                        string Email = dt.Rows[0]["Email"].ToString();
                        string Address = dt.Rows[0]["Address"].ToString();
                        string CountryName = dt.Rows[0]["CountryName"].ToString();
                        string State = dt.Rows[0]["StateName"].ToString();
                        string Pincode = dt.Rows[0]["Pincode"].ToString();
                        string Mobile = dt.Rows[0]["Mobile"].ToString();
                        txtDonarname.Text = UserName;
                        txtDonarEmail.Text = Email;
                        txtDonarAddress.Text = Address;

                        DataSet StateFinal = GVSchools.DAL.Schools.GetState(State);
                        if (StateFinal.Tables[0].Rows.Count > 0)
                        {
                            ddlState1.DataSource = StateFinal;
                            ddlState1.DataValueField = "StateID";
                            ddlState1.DataTextField = "StateName";
                            ddlState1.DataBind();
                            ddlState1.Enabled = true;
                        }
                        DataSet CountyFinal = GVSchools.DAL.Schools.GetCountry(CountryName);
                        if (CountyFinal.Tables[0].Rows.Count > 0)
                        {
                            ddlcountry.DataSource = CountyFinal;
                            ddlcountry.DataValueField = "CountryId";
                            ddlcountry.DataTextField = "CountryName";
                            ddlcountry.DataBind();
                            ddlcountry.Enabled = true;
                        }
                        //txtDonarCountry.Text = CountryName;
                        //txtDonarState.Text = StateName;
                        txtDonarPin.Text = Pincode;
                        txtDonarMobile.Text = Mobile;


                    }


                }
                else
                {
                    DataSet CountyFinal = GVSchools.DAL.Schools.GetCountry();
                    if (CountyFinal.Tables[0].Rows.Count > 0)
                    {
                        ddlcountry.DataSource = CountyFinal;
                        ddlcountry.DataValueField = "CountryId";
                        ddlcountry.DataTextField = "CountryName";
                        ddlcountry.DataBind();
                        ddlcountry.Enabled = true;
                        //  ddlcountry.SelectedItem.Text = rbdCountry.Text;
                    }
                }


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
        private void SendPurchaseMail(long UserID)
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
             //   GrameenaVidya.Common.Mailing oAdminMailing = new GrameenaVidya.Common.Mailing();


                //oAdminMailing.From = oUser.EmailAddress;
                //oAdminMailing.DisplayFromName = "GrameenaVidya Registration Details";
                //oAdminMailing.To = ConfigurationManager.AppSettings["AdminEmail"].ToString();
                //oAdminMailing.DisplayToName = "GrameenaVidya Admin";
                //oAdminMailing.IsBodyHtml = true;
                //oAdminMailing.Subject = "GrameenaVidya  Registeration Details";
                //System.Text.StringBuilder oSBAdminMessage = new System.Text.StringBuilder();
                //oSBAdminMessage.Append("Dear ").Append("Admin").Append(" ").Append("<br/><br/>")
                //    .Append("Please find the details of the new student registered on GrameenaVidya website below").Append("<br/><br/>")
                //    .Append("Name : " + oUser.Name + "<br/>")
                //    .Append("Email ID : " + oUser.EmailAddress + "<br/>")
                //    .Append("Mobile No : " + oUser.ContactNumber + "<br/>")
                //      .Append("Password : " + password + "<br/>")
                //    .Append("<br/><br/>").Append("Thank you,<br/>GrameenaVidya Team");
                //oAdminMailing.Message = oSBAdminMessage.ToString();
                //oAdminMailing.SendMail();
                //if (Convert.ToInt32(hdDonarUserType.Value) == 1)
                //{
                //    GrameenaVidya.BLL.Users.UserCredentialsInsertRow(UserID, password, DateTime.Now, DateTime.Now, false);
                //}



                //SendSMS(oUser);
            }
            catch (Exception ex)
            {


            }
        }
     
        private void LoadCountries()
        {
            ddlcountry.DataSource = GVSchools.DAL.Schools.GetCountry(); //GrameenaVidya.BLL.Donate.GetCountries().Tables[0];
            ddlcountry.DataTextField = "CountryName";
            ddlcountry.DataValueField = "CountryID";
            ddlcountry.DataBind();
            //    ddlcountry.SelectedItem.Text = rbdCountry.Text;
            //   ddlcountry.Items.Insert(0, new ListItem("Select Country", "0"));
        }

        private void LoadStates(int CountryID)
        {
            ddlState1.DataSource = GrameenaVidya.BLL.Donate.GetStates(CountryID).Tables[0];
            ddlState1.DataTextField = "StateName";
            ddlState1.DataValueField = "StateID";
            ddlState1.DataBind();

            ddlState1.Items.Insert(0, new ListItem("Select State", "0"));
        }

        protected void ddlcountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            LoadStates(Convert.ToInt32(ddlcountry.SelectedValue));
        }
        
        protected void lbDonate_Click(object sender, EventArgs e)
        {
            //int PackageTypeID = Convert.ToInt32(hfPackageTypeID.Value);
          //  ScriptManager.RegisterStartupScript(this, typeof(string), "Clear", "MakePayment();", true);
            int PackageTypeID = 0;
            string PackageTypeName = "";
            string Package = "";
            string PackageID = "";
            double PackageAmount = 0;
            //string DonarName = "Grameenavidya Donar";
            //string Email = "info@grameenavidya.org";
            //string Mobile ="7702444575";
            //string Address ="NA";
            //string PIN = "53324";
            //string Location = "NA";
            string DonarName = hfDonarName.Value;
            string Email = hfEmail.Value;
            string Mobile = hfMobile.Value;
            string Address = hfAddress.Value;
            string PIN = hfPIN.Value;
            string Location = hfLocation.Value;
            string UserIDLast = "";
            try
            {
                UserIDLast = hfUserIDFinal.Value;

            }
            catch (Exception ex)
            {

                lblDError.Text = ex.Message;
            }
         
            if (UserIDLast != "")
            {
                try
                {
                    PackageAmount = Convert.ToDouble(hfPackageAmount.Value);
                    PackageID = hfPackageID.Value;
                    string PackageType = hfPackageTypeID.Value;
                    string packs2 = PackageType.TrimEnd('_');
                    string[] packsmain = packs2.Split('_');
                    string packs1=PackageID.TrimEnd('_');
                    string[] packs = packs1.Split('_');
                    string DonationMode = "";
                    if (rbnetbanking.Checked) DonationMode = "Net Banking";
                    if (rbchequee.Checked) DonationMode = "chequee";
                    int RetVal = 0;
                   
                    lblDError.Text = "RetVal==" + PackageTypeID + "," + PackageID + "," + PackageAmount + "," + UserIDLast + "," + DonationMode;
                    if (packs.Length == 1)
                    {
                        RetVal = GrameenaVidya.BLL.Donate.Insert_Donation(Convert.ToInt32(packsmain[0]), packs[0], PackageAmount, Convert.ToInt32(UserIDLast), DonationMode);
                    }
                    else {
                        for (int i = 0; i < packs.Length;i++ )
                        {
                            RetVal = GrameenaVidya.BLL.Donate.Insert_Donation(Convert.ToInt32(packsmain[i]), packs[i], PackageAmount, Convert.ToInt32(UserIDLast), DonationMode);
                        }
                    
                    }
                    if (hfFlag.Value == "1")
                    {
                         SendPurchaseMail(Convert.ToInt64(UserIDLast));
                    }
                    if (RetVal > 0)
                    {

                        Session["QueryValues"] = PackageTypeName + "~" + Package + "~" + PackageAmount + "~" + UserIDLast + "~" + RetVal;
                        if (txtDonarLocation.Text == "")
                        {
                            txtDonarLocation.Text = "NA";
                        }
                       // Session["DonarDetails"] = txtDonarname.Text + "~" + txtDonarEmail.Text + "~" + txtDonarMobile.Text + "~" + txtDonarAddress.Text + "~" + ddlcountry.SelectedItem.Text + "~" + ddlState1.SelectedItem.Text + "~" + txtDonarPin.Text + "~" + txtDonarLocation.Text;
                        Session["DonarDetails"] = DonarName + "~" + Email + "~" + Mobile + "~" + Address + "~" + ddlcountry.SelectedItem.Text + "~" + "NA" + "~" + PIN + "~" +Location;

                        lblDError.Text = "Your Donation Successfully  Submitted";
                        this.lblDError.ForeColor = Color.Green;


                        Response.Redirect("~/Donate/PurchaseOrder.aspx", false);



                    }
                }
                catch (Exception ex)
                {

                    lblDError.Text = "Error <br/>" + ex.Message;
                  //  this.lblDError.ForeColor = Color.Red;
                }

            }
            else
            {
             
                // this.lblMsg.ForeColor = Color.Green;
            }

        }


        protected void btnlogin_Click(object sender, EventArgs e)
        {
            LoginUser(txtUserName.Text, txtPassword.Text);
        }


        private void LoginUser(string UserName, string Password)
        {
            //bool _UserExist = TLW.BLL.UserRegister.CheckUserExist(txtLoginUserName.Text);
            GrameenaVidya.BLL.Users oUser = new GrameenaVidya.BLL.Users();
            oUser = GrameenaVidya.BLL.Users.UsersGetUserDetails(UserName);

            if (oUser != null)
            {
                if (oUser.UserPassword == Password)
                {
                    string SessionID = GrameenaVidya.BLL.Users.UserLogIn_InsertSessionDetails(oUser.UserID);
                    if (SessionID != null)
                    {
                        AuthenticateForm(oUser.UserID, UserName, SessionID);
                        return;
                    }

                }

            }
        }
        private void AuthenticateForm(long UserID, string UserName, string SessionID)
        {

            FormsAuthentication.RedirectFromLoginPage(txtUserName.Text + "|" + SessionID, true);
            Session["UserName"] = txtUserName.Text;
           // Details.UserID = UserID;
           // Details.DonarName = txtUserName.Text;
            Session["UserID"] = UserID;

          //   Response.Redirect("~/Donate/Donate_.aspx");
            Response.Redirect(Request.RawUrl);
          



        } 
    }
}