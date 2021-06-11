using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GrameenaVidya.Controls
{
    public partial class HeaderInside : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lblLogout_Click(object sender, EventArgs e)
        {
            Session.Remove("UserID");
            Session.Abandon();
            Response.Redirect("~");
        }
    }
}