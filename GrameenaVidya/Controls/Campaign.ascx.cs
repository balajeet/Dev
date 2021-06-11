using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace GrameenaVidya.Controls
{
    public partial class Campaign : System.Web.UI.UserControl
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = GVSchools.BLL.Schools.GetCampaginDonationDetails();


                if (Request.QueryString["Camp"] == "Camp")
                {
                    repCamp.DataSource = dt;
                    repCamp.DataBind();
                }
                else
                {
                    if (dt.Rows.Count > 4)
                    {
                        hypViewMore.Visible = true;
                        DataTable dtn = dt.Clone();
                        // DataTable dt1 = new DataTable();
                        for (int i = 1; i < 5; i++)
                        {
                            dtn.ImportRow(dt.Rows[i]);

                        }
                        repCamp.DataSource = dtn;
                        repCamp.DataBind();

                    }
                    else
                    {
                        repCamp.DataSource = dt;
                        repCamp.DataBind();
                    }
                }
            }
        }
    }
}