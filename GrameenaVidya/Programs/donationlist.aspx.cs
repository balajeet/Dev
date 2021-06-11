using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GrameenaVidya.Programs
{
    public partial class donationlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindDonationsList();
            }
        }

        private void bindDonationsList() 
        {
            //repDonations.DataSource = GrameenaVidya.BLL.Donate.GetDonationsList();
            repDonations.DataBind();
        }
    }   
}