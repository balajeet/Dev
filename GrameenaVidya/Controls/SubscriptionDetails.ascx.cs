using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using GrameenaVidya.UserHome;
using System.Configuration;

namespace GrameenaVidya.Controls
{
    public partial class SubscriptionDetails : System.Web.UI.UserControl
    {
        DonarDetails Donar = new DonarDetails();
     
        protected void Page_Load(object sender, EventArgs e)
        {
          
            if (!IsPostBack)
            {
              
                BindSubScriptionDetails();
            }
        }

        private void BindSubScriptionDetails()
        {


            gvSubscriptionDetails.DataSource = TLW.BLL.DonateBLL.GetSubScriptionDetails(Convert.ToInt32(Donar.UserID));
            gvSubscriptionDetails.DataBind();

                 
        }


   
    }
}