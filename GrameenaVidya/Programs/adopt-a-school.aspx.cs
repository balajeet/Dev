using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GrameenaVidya.AppCode;

public partial class Programs_adopt_a_school : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected override void OnPreInit(EventArgs e)
    {
        base.OnPreInit(e);


        if (HttpContext.Current.User.Identity.IsAuthenticated)
        {
            UserDetails ud = new UserDetails();
            int UserID = Convert.ToInt32(ud.UserID);
            if (UserID == 0)
            {
                MasterPageFile = "~/Master/OutSideMaster.master";

            }
            else
            {
                MasterPageFile = "~/Master/InsideMaster.master";
            }
        }


    }

}