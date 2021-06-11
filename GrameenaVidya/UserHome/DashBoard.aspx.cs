using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GrameenaVidya.AppCode;
using System.Web.UI.HtmlControls;

namespace GrameenaVidya.UserHome
{
    public partial class DashBoard : System.Web.UI.Page
    {
        DonarDetails DonarDetails = new DonarDetails();

        protected void Page_Load(object sender, EventArgs e)
        {

            //if (!IsPostBack)
            //{
            //    if (HttpContext.Current.User.Identity.IsAuthenticated)
            //    {
            //        UserDetails ud = new UserDetails();
            //        if (UserID == 0)
            //        {
            //            MasterPageFile = "~/Master/OutSideMaster.master";

            //        }
                   
            //    }
            //     else
            //        {
            //            MasterPageFile = "~/Master/InsideMaster.master";
            //        }
            //}

            if (!IsPostBack)
            {
                GrameenaVidya.BLL.Users oUser = new GrameenaVidya.BLL.Users();
                oUser = GrameenaVidya.BLL.Users.UsersGetUserDetails(Convert.ToString(DonarDetails.DonarName));
                if (!(oUser.Status))
                {

                    HtmlGenericControl body = (HtmlGenericControl)Master.FindControl("myBody");
                    body.Attributes.Add("onload", "OpenFreeUserMessage()");

                }

               // lblUsername.Text = GrameenaVidya.BLL.Users.UserProfileSelectRow(Convert.ToInt32(Session["UserID"])).Name;

                //gvDonarList.DataSource = GrameenaVidya.BLL.Donate.GetDonationsList_Donar(Convert.ToInt32(Session["UserID"]));

                //gvDonarList.DataBind();
                //foreach (RepeaterItem r1 in rpSchools.Items)
                //{
                //    Label ContactPesrson = r1.FindControl("lblContactPerson") as Label;
                //    if (ContactPesrson.Text == "")
                //    {
                //        HtmlGenericControl divFinal = r1.FindControl("dvCntperson") as HtmlGenericControl;
                //        divFinal.Visible = false;
                //    }
                //    else
                //    {
                //        HtmlGenericControl divFinal = r1.FindControl("dvCntperson") as HtmlGenericControl;
                //        divFinal.Visible = true;
                //    }
                //    //Label CorrectAnswer = r1.FindControl("lblCurrectAnswer") as Label;

                //}
              

            }

        }
     
    }
}