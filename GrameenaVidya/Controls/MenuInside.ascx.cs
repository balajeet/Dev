using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace GrameenaVidya.Controls
{
    public partial class MenuInside : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUsername.Text = GrameenaVidya.BLL.Users.UserProfileSelectRow(Convert.ToInt32(Session["UserID"])).Name;

        }

        protected void btnclose_Click(object sender, EventArgs e)
        {
            Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
            Response.Cache.SetCacheability(System.Web.HttpCacheability.NoCache);
            Response.Cache.SetNoStore();
            Session.Abandon();
            FormsAuthentication.SignOut();
            Response.Redirect("~/Home.aspx", false);
        }
    }
}