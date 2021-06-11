using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class Controls_ViewSchools : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void BindStates()
    {
        DataSet ds = GVSchools.BLL.Schools.SelectStates();
        
    }
}