using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using GrameenaVidya.AppCode;

namespace GrameenaVidya
{
    public partial class Login : System.Web.UI.Page
    {
        DonarDetails Details = new DonarDetails();
        protected void Page_Load(object sender, EventArgs e)
        {

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
            Details.UserID = UserID;
            Details.DonarName = txtUserName.Text;
            Session["UserID"] = UserID;

            Response.Redirect("~/UserHome/DashBoard.aspx");

            //FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1, UserID.ToString(), DateTime.Now, DateTime.Now.AddDays(1), false,
            //      UserID + "|" + UserName + "|" + SessionID, // User-data, in this case the roles
            //       FormsAuthentication.FormsCookiePath);

            //string hash = FormsAuthentication.Encrypt(ticket);
            //HttpCookie cookie = new HttpCookie(FormsAuthentication.FormsCookieName, hash);

            //if (ticket.IsPersistent) cookie.Expires = ticket.Expiration;

            //HttpContext.Current.Response.Cookies.Add(cookie);


            //if (Request.QueryString["return_url"] != null)
            //    Response.Redirect("~/" + Request.QueryString["return_url"].ToString());
            ////Response.Redirect("~/UserHome/Dashboard/?1");
            //else
               // Response.Redirect("~/UserHome/Dashboard/?1");


           

        }
    }
}