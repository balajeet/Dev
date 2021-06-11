using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using GrameenaVidya.AppCode;
using System.Data;

namespace GrameenaVidya.Controls
{
    public partial class OutSideMenu : System.Web.UI.UserControl
    {
        DonarDetails Details = new DonarDetails();
        protected void Page_Load(object sender, EventArgs e)
        {
            //DataTable Dt=GrameenaVidya.BLL.Donate.GetDonationsList();

          //  lblCount.Text = Convert.ToString(Dt.Rows.Count);
          
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





        }
    }
}