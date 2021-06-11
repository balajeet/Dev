using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Collections.Specialized;
using CCA.Util;
using System.IO;


namespace GrameenaVidya.Donate
{
    public partial class PaymentStatus : System.Web.UI.Page
    {
        string query;
        string WorkingKey = "y8kvclgoroaj0tks84";

        protected void Page_Load(object sender, EventArgs e)
        {
            string OrderID = "";
            if (!Page.IsPostBack)
            {
                try
                {
                    CCACrypto func = new CCACrypto();
                    string encResponse = func.Decrypt(Request.Form["return_url"], WorkingKey);
                    string A = Request.Form["return_url"];
                    string B = Request.Form[0];
                    string C = Request.Form.ToString();

                    NameValueCollection Params = new NameValueCollection();
                    string[] segments = C.Split('&');
                    foreach (string seg in segments)
                    {
                        string[] parts = seg.Split('=');
                        if (parts.Length > 0)
                        {
                            string Key = parts[0].Trim();
                            string Value = parts[1].Trim();

                            Params.Add(Key, Value);
                        }
                    }

                    string strVerify = func.verifychecksum(Params["Merchant_Id"].ToString(), Params["Order_Id"].ToString(), Params["Amount"].ToString(), Params["AuthDesc"].ToString(), WorkingKey, Params["Checksum"].ToString());

                    OrderID = Params["Order_Id"].ToString();

                    if (Params["AuthDesc"].ToString() == "Y")
                    {
                        divSuccess.Visible = true;
                        divFailure.Visible = false;
                        //UPDATE ORDER STATUS
                        //S.UpdateOrderDetails(OrderID);
                        //TLW.BLL.PurchaseOrders.PurchaseOrders_SuccessOrder(Convert.ToInt32(OrderID));
                        //divSuccess.Visible = true;
                        //divError.Visible = false;
                        //lblOrderID.Text = Params["Order_Id"].ToString();
                       // SEND MAIL
                        try
                        {
                           // SendPurchaseMail(Convert.ToInt32(OrderID));
                        }
                        catch (Exception ex1) { }

                    }
                    else
                    {
                        //try
                        //{
                        //    TLW.BLL.PurchaseOrders.PurchaseOrders_FailureOrder(Convert.ToInt32(OrderID));
                        //    SendFailureMail(Convert.ToInt32(OrderID));
                        //}
                        //catch (Exception ex2) { }

                        //divSuccess.Visible = false;
                        //divError.Visible = true;

                        divSuccess.Visible = false;
                        divFailure.Visible = true;

                    }

                }
                catch (Exception ex)
                {
                    divSuccess.Visible = false;
                    //divError.Visible = true;
                    //SendFailureMail(Convert.ToInt32(OrderID));
                }

                //UPDATE COUPON DETAILS
                try
                {
                    //S.UpdateCouponStatus(OrderID);
                }
                catch (Exception ex) { }

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
        //private void SendPurchaseMail(long OrderID)
        //{
        //    try
        //    {
        //        GrameenaVidya.BLL.Users oUser = GrameenaVidya.BLL.Users.UserRegisterSelectRow(UserID);

        //        GrameenaVidya.Common.Mailing oMailing = new GrameenaVidya.Common.Mailing();



        //        //Mail to User

        //        // Mailing 
        //        oMailing.From = ConfigurationManager.AppSettings["RegistrationSender"].ToString();
        //        oMailing.DisplayFromName = "GrameenaVidya Registration Service";
        //        oMailing.To = oUser.EmailAddress;
        //        oMailing.DisplayToName = oUser.Name;
        //        oMailing.IsBodyHtml = true;
        //        oMailing.Subject = "GrameenaVidya, Confirmation mail";

        //        string body = string.Empty;
        //        string encryptEmail = Server.UrlEncode(GrameenaVidya.Common.Cryptography.EncryptURL("ACTIVATE|" + oUser.Name));
        //        string HostAddress = Request.Url.Scheme + "://" + Request.Url.Host + Request.ApplicationPath;
        //        string password = GeneratePassword();
        //        using (StreamReader reader = new StreamReader(Server.MapPath("~/Templates/PurchaseOrder.html")))
        //        {
        //            body = reader.ReadToEnd();
        //        }
        //        body = body.Replace("{Name}", oUser.Name);
        //        body = body.Replace("{EmailAddress}", oUser.EmailAddress);
        //        body = body.Replace("{Password}", password);

        //        body = body.Replace("{SiteUrl}", HostAddress + encryptEmail);

        //        oMailing.Message = body;

        //        oMailing.SendMail();

        //        //Mailing object to send mails to CET Eggog Admin
        //        //   GrameenaVidya.Common.Mailing oAdminMailing = new GrameenaVidya.Common.Mailing();


        //        //oAdminMailing.From = oUser.EmailAddress;
        //        //oAdminMailing.DisplayFromName = "GrameenaVidya Registration Details";
        //        //oAdminMailing.To = ConfigurationManager.AppSettings["AdminEmail"].ToString();
        //        //oAdminMailing.DisplayToName = "GrameenaVidya Admin";
        //        //oAdminMailing.IsBodyHtml = true;
        //        //oAdminMailing.Subject = "GrameenaVidya  Registeration Details";
        //        //System.Text.StringBuilder oSBAdminMessage = new System.Text.StringBuilder();
        //        //oSBAdminMessage.Append("Dear ").Append("Admin").Append(" ").Append("<br/><br/>")
        //        //    .Append("Please find the details of the new student registered on GrameenaVidya website below").Append("<br/><br/>")
        //        //    .Append("Name : " + oUser.Name + "<br/>")
        //        //    .Append("Email ID : " + oUser.EmailAddress + "<br/>")
        //        //    .Append("Mobile No : " + oUser.ContactNumber + "<br/>")
        //        //      .Append("Password : " + password + "<br/>")
        //        //    .Append("<br/><br/>").Append("Thank you,<br/>GrameenaVidya Team");
        //        //oAdminMailing.Message = oSBAdminMessage.ToString();
        //        //oAdminMailing.SendMail();
        //        //if (Convert.ToInt32(hdDonarUserType.Value) == 1)
        //        //{
        //        //    GrameenaVidya.BLL.Users.UserCredentialsInsertRow(UserID, password, DateTime.Now, DateTime.Now, false);
        //        //}



        //        //SendSMS(oUser);
        //    }
        //    catch (Exception ex)
        //    {


        //    }
        //}
     
    }
}