using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GrameenaVidya.Campaigns
{
    public partial class Success : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Amount = Convert.ToString(Request.QueryString["Amount"]);

            lblTransactionID.Text = "GRV - " + Convert.ToInt32(Request.QueryString["TransactionID"]);
            lblChequeFvoring.Text = lblTransactionID.Text + "-Grameena vidya";
            lblAmount.Text = Amount;
        }
    }
}