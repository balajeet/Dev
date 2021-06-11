using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using GrameenaVidya.AppCode;
using System.Web.Security;
using System.Collections;

namespace GVSchools.Campaigns
{
    public partial class CreateCampaigns : System.Web.UI.Page
    {
        DonarDetails Donar = new DonarDetails();
   
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCountries();      
            
            }
            if (this.Page.User.Identity.IsAuthenticated)
            {
                DataTable dt = GrameenaVidya.BLL.Users.GetUserLoginDetails(Convert.ToString(Session["UserName"])).Tables[0];
                if (dt.Rows.Count > 0)
                {
                    txtDonarName.Text = dt.Rows[0]["Name"].ToString();
                    txtEmail.Text = dt.Rows[0]["Email"].ToString();
                    txtEmail.Attributes.Add("readonly", "false");
                    txtMobilenum.Text = dt.Rows[0]["ContactNumber"].ToString();
                    txtAddress1.Text = dt.Rows[0]["Address"].ToString();
                    txtlocation.Text = "";
                    ddlcountry.SelectedIndex = Convert.ToInt32(dt.Rows[0]["CountryID"]);
                    BindStates(Convert.ToInt32(dt.Rows[0]["CountryID"]));
                    ddlState.SelectedIndex = Convert.ToInt32(dt.Rows[0]["StateID"]);
                    txtAddress2.Text = dt.Rows[0]["Address"].ToString();
                    divDonateDetails.Visible = false;
                    divcamDonarDetails.Visible = true;
                    hdDonarUserType.Value = "2";
                }
            }
        }

        private void BindStates(int CountryID)
        {
            ddlState.DataSource = GVSchools.BLL.Schools.Select_States(Convert.ToInt32(CountryID));
            ddlState.DataBind();
        }

        private void BindCountries()
        {
            DataSet ds = GVSchools.BLL.Schools.SelectCountries();
            ddlcountry.DataSource = ds.Tables[0];
            ddlcountry.DataBind();
            ddlcountry.Items.Insert(0, new ListItem("Select Country", "0"));

        }

        [System.Web.Services.WebMethod]
        public static GetUserDetails[] CheckLogin(string username, string Password)
        {
            List<GetUserDetails> details = new List<GetUserDetails>();
            GrameenaVidya.BLL.Users oUser = new GrameenaVidya.BLL.Users();
            oUser = GrameenaVidya.BLL.Users.UsersGetUserDetails(username);
            if (oUser != null)
            {
                if (oUser.UserPassword == Password)
                {
                    //TLW.BLL.UserLogIn.UserLogIn_CloseSessionDetails(oUser.UserID);
                    string SessionID = GrameenaVidya.BLL.Users.UserLogIn_InsertSessionDetails(oUser.UserID);
                  if (SessionID != null)
                    {
                        DataTable dt = GrameenaVidya.BLL.Users.GetUserLoginDetails(username).Tables[0];
                      foreach (DataRow dtrow in dt.Rows)
                        {
                            GetUserDetails gv = new GetUserDetails();
                            gv.Name = dtrow["Name"].ToString();
                            gv.Email = dtrow["Email"].ToString();
                            gv.MobileNum = dtrow["ContactNumber"].ToString();
                            gv.Address = dtrow["Address"].ToString();
                            gv.ContactPerson = dtrow["ContactPerson"].ToString();
                            gv.Country = dtrow["CountryName"].ToString();
                            gv.CountryID = dtrow["CountryID"].ToString();
                            gv.State = dtrow["StateName"].ToString();
                            gv.StateID = dtrow["StateID"].ToString();
                            gv.Location = dtrow["Location"].ToString();
                            gv.ZipCode = dtrow["Pincode"].ToString();

                            details.Add(gv);
                        }

                    }
                    //

                }
            }
            else
            {

            }

            return details.ToArray();
        }

        [System.Web.Services.WebMethod]
        public static ArrayList PopulateStates(int CountryID)
        {

            ArrayList list = new ArrayList();
            DataSet ds = GVSchools.BLL.Schools.Select_States(Convert.ToInt32(CountryID));
            DataTable dt = ds.Tables[0];
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {

                list.Add(new ListItem(ds.Tables[0].Rows[i]["StateName"].ToString(), ds.Tables[0].Rows[i]["StateID"].ToString()));

            }
            return list;


        }


        private void PopulateDropDownList(ArrayList list, DropDownList ddl)
        {
            ddl.DataSource = list;
            ddl.DataTextField = "Text";
            ddl.DataValueField = "Value";
            ddl.DataBind();
        }
      

        public class GetUserDetails
        {
            public string Name { get; set; }
            public string Email { get; set; }
            public string MobileNum { get; set; }
            public string Address { get; set; }
            public string ContactPerson { get; set; }
            public string Country { get; set; }
            public string State { get; set; }
            public string Location { get; set; }
            public string ZipCode { get; set; }
            public string CountryID { get; set; }
            public string StateID { get; set; }


        }

        protected void btncreate_Click(object sender, EventArgs e)
        {
             if (hdDonarUserType.Value == "2")
             {
                 FormsAuthentication.RedirectFromLoginPage(txtUserName.Text + "|" + hdsession.Value, true);
                 Session["UserName"] = txtUserName.Text;

             }
             string Query = txtCampaignName.Text + "~" + txtStartDate.Text
                             + "~" + txtMessage.Text;
             Session.Add("QueryValues", Query);
             Response.Redirect("~/Donate/Default1.aspx?CampaignID=CID");
        }

        //protected void lnkCreate_Click(object sender, EventArgs e)
        //{
        //    if (hdDonarUserType.Value == "2")
        //    {
        //        FormsAuthentication.RedirectFromLoginPage(txtUserName.Text + "|" + hdsession.Value, true);
        //        Session["UserName"] = txtUserName.Text;
                
        //    }
        //    string Query = txtCampaignName.Text + "~" + txtStartDate.Text
        //                    + "~" + txtMessage.Text;
        //   Response.Redirect("~/Donate/Default1.aspx?CampaignID=1");


        //}
    }
}