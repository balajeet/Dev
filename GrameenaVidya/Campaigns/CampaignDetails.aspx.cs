using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace GrameenaVidya.Campaigns
{
    public partial class CampaignDetails : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
           id = Convert.ToInt32(Request.QueryString["CID"]);
            if (!IsPostBack)
            {
                bindFundraisingData(id);
            }


        }

        private void bindFundraisingData(int id)
        {
            DataTable dt = GrameenaVidya.BLL.Donate.GetFundRaisedData(id);
            imgSchool.ImageUrl = "~/CampaignsImages/" + dt.Rows[0]["Image"].ToString();
            lblEndDate.Text = Convert.ToDateTime(dt.Rows[0]["ExpiryDate"]).ToString("dd MMM yyyy");
            lblStartDate.Text = Convert.ToDateTime(dt.Rows[0]["StartDate"]).ToString("dd MMM yyyy");
            lblFundRaised.Text = dt.Rows[0]["RaisedAmount"].ToString();
            lblGoalAmount.Text = dt.Rows[0]["GoalAmount"].ToString();
            lblRaisedPercentage.Text = dt.Rows[0]["RaisedPercentage"].ToString();
        }

        protected void btnCampDonation_Click(object sender, EventArgs e)
        {

            Response.Redirect("Donate.aspx?CampaignID=" + id + "Amount=" + txtAmount.Text);

        }
    }
}