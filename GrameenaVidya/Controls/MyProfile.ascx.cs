using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GrameenaVidya.AppCode;
using System.Web.Security;
using System.Data;
using System.Drawing;

namespace GrameenaVidya.Controls
{
    public partial class MyProfile : System.Web.UI.UserControl
    {
        DonarDetails DonarDetails = new DonarDetails();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CheckSession();
                // BindCountries();
                BindData();

            }
        }

        public void BindData()
        {
            GrameenaVidya.BLL.Users oUsers = GrameenaVidya.BLL.Users.UserProfileSelectRow(Convert.ToInt64(Session["UserID"]));
            GrameenaVidya.BLL.Users oUserregister = GrameenaVidya.BLL.Users.UserRegisterSelectRow(Convert.ToInt64(Session["UserID"]));



            txtFirstName.Text = oUserregister.Name.ToString();
            //txtContactPerson.Text = oUserregister.ContactPerson.ToString();
            txtMobileNumber.Text = oUserregister.ContactNumber.ToString();
            txtEmailAddress.Text = oUserregister.EmailAddress.ToString();
            ddlCountry.SelectedValue = oUserregister.CountryID.ToString();
            ddlStates.SelectedValue = oUserregister.StateID.ToString();


            if (GrameenaVidya.DAL.Users.CheckFieldExist("PurchaseOrders", "UserID", Session["UserID"].ToString(), "OrderID", "0") && DonarDetails.IsPurchased)
            {
                DataTable dt = GrameenaVidya.BLL.Users.GetSubscriptionDetails(Convert.ToInt32(Session["UserID"])).Tables[0];

            }

            if (oUsers.Address == "NA" || oUsers.Address == "")
            {
                txtAddress.Text = "";
            }
            else
            {
                txtAddress.Text = oUsers.Address;
            }

            if (oUsers.Location == "")
            {
                txtCity.Text = "";
            }
            else
            {
                // GrameenaVidya.BLL.Users oLocation = GrameenaVidya.BLL.Users.LocationsSelectRow(oUsers.LocationID);
                txtCity.Text = oUsers.Location;
            }

            // ddlState.SelectedValue = oUsers.StateID.ToString();
            if ((oUsers.Pincode != null) && (oUsers.Pincode != "535000"))
            {
                txtZipCode.Text = oUsers.Pincode.ToString();

            }
            else
            {
                txtZipCode.Text = "";
            }

            if (oUserregister.CountryID == 0 || oUserregister.CountryID == null)
            {
                BindCountries();
            }
            else
            {
                BindCountries();
                ddlCountry.SelectedValue = oUserregister.CountryID.ToString();
                BindStates(oUserregister.CountryID.ToString());
            }
            if (oUserregister.StateID == 0 || oUserregister.StateID == null)
            {
                BindStates(oUserregister.CountryID.ToString());
            }
            else
            {
                BindStates(oUserregister.CountryID.ToString());
                ddlStates.SelectedValue = oUserregister.StateID.ToString();
            }

        }

        private void BindStates(string CountryID)
        {
            ddlStates.DataSource = GVSchools.BLL.Schools.Select_States(Convert.ToInt32(CountryID));
             
            ddlStates.DataTextField = "StateName";
            ddlStates.DataValueField = "StateID";
            ddlStates.DataBind();
            ddlStates.Items.Insert(0, new ListItem("Select State", "0"));
        }



        private bool CheckSession()
        {
            try
            {
                if (Request.Cookies[".GrameenaVidyaAuth"] != null)
                {
                    if (HttpContext.Current.User.Identity is FormsIdentity)
                    {
                        FormsIdentity id =
                            (FormsIdentity)HttpContext.Current.User.Identity; FormsAuthenticationTicket ticket = id.Ticket;
                        // Get the stored user-data, in this case, our roles
                        string userName = ticket.Name;
                        string[] Details = userName.Split('|');
                        string UID = Details[0];
                        string SID = Details[1];
                        GrameenaVidya.BLL.Users oUser = new GrameenaVidya.BLL.Users();
                        oUser = GrameenaVidya.BLL.Users.UsersGetUserDetails(UID);
                        Session["UserID"] = oUser.UserID.ToString();

                        if (GrameenaVidya.BLL.Users.UserLogVerifySession(oUser.UserID, SID) == true)
                        {
                            HttpCookie myCookie = new HttpCookie(".GrameenaVidyaAuth");
                            return true;
                        }
                        else
                        {
                            Response.Redirect("~/Home.aspx");
                        }
                    }
                }
            }
            catch (Exception ex)
            {

            }
            return false;
        }


        private void BindCountries()
        {
            DataSet ds = GVSchools.BLL.Schools.SelectCountries();
            ddlCountry.DataSource = ds.Tables[0];
            ddlCountry.DataBind();
            ddlCountry.Items.Insert(0, new ListItem("Select Country", "0"));
        }


        protected void btnProfile_Click(object sender, EventArgs e)
        {
            bool R_Status;
            GrameenaVidya.BLL.Users oUserregister = GrameenaVidya.BLL.Users.UserRegisterSelectRow(Convert.ToInt64(Session["UserID"]));
            if (GrameenaVidya.DAL.Users.CheckFieldExisting("UserProfile", "UserID", Session["UserID"].ToString(), "UserID", Session["UserID"].ToString()))
            {
                //if (ddlStates.SelectedIndex == 0)
                //{
                //    cusvProfileInfo.Text = "Please Select State.";
                //    cusvProfileInfo.IsValid = false;
                //    return;
                //}
                if (ddlCountry.SelectedIndex == 0)
                {
                    cusvProfileInfo.Text = "Please Select Country.";
                    cusvProfileInfo.IsValid = false;
                    return;
                }
                GrameenaVidya.BLL.Users oUsers = GrameenaVidya.BLL.Users.UserProfileSelectRow(Convert.ToInt32(Session["UserID"]));
                R_Status = GrameenaVidya.BLL.Users.UserRegisterUpdateRow(Convert.ToInt64(Session["UserID"]), txtFirstName.Text, txtContactPerson.Text, txtMobileNumber.Text, txtAddress.Text, txtZipCode.Text, Convert.ToInt32(ddlStates.SelectedItem.Value), Convert.ToInt32(ddlCountry.SelectedItem.Value));
                if (R_Status)
                {

                    cusvProfileInfo.Text = "Details Updated successfully";
                    cusvProfileInfo.CssClass = "alert-box success radius";
                    cusvProfileInfo.ForeColor = Color.Green;
                    cusvProfileInfo.IsValid = false;
                }
            }

        }

        protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindStates(Convert.ToString(ddlCountry.SelectedItem.Value));
        }
    }
}