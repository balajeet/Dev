using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace GrameenaVidya.UserHome
{
    public partial class DonatedSchools : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int ID = Convert.ToInt32(Request.QueryString["ID"]);
            if (ID == 1)
            {
                DataTable Dt = GrameenaVidya.BLL.Donate.GetDonationsList_Donar(Convert.ToInt32(Session["UserID"])).Tables[0];
                DataView dv = Dt.DefaultView;
                string STR = "";

                //STR = (STR + "DonateMode=2 or DonateMode=1");
                dv.RowFilter = STR;
                DataTable dt1 = dv.ToTable();
                gvSchoolDonarList.DataSource = Dt;
                gvSchoolDonarList.DataBind();
                divSchoolsDonated.Visible = true;
            }
            else
                if (ID == 3)
                {

                    DataTable Dt = GrameenaVidya.BLL.Donate.GetDonationsList_Donar(Convert.ToInt32(Session["UserID"])).Tables[0];
                    DataView dv = Dt.DefaultView;
                    string STR = "";

                    //STR = STR + "DonateMode=3";
                    dv.RowFilter = STR;
                    DataTable dt1 = dv.ToTable();
                    gvgeneralpool.DataSource = dt1;
                    gvgeneralpool.DataBind();
                    gvpool.Visible = true;
                
                
                }

        }
    }
}