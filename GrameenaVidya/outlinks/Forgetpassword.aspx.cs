using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using GrameenaVidya.Common;

namespace GrameenaVidya.outlinks
{
    public partial class Forgetpassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbSubmit_Click(object sender, EventArgs e)
        {

            if (GrameenaVidya.DAL.Common.CheckFieldExist("UserProfile", "EmailAddress", txtUserName.Text.ToString(), "UserID", "0"))
            {
                GrameenaVidya.BLL.Users oUser = new GrameenaVidya.BLL.Users();

                oUser = GrameenaVidya.BLL.Users.UsersGetUserDetails(txtUserName.Text.ToString().Trim());
                    
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

                }
                catch (Exception ex)
                {

                }
                txtUserName.Text = "";
                //cvforgetpassword.Text = "Your Login credentials has been sent to your email. Please check your email <br/><br/><a href='#' class='activator fbtn1'>Click here to Login</a>";
                //cvforgetpassword.IsValid = false;
                //cvforgetpassword.CssClass = "alert-box success radius lineheight";
                divMain.Visible = false;
                divMessage.Visible = true;
            }
            else
            {
                cvforgetpassword.Text = "Please enter a valid Username. <br />";
                cvforgetpassword.IsValid = false;
                cvforgetpassword.CssClass = "error-message-login lineheight";
                divMain.Visible = true;
                divMessage.Visible = false;

            }
        }

    }
}