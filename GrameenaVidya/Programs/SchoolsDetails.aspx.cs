using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace GVSchools.Programs
{
    public partial class SchoolsDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int SchoolID = Convert.ToInt32(Request.QueryString["ID"]);
                hdSchoolID.Value = Convert.ToString(SchoolID) + '.' + "html";

                
                bindSchoolInformation(SchoolID);
            }
        }

        private void bindSchoolInformation(int SchoolID) 
        {
            DataView dv = GVSchools.BLL.Schools.GetSchoolInformation(SchoolID).DefaultView;

            //dv.RowFilter = "";
            //imgMain.ImageUrl = "~/Programs/ImageCSharp.aspx?FileName=" + dv.ToTable().Rows[0]["PicID"].ToString();
            string divInnerHtml = "<div class='school-name'><address><p><b>School Address: </b>" + dv.ToTable().Rows[0]["SchoolName"].ToString() + ", " + dv.ToTable().Rows[0]["LocationName"].ToString() + "</p>" +
                                    "<p><b>District: </b>" + dv.ToTable().Rows[0]["DistrictName"].ToString() + " </p><p><b>State: </b>" + dv.ToTable().Rows[0]["StateName"].ToString() + "</p></address></div>" +
                                    "<div class='school-address'><address><p><b>Mobile: </b>" + dv.ToTable().Rows[0]["ContactNumber"].ToString() + "</p></address></div>";
            divSchoolInfo.InnerHtml = divInnerHtml;


            //appeal.InnerHtml = dv.ToTable().Rows[0]["Appeal"].ToString() ;
            //background.InnerHtml = dv.ToTable().Rows[0]["BackGround"].ToString();
            //achievements.InnerHtml = dv.ToTable().Rows[0]["Achievments"].ToString();
            //demographic.InnerHtml = dv.ToTable().Rows[0]["DemoGraphicLocation"].ToString();

            //dv.RowFilter = "";


            //dv.RowFilter = "MainPic=False";
            repImagesBind.DataSource = dv.ToTable();
            repImagesBind.DataBind();
            //repGalaryImages.DataSource = dv.ToTable();
            //repGalaryImages.DataBind();            
            //dv.RowFilter = "";

           
        }

        protected void repImagesBind_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.Item)
            {
                //HiddenField hf = (HiddenField)e.Item.FindControl("hfImgId");
                //Image img = (Image)e.Item.FindControl("imgRepImages");
                //img.ImageUrl = "~/Programs/ImageCSharp.aspx?FileName=" + hf.Value.ToString();
            }
        }
    }
}