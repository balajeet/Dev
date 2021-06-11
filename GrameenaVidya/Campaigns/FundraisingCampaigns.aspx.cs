using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace GrameenaVidya.Campaigns
{
    public partial class FundraisingCampaigns : System.Web.UI.Page
    {
        int ID;
        protected void Page_Load(object sender, EventArgs e)
        {
            ID = Convert.ToInt32(Request.QueryString["CID"]);
            if (!IsPostBack)
            {
                bindFundraisingData(ID);
                BindCampaignDonarNames(ID);
            }
        }

        private void BindCampaignDonarNames(int ID)
        {
            rptCampaigns_Donars.DataSource = GrameenaVidya.BLL.Donate.GetCampaignDonarNames(ID);
            rptCampaigns_Donars.DataBind();
        }

        private void bindFundraisingData(int ID) 
        {
            
            DataTable dt = GrameenaVidya.BLL.Donate.GetFundRaisedData(ID);
            lblSchoolName.Text = dt.Rows[0]["SchoolName"].ToString();
            imgSchool.ImageUrl = "~/CampaignsImages/" + dt.Rows[0]["Image"].ToString();
            lblEndDate.Text = Convert.ToDateTime(dt.Rows[0]["ExpiryDate"]).ToString("dd MMM yyyy");
            lblStartDate.Text = Convert.ToDateTime(dt.Rows[0]["StartDate"]).ToString("dd MMM yyyy");
            lblFundRaised.Text = dt.Rows[0]["RaisedAmount"].ToString();
            lblGoalAmount.Text = dt.Rows[0]["GoalAmount"].ToString();
            lblCreatedby.Text = dt.Rows[0]["UserName"].ToString();
            lblPendingAmt.Text = (Convert.ToInt32(lblGoalAmount.Text) - Convert.ToInt32(lblFundRaised.Text)).ToString();
            //lblRaisedPercentage.Text = dt.Rows[0]["RaisedPercentage"].ToString();
            divProgress.InnerHtml = "<div class='progress-bar' style='width:" + dt.Rows[0]["RaisedPercentage"].ToString() + "%;' role='progressbar' aria-valuenow='60%' aria-valuemin='0' aria-valuemax='100%'>" + dt.Rows[0]["RaisedPercentage"].ToString() + "% </div>";
            //ran
        }

        protected void btnCampDonation_Click(object sender, EventArgs e)
        {
            Response.Redirect("Donate.aspx?CampaignID=" + ID + "&Amount=" + txtAmount.Text);
        }
    }
}