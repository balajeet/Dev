using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GrameenaVidya.Programs
{
    public partial class media : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbtnSubmit_Click(object sender, EventArgs e)
        {
            if (GVSchools.BLL.Schools.InsertFeedback(txtFeedback.Text, txtDescription.Text, txtEmailID.Text))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Thank you for your valuable feedback.')", true);
                txtFeedback.Text = "";
                txtDescription.Text = "";
                txtEmailID.Text = "";
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Error in feedback submition. Please try again.')", true);
                txtFeedback.Text = "";
                txtDescription.Text = "";
                txtEmailID.Text = "";
            }

        }
    }
}