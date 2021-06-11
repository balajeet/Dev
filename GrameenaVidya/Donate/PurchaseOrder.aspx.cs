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
using CCA.Util;
using System.Web.Security;
using System.IO;

namespace GrameenaVidya
{

    public partial class PurchaseOrder : System.Web.UI.Page
    {
        //string ClassID, UserID, BoardID, PackageID, Date, PAmount, CouponCode, output;
        //string ClassName, BoardName, PackageName;
        //string PackageAmount, DiscountType, DiscountValue, DiscountAmount;
        //DateTime ExpiryDate;
        //string PackageType;

        //CCACrypto chkSum = new CCACrypto();
        //string WorkingKey = "y8kvclgoroaj0tks84";
        //Hashtable ht = new Hashtable();

        public string PackageTypeName="";
        public string Package = "";
        public string PackageAmount = "";
        public string TransactionID = "";
        public string UserID = "";
        public string MerchantId = "108128";
        public string OrderID = "";

        public string DonarName="";
        public string DonarEmail="";
        public string DonarMobile="";
        public string DonarAddress="";
        public string DonarCountry="";
        public string DonarState="";
        public string DonarPin="";
        public string DonarLocation="";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //if (CheckSession()==false)
                //{ 
                //    Response.Redirect("~/Purchase");
                //}

                //AcademicDetails2 AcademicDetails = new AcademicDetails2();
                //if (AcademicDetails.IsPurchased)
                //{
                //    Response.Redirect("~/Purchase/?Purchased");
                //}
            }

            string Query = Session["QueryValues"].ToString(); // CET.Eggog.WebApp.CryptHelper.Decrypt(Request.QueryString["ID"].ToString());

            string Donar = Session["DonarDetails"].ToString();
                                   
            Session.Remove("QueryValues");
            Session.Remove("DonarDetails");

            string[] QValues = Query.Split('~');

            PackageTypeName = QValues[0];
            Package = QValues[1];
            PackageAmount = QValues[2];
            TransactionID = QValues[4];

            string[] DValues = Donar.Split('~');

            DonarName = DValues[0];
            DonarEmail = DValues[1];
            DonarMobile = DValues[2];
            DonarAddress = DValues[3];
            DonarCountry = DValues[4];
            DonarState = DValues[5];
            DonarPin = DValues[6];
            DonarLocation = DValues[7];            

            //txtDonarname.Text + "~" + txtDonarEmail.Text + "~"  + txtDonarMobile.Text + "~" + txtDonarAddress.Text + "~" + txtDonarCountry.Text + "~" + txtDonarState.Text + "~" + txtDonarPin.Text + "~" + txtDonarLocation.Text;


            ////BoardID = QValues[0];
            ////BoardName = QValues[1];
            ////ClassID = QValues[2];
            ////ClassName = QValues[3];
            ////PackageID = QValues[4];
            ////PackageName = QValues[5];
            ////PackageAmount = QValues[6];
            ////DiscountType = QValues[7];
            ////DiscountValue = QValues[8];
            ////DiscountAmount = QValues[9];
            ////PAmount = QValues[10];
            ////ExpiryDate = Convert.ToDateTime(QValues[11]);
            ////PackageType = QValues[12];

            ////UserID = QValues[8];
            UserID = QValues[3];

            ////if (Session["CouponCode"] != null)
            ////{
            ////    CouponCode = Session["CouponCode"].ToString();
            ////}
            ////else
            ////{
            ////    CouponCode = "";
            ////}



            ////TLW.BLL.UserRegister.UserRegisterUpdateUserCategory(Convert.ToInt32(UserID), Convert.ToInt32(PackageType));

            ////int OrderID = TLW.BLL.PurchaseOrders.PurchaseOrdersInsertRow(DateTime.Now, 1, 1,
            ////                                        Convert.ToInt32(UserID), Convert.ToInt32(BoardID), Convert.ToInt32(ClassID),
            ////                                        Convert.ToInt32(PackageID), ExpiryDate, Convert.ToDouble(PackageAmount), Convert.ToInt16(DiscountType), Convert.ToDouble(DiscountValue),Convert.ToDouble(DiscountAmount), CouponCode, Convert.ToDouble(PAmount));

            ////lblOrderID.Text = OrderID.ToString();

            ////if (Convert.ToDouble(PAmount) == 0)
            ////{

            ////    bool RetVal = TLW.BLL.PurchaseOrders.PurchaseOrders_SuccessOrder(OrderID);

            ////    TLW.BLL.UserLogIn.UserLogIn_CloseSessionDetails(Convert.ToInt32( UserID), OrderID);
            ////    string SessionID = TLW.BLL.UserLogIn.UserLogIn_InsertSessionDetails(Convert.ToInt32(UserID), "", OrderID);


            ////    AcademicDetails2 AcademicDetails = new AcademicDetails2();

            ////    AcademicDetails.UserID = Convert.ToInt32(UserID);
            ////    AcademicDetails.SessionID = SessionID;
            ////    String UserName = TLW.BLL.UserRegister.UserRegisterSelectRow(Convert.ToInt32(UserID)).UserName;

            ////    AcademicDetails.OrderID = OrderID;
            ////    SendPurchaseMail(OrderID);               


            ////    if (RetVal == true)
            ////    {
            ////        TLW.BLL.UserStatus.UserStatusActivateEmail(Convert.ToInt32(UserID));
            ////        FormsAuthentication.RedirectFromLoginPage(UserName + "|" + SessionID, true);
            ////        Response.Redirect("~/UserHome/Default.aspx");
            ////    }
            ////}
            //////DataSet ds = S.GetUserList(Convert.ToInt32(UserID));
            ////DataSet ds = TLW.BLL.UserProfile.GetUserProfileDetails(Convert.ToInt32(UserID));

            
            

