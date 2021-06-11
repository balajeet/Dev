using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GrameenaVidya.Controls
{
    public partial class StudentsList : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbDonate_Click(object sender, EventArgs e)
        {
            //int PackageTypeID = Convert.ToInt32(hfPackageTypeID.Value);

            int PackageTypeID = 0;
            string PackageTypeName = "";
            string Package = "";

            //if (rdbPackage1.Checked) PackageTypeID = 1;
            //if (rdbPackage2.Checked) PackageTypeID = 2;
            //if (rdbPackage3.Checked) PackageTypeID = 3;
            //if (rdbPackage4.Checked) PackageTypeID = 4;
            //if (rdbPackage5.Checked) PackageTypeID = 5;

            string PackageID = "";
            double PackageAmount = 0;
            string UserIDLast = "1";
            try
            {
                UserIDLast = hfUserIDFinal.Value;

            }
            catch (Exception ex)
            {

               
            }

            if (UserIDLast != "")
            {
                try
                {
                    PackageAmount = Convert.ToDouble(hfTotalAmount.Value);
                    string DonationMode = "";
                   

                 //   lblDError.Text = "RetVal==" + PackageTypeID + "," + PackageID + "," + PackageAmount + "," + UserIDLast + "," + DonationMode;

                    int RetVal = GrameenaVidya.BLL.Donate.Insert_Donation(PackageTypeID, PackageID, PackageAmount, Convert.ToInt32(UserIDLast), DonationMode);

                    string txtDonarname = "Gvdonar";
                    string txtDonarEmail = "balajee345@gmail.com";
                    string txtDonarMobile = "9848683588";
                    string txtDonarAddress = "vsp";
                    string ddlcountry = "india";
                    string ddlState1 = "Ap";
                    string txtDonarPin = "533247";
                    string txtDonarLocation = "vsp";
                    if (RetVal > 0)
                    {
                        Session["QueryValues"] = PackageTypeName + "~" + Package + "~" + PackageAmount + "~" + UserIDLast + "~" + RetVal;
                        Session["DonarDetails"] = txtDonarname + "~" + txtDonarEmail + "~" + txtDonarMobile + "~" + txtDonarAddress + "~" + ddlcountry + "~" + ddlState1 + "~" + txtDonarPin + "~" + txtDonarLocation;

                        //lblDError.Text = "Your Donation Successfully  Submitted";
                        //this.lblDError.ForeColor = Color.Green;


                        Response.Redirect("~/Donate/PurchaseOrder.aspx", false);



                    }
                }
                catch (Exception ex)
                {

                    //lblDError.Text = "Error <br/>" + ex.Message;
                    //this.lblDError.ForeColor = Color.Red;
                }

            }
            else
            {
              //  ClientScript.RegisterStartupScript(this.GetType(), "alert", "ShowPopup();", true);

            }
        }
    }
}