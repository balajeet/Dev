using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GrameenaVidya.AppCode;
using System.Collections;
using System.Data;
using System.IO;
using System.Configuration;

namespace GrameenaVidya.UserHome.Donate
{
    public partial class Donate : System.Web.UI.Page
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
              
              //  BindSuggestState();
            }
        }

        #endregion

        //#region BindEvents
     

        //private void BindSuggestState()
        //{
        //    ddlSuggestedStates.DataSource = GVSchools.BLL.Schools.SelectStates();
        //    ddlSuggestedStates.DataBind();
        //    ddlSuggestedStates.Items.Insert(0, new ListItem("Select State", "0"));
        //}

  

        //#endregion

        //#region Webservicses
        //[System.Web.Services.WebMethod]
        //public static ArrayList PopulateDistricts(int StateID)
        //{

        //    ArrayList list = new ArrayList();
        //    DataSet ds = GVSchools.BLL.Schools.SelectDistricts(Convert.ToInt32(StateID));
        //    DataTable dt = ds.Tables[0];
        //    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        //    {

        //        list.Add(new ListItem(ds.Tables[0].Rows[i]["DistrictName"].ToString(), ds.Tables[0].Rows[i]["DistrictID"].ToString()));

        //    }
        //    return list;


        //}

        //[System.Web.Services.WebMethod]
        //public static ArrayList PopulateStates(int CountryID)
        //{

        //    ArrayList list = new ArrayList();
        //    DataSet ds = GVSchools.BLL.Schools.Select_States(Convert.ToInt32(CountryID));
        //    DataTable dt = ds.Tables[0];
        //    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        //    {

        //        list.Add(new ListItem(ds.Tables[0].Rows[i]["StateName"].ToString(), ds.Tables[0].Rows[i]["StateID"].ToString()));

        //    }
        //    return list;


        //}



     

        //[System.Web.Services.WebMethod]
        //public static ArrayList BinDropDownList(int Units)
        //{
        //    ArrayList list = new ArrayList();
        //    for (int i = 1; i <= Units; i++)
        //    {
        //        int UnitsID = Units;
        //        list.Add(new ListItem(i + " Unit".ToString(), i.ToString()));

        //    }
        //    return list;
        //}


    

        //private void PopulateDropDownList(ArrayList list, DropDownList ddl)
        //{
        //    ddl.DataSource = list;
        //    ddl.DataTextField = "Text";
        //    ddl.DataValueField = "Value";
        //    ddl.DataBind();
        //}

        //#endregion

        //#region Methods

        //private void GetAmount(string ContributionID)
        //{


        //    switch (ContributionID)
        //    {
        //        case "1":
        //            Amount = "100000/- ";
        //            break;
        //        case "2":
        //            Amount = "150000 /-";
        //            break;
        //        case "3":
        //            Amount = "200000/-";
        //            break;
        //        case "4":
        //            Amount = "60000/-";
        //            break;
        //        case "5":
        //            Amount = "22500/-";
        //            break;
        //        case "6":
        //            Amount = "17500/-";
        //            break;
        //        case "7":
        //            Amount = txtother.Text;
        //            break;

        //    }
        //}

        //private void SendMail(long UserID)
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
        //        GrameenaVidya.Common.Mailing oAdminMailing = new GrameenaVidya.Common.Mailing();


        //        oAdminMailing.From = oUser.EmailAddress;
        //        oAdminMailing.DisplayFromName = "GrameenaVidya Registration Details";
        //        oAdminMailing.To = ConfigurationManager.AppSettings["AdminEmail"].ToString();
        //        oAdminMailing.DisplayToName = "GrameenaVidya Admin";
        //        oAdminMailing.IsBodyHtml = true;
        //        oAdminMailing.Subject = "GrameenaVidya  Registeration Details";
        //        System.Text.StringBuilder oSBAdminMessage = new System.Text.StringBuilder();
        //        oSBAdminMessage.Append("Dear ").Append("Admin").Append(" ").Append("<br/><br/>")
        //            .Append("Please find the details of the new student registered on GrameenaVidya website below").Append("<br/><br/>")
        //            .Append("Name : " + oUser.Name + "<br/>")
        //            .Append("Email ID : " + oUser.EmailAddress + "<br/>")
        //            .Append("Mobile No : " + oUser.ContactNumber + "<br/>")
        //              .Append("Password : " + password + "<br/>")
        //            .Append("<br/><br/>").Append("Thank you,<br/>GrameenaVidya Team");
        //        oAdminMailing.Message = oSBAdminMessage.ToString();
        //        oAdminMailing.SendMail();
        //        if (Convert.ToInt32(hdDonarUserType.Value) == 1)
        //        {
        //            GrameenaVidya.BLL.Users.UserCredentialsInsertRow(UserID, password, DateTime.Now, DateTime.Now, false);
        //        }



        //        //SendSMS(oUser);
        //    }
        //    catch (Exception ex)
        //    {


        //    }
        //}

        //private string GeneratePassword()
        //{
        //    string strPwdchar = "abcdefghjkmnpqrstuvwxyz23456789ABCDEFGHJKMNPQRSTUVWXYZ";
        //    string strPwd = "";
        //    Random rnd = new Random();
        //    for (int i = 0; i <= 5; i++)
        //    {
        //        int iRandom = rnd.Next(0, strPwdchar.Length - 1);
        //        strPwd += strPwdchar.Substring(iRandom, 1);
        //    }
        //    return strPwd;
        //}

      

        //#endregion

    
    }
}