            OrderID = "GV-" + QValues[4];
            

            
        }

        //private void SendPurchaseMail(int OrderID)
        //{
        //    try
        //    {
        //        //Mail to User

        //        //CustomFunctions S = new CustomFunctions();


        //        DataTable DT = TLW.BLL.PurchaseOrders.PurchaseOrders_GetOrderDetails(OrderID).Tables[0];

        //        //SqlDataReader DR = S.GetOrderDetailsByOrderID(OrderID);

        //        string StudentName = "";
        //        string EmailAddress = "";
        //        string PackageName = "";
        //        string BoardName = "";
        //        string ClassName = "";
        //        string Amount = "";
        //        string UserName = "";


        //        if (DT.Rows.Count > 0)
        //        {
        //            UserName = DT.Rows[0]["UserName"].ToString();
        //            StudentName = DT.Rows[0]["FirstName"].ToString();
        //            EmailAddress = DT.Rows[0]["EmailAddress"].ToString();
        //            PackageName = DT.Rows[0]["PackageName"].ToString();
        //            BoardName = DT.Rows[0]["BoardName"].ToString();
        //            ClassName = DT.Rows[0]["ClassName"].ToString();
        //            Amount = DT.Rows[0]["TotalAmount"].ToString();
        //        }

        //        DT.Dispose();

        //        if (EmailAddress != "")
        //        {
        //            Mailing oMailing = new Mailing();
        //            oMailing.From = ConfigurationManager.AppSettings["RegistrationSender"].ToString();
        //            oMailing.DisplayFromName = "TeachLearnWeb.com";
        //            oMailing.To = EmailAddress;
        //            oMailing.DisplayToName = StudentName;
        //            oMailing.IsBodyHtml = true;
        //            oMailing.Subject = "TeachLearnWeb.com Your Order is placed successfully";

        //            string body = string.Empty;
        //            using (StreamReader reader = new StreamReader(Server.MapPath("~/Templates/PurchaseOrder.html")))
        //            {
        //                body = reader.ReadToEnd();
        //            }

        //            body = body.Replace("{UserName}", StudentName);
        //            body = body.Replace("{OrderNo}", OrderID.ToString());
        //            body = body.Replace("{OrderDate}", DateTime.Now.ToString("dd-MMM-yyyy"));
        //            body = body.Replace("{PackageName}", PackageName);
        //            body = body.Replace("{Board}", BoardName);
        //            body = body.Replace("{Class}", ClassName);
        //            body = body.Replace("{Amount}", "Rs. " + Convert.ToDecimal(Amount).ToString("0.00"));


        //            oMailing.Message = body;
        //            oMailing.SendMail();

        //            Mailing oAdminMailing = new Mailing();
        //            oAdminMailing.From = EmailAddress;
        //            oAdminMailing.DisplayFromName = "TeachLearnWeb Purchase Order Details";
        //            oAdminMailing.To = ConfigurationManager.AppSettings["AdminEmail"].ToString();
        //            oAdminMailing.DisplayToName = "TeachLearnWeb Admin";
        //            oAdminMailing.IsBodyHtml = true;
        //            oAdminMailing.Subject = "TeachLearnWeb Purchase Order details";
        //            System.Text.StringBuilder oSBAdminMessage = new System.Text.StringBuilder();
        //            oSBAdminMessage.Append("Dear ").Append("Admin").Append(" ").Append("<br/><br/>")
        //                .Append("Please find the details of the new student Purchase Order on TeachLearnWeb website below").Append("<br/><br/>")
        //                .Append("Name : " + StudentName + "<br/>")
        //                .Append("User ID : " + UserName + "<br/>")
        //                .Append("Email ID : " + EmailAddress + "<br/>")

        //                .Append("<br/><br/>").Append("Thank you,<br/>TeachLearnWeb Team");
        //            oAdminMailing.Message = oSBAdminMessage.ToString();
        //            oAdminMailing.SendMail();
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        //Logger.DBCreateLogger(constr, 0, "null", "New", Request.Url.ToString(), ex.Message.ToString(),
        //        //ex.Message.ToString(), DateTime.Now, "EggogWebApp");

        //    }
        //}

        //private bool CheckSession()
        //{
        //    try
        //    {
        //        if (Request.Cookies[".TLWAuth"] != null)
        //        {
        //            if (HttpContext.Current.User.Identity is FormsIdentity)
        //            {
        //                FormsIdentity id =
        //                    (FormsIdentity)HttpContext.Current.User.Identity; FormsAuthenticationTicket ticket = id.Ticket;
        //                // Get the stored user-data, in this case, our roles
        //                string userName = ticket.Name;
        //                string[] Details = userName.Split('|');
        //                string UID = Details[0];
        //                string SID = Details[1];


        //                TLW.BLL.UserRegister oUser = new TLW.BLL.UserRegister();
        //                oUser = TLW.BLL.UserRegister.UsersGetUserDetails(UID);
        //                hfUserID.Value = oUser.UserID.ToString();

        //                if (TLW.BLL.UserLogIn.UserLogVerifySession(oUser.UserID, SID) == true)
        //                {
        //                    HttpCookie myCookie = new HttpCookie(".TLWAuth");
        //                    return true;
        //                }
        //            }
        //        }
        //    }
        //    catch (Exception ex)
        //    {

        //    }
        //    return false;
        //}


    }
}