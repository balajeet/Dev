using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GrameenaVidya.UserHome;

namespace GrameenaVidya.Controls
{
    public partial class DonorLogin : System.Web.UI.UserControl
    {  
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        private void LoginUser(string UserName, string Password)
        {
            //bool _UserExist = TLW.BLL.UserRegister.CheckUserExist(txtLoginUserName.Text);

            TLW.BLL.UserProfile oUser = new TLW.BLL.UserProfile();
            oUser = TLW.BLL.UserProfile.UsersGetUserDetails(UserName);
            if (oUser != null)
            {
            
                if (oUser.UserPassword == Password)
                {
                    TLW.BLL.UserCredentials.UserLogIn_CloseSessionDetails(oUser.UserID);        
                            
                            string SessionID = TLW.BLL.UserLogin.UserLogIn_InsertSessionDetails(oUser.UserID);
                            if (SessionID != null)
                            {
                                AuthenticateForm(oUser.UserID, UserName, SessionID);
                                return;

                            }
                            else
                            {
                               lblStatus.Visible = true;
                              lblStatus.Text = "Invalid Session";
                            }

                 }
                        else
                        {
                            lblStatus.Visible = true;
                            lblStatus.Text = "Enter valid Username/Password";
                        }
                    }
                    else
                    {
                        //string SiteURL = TLW.BLL.UserLogIn.UserSource_GetSiteURL(oUser.UserSourceID);
                        //string SiteURL = TLW.BLL.UserLogIn.UserSource_GetSiteURL(UserSourceID);
                        //Response.Redirect(SiteURL + "Login.aspx?tlwudandpd=" + TLW.Security.Cryptography.Encrypt(UserName) + "&tlwpdandud=" + TLW.Security.Cryptography.Encrypt(Password), true);
                       // Response.Redirect(SiteURL + "Login.aspx?" + Server.UrlEncode(TLW.Security.Cryptography.EncryptURL(UserName + "|" + Password)));

                        lblStatus.Visible = true;
                        lblStatus.Text = "Enter valid Username/Password...";
                    }

               
        }

        private void AuthenticateForm(long UserID, string UserName, string SessionID)
        {


            DonarDetails DonarDetails = new DonarDetails();
            DonarDetails.UserID = UserID;
            DonarDetails.DonarName = UserName;
           Session["UserID"] = UserID;

           // FormsAuthentication.RedirectFromLoginPage(UserName + "|" + SessionID, true);
            Response.Redirect("~/UserHome/DashBoard.aspx");

        }

       
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            LoginUser(txtUserName.Text, txtPassword.Text);
        }
    }
}