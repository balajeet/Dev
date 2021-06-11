using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GrameenaVidya.Controls
{
    public partial class SuggestSchool : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindStates();
            }
        }

        private void BindStates()
        {
            ddlSuggestedStates.DataSource = TLW.BLL.DonateBLL.StatesSelectAll();
            ddlSuggestedStates.DataBind();
            ddlSuggestedStates.Items.Insert(0, new ListItem("Select State", "-1"));
        }
    }
}