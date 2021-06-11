using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GrameenaVidya.Common;
using System.Configuration;

namespace GrameenaVidya.Controls
{
    public partial class EnqueryForm : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                bool RetVal = GrameenaVidya.BLL.Donate.Insert_Enquiry(txtFirstName.Text,
                                                                txtEmail.Text,
                                                                txtMobile.Text,
                                                                ddlEnquiry.Text,
                                                                txtMessage.Text);

                if (RetVal == true)
                {
                    lblStatus.Text = "Thank you for your enquiry!!<br />Your Enquiry submitted successfully. One of our contact person will contact you Soon.";
                    lblStatus.CssClass = "alert alert-success";





                    Mailing oMailing = new Mailing();
                    oMailing.From = ConfigurationManager.AppSettings["RegistrationSender"].ToString();                    
                    oMailing.DisplayFromName = "Grameena Vidya Enquiry Service";
                    oMailing.To = ConfigurationManager.AppSettings["AdminEmail"].ToString();         
                    oMailing.DisplayToName = "Grameena Vidya Admin";
                    oMailing.IsBodyHtml = true;
                    oMailing.Subject = "Grameena Vidya, Enquiry form";

                    string body = string.Empty;

                    body = "<h1 style='color:green;'>Grameena Vidya Enquiry</h1><br />" +
                            "<b>Enquiry Date:</b> " + DateTime.Now.Date.ToString("dd-MMM-yyyy") + "<br />" +
                            "<b>First Name:</b> " + txtFirstName.Text + "<br />" +
                            "<b>Email Address:</b> " + txtEmail.Text + "<br />" +
                            "<b>Mobile Number:</b> " + txtMobile.Text + "<br />" +
                            "<b>Enquiry Regarding:</b> " + ddlEnquiry.Text + "<br />" +
                            "<b>Message:</b> " + txtMessage.Text + "<br />" +
                            "<br /><br /> From<h3>Grameena Vidya Admin Service</h3>";
                    
                   
                    oMailing.Message = body;

                    oMailing.SendMail();



                }
                else
                {
                    lblStatus.Text = "Failed to Submit your enquiry. Try again after some time";
                    lblStatus.CssClass = "alert alert-warning";
                }

                lblStatus.Visible = true;
            }
            catch (Exception ex )
            {

                lblStatus.Text = "Failed to Submit your enquiry. Try again after some time <br />" + ex.Message;
                lblStatus.CssClass = "alert alert-warning";
                lblStatus.Visible = true;
            }

            

        }

        
    }
}