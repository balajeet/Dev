using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GrameenaVidya.AppCode;

namespace GrameenaVidya.UserHome
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        DonarDetails Donate = new DonarDetails();
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnogIn_Click(object sender, EventArgs e)
        {


            if (txtNewPwd.Text.ToString().Length < 4)
            {
                CustomInfo.Text = "Your New Password should be more than 4 characters.";
                CustomInfo.CssClass = "alert-box warning radius";
                CustomInfo.IsValid = false;
                return;
            }
            if (txtConPwd.Text == "")
            {
                CustomInfo.Text = "Confrim your new password.";
                CustomInfo.CssClass = "alert-box warning radius";
                CustomInfo.IsValid = false;
                return;
            }
            ////if (GrameenaVidya.BLL.Users.UserAuthentication(Donate.UserID, txtoldpwd.Text))
            ////{
            ////    if (GrameenaVidya.BLL.Users.UpdatePasswordDetails(Convert.ToInt32(Donate.UserID), Convert.ToString(GrameenaVidya.Common.Cryptography.Encrypt(txtNewPwd.Text))))
            ////    {
            ////        CustomInfo.Text = "Your Password has been successfully changed";
            ////        CustomInfo.CssClass = "alert-box success radius";
            ////        CustomInfo.IsValid = false;
            ////    }
            ////}
            //else
            //{
            //    cvErrorMsg.Text = "Your Old Password is wrong.Please enter vaild password.";
            //    //cvErrorMsg.CssClass = "alert-box warning radius";
            //    cvErrorMsg.IsValid = false;
            //}

        }
    }
}