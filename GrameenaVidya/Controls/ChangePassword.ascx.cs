using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace GrameenaVidya.Controls
{
    public partial class ChangePassword1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtNewPassword.Text.ToString().Length < 4)
            {
                CustomInfo.Text = "Your New Password should be more than 4 characters.";
                CustomInfo.CssClass = "alert-box warning radius";
                CustomInfo.IsValid = false;
                return;
            }
            if (txtRetypePassword.Text == "")
            {
                CustomInfo.Text = "Confrim your new password.";
                CustomInfo.CssClass = "alert-box warning radius";
                CustomInfo.IsValid = false;
                return;
            }
            if (GrameenaVidya.BLL.Users.UserAuthentication(Convert.ToInt64(Session["UserID"]), txtOldPassword.Text))
            {
                if (GrameenaVidya.BLL.Users.UserCredentialsInsertRow(Convert.ToInt32(Session["UserID"]), Convert.ToString(txtRetypePassword.Text), DateTime.Now, DateTime.Now, true))
                {
                    CustomInfo.Text = "Your Password has been successfully changed";
                    CustomInfo.CssClass = "alert-box success radius";
                    CustomInfo.IsValid = false;
                }
            }
            else
            {
                cvErrorMsg.Text = "Your Old Password is wrong.Please enter vaild password.";
                //cvErrorMsg.CssClass = "alert-box warning radius";
                cvErrorMsg.IsValid = false;
            }
        }
    }
}