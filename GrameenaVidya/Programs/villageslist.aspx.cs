using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace GrameenaVidya.programs
{
    public partial class villageslist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindStates();
            }
        }

        public void BindStates()
        {
            DataView dv = TLW.BLL.DonateBLL.SelectStates(41).Tables[0].DefaultView;
            dv.RowFilter = "StateID=212";
            ddlState.DataSource = dv.ToTable();
            ddlState.DataBind();
            //ddlState.DataTextField="StateName";
            //ddlState.DataValueField="StateID";
            ddlState.Items.Insert(0, new ListItem("Select State", "0"));
        }

        public void BindDistricts(int stateid)
        {
            ddlDistrict.DataSource = TLW.BLL.DonateBLL.SelectDistricts(stateid);
            ddlDistrict.DataBind();
            //ddlDistrict.DataTextField = "DistrictName";
            //ddlDistrict.DataValueField = "DistrictID";
            ddlDistrict.Items.Insert(0, new ListItem("Select District", "0"));
        }

        protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlState.SelectedIndex != 0)
            {
                BindDistricts(Convert.ToInt32(ddlState.SelectedValue.ToString()));
            }
            else
            {
                ddlDistrict.Items.Clear();
                ddlDistrict.Items.Insert(0, new ListItem("Select District", "0"));
            }
        }

        protected void ddlDistrict_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Convert.ToInt32(ddlDistrict.SelectedValue) > 0)
            {
                BindVillages();
                gvVillagesList.DataSource = (DataTable)ViewState["VillagessData"];
                gvVillagesList.DataBind();
            }
        }

        public void BindVillages()
        {
            ViewState["VillagessData"] = TLW.BLL.DonateBLL.FetchVillagesData(Convert.ToInt32(ddlState.SelectedValue.ToString()), Convert.ToInt32(ddlDistrict.SelectedValue.ToString()));
        }

        protected void gvVillagesList_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvVillagesList.PageIndex = e.NewPageIndex;
            gvVillagesList.DataSource = (DataTable)ViewState["VillagessData"];
            gvVillagesList.DataBind();
        }

     
    }
}