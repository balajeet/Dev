using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Collections;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Services;
using GrameenaVidya.AppCode;
using System.Text;
using GrameenaVidya.Common;

namespace GrameenaVidya.Campaigns
{
    public partial class CampaignDonate : System.Web.UI.Page
    {
        private static int PageSize = 10;
        DonarDetails Details = new DonarDetails();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                 Bindstates();
                 BindColumnToGridview();          
            
            }

        }


        private void BindColumnToGridview()
        {
            DataTable dummy = new DataTable();
            dummy.Columns.Add("SchoolName");
            dummy.Columns.Add("Address");
            dummy.Columns.Add("Strength");
            dummy.Columns.Add("Status");
            dummy.Columns.Add("Units");
            dummy.Columns.Add("Details");
            dummy.Rows.Add();
            //gvSchoolsList.DataSource = dummy;
            //gvSchoolsList.DataBind();

        }

        #region BindEvents

        private void Bindstates()
        {
            DataSet ds = GVSchools.BLL.Schools.SelectStates();
            ddlState.DataSource = ds.Tables[0];
            ddlState.DataBind();
            ddlState.Items.Insert(0, new ListItem("Select State", "0"));
        }

        #endregion






        #region WebServices

          [WebMethod]
        public static ArrayList PopulateDistricts(int StateID)
        {
                                                                                                                                                                                                                                                                                                                                        
            ArrayList list = new ArrayList();
            DataSet ds = GVSchools.BLL.Schools.SelectDistricts(Convert.ToInt32(StateID));
            DataTable dt = ds.Tables[0];
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {

                list.Add(new ListItem(ds.Tables[0].Rows[i]["DistrictName"].ToString(), ds.Tables[0].Rows[i]["DistrictID"].ToString()));

            }
            return list;


        }

        [System.Web.Services.WebMethod]
        public static string GetSchools(int pageIndex, int StateID, int DistrictID)
        {
            string query = "[Schools_SelectSchools]";
            SqlCommand cmd = new SqlCommand(query);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@StateID", StateID);
            cmd.Parameters.AddWithValue("@DistrictID", DistrictID);
            cmd.Parameters.AddWithValue("@pageIndex", pageIndex);
            cmd.Parameters.AddWithValue("@PageSize", PageSize);
            cmd.Parameters.Add("@RecordCount", SqlDbType.Int, 4).Direction = ParameterDirection.Output;
            return GetData(cmd, pageIndex).GetXml();
        }

        private static DataSet GetData(SqlCommand cmd, int pageindex)
        {
            string strConnString = ConfigurationManager.ConnectionStrings["GVConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(strConnString))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataSet ds = new DataSet())
                    {
                        sda.Fill(ds, "Customers");
                        DataTable dt = new DataTable("Pager");
                        dt.Columns.Add("PageIndex");
                        dt.Columns.Add("PageSize");
                        dt.Columns.Add("RecordCount");
                        dt.Rows.Add();
                        dt.Rows[0]["PageIndex"] = pageindex;
                        dt.Rows[0]["PageSize"] = PageSize;
                        dt.Rows[0]["RecordCount"] = cmd.Parameters["@RecordCount"].Value;
                        ds.Tables.Add(dt);
                        return ds;
                    }
                }
            }
        }

        private void PopulateDropDownList(ArrayList list, DropDownList ddl)
        {
            ddl.DataSource = list;
            ddl.DataTextField = "Text";
            ddl.DataValueField = "Value";
            ddl.DataBind();
        }



        [System.Web.Services.WebMethod]
        public static ArrayList BinDropDownList(int Units)
        {
            ArrayList list = new ArrayList();
            for (int i = 1; i <= Units; i++)
            {
                int UnitsID = Units;
                list.Add(new ListItem(i + " Unit".ToString(), i.ToString()));

            }
            return list;
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
                    DonarDetails Details = new DonarDetails();
                    Details.UserID = oUser.UserID;
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

                }
            }
            else
            {

            }

            return details.ToArray();
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

        [System.Web.Services.WebMethod]
        public static string SendMailForgetPwd(string Email)
        {
            string returnValue = string.Empty;
            if (GrameenaVidya.DAL.Common.CheckFieldExist("UserProfile", "EmailAddress", Email, "UserID", "0"))
            {
                GrameenaVidya.BLL.Users oUser = new GrameenaVidya.BLL.Users();

                oUser = GrameenaVidya.BLL.Users.UsersGetUserDetails(Email.Trim());

                string UserEmail = oUser.EmailAddress;
                string UserID = oUser.Name;
                string Password = oUser.UserPassword;
                StringBuilder oSBMessage = new StringBuilder();
                Mailing oMailing;
                try
                {
                    oMailing = new Mailing();
                    oMailing.From = "shilpab@grameenavidya.org";
                    oMailing.DisplayFromName = "Password Recovery Service";
                    oMailing.To = UserEmail;
                    oMailing.DisplayToName = UserEmail;//oUser.FirstName + " " + oUser.LastName;
                    oMailing.IsBodyHtml = true;
                    oMailing.Subject = "Grameenavidya Website password recovery details";

                    oSBMessage.Append("Dear ").Append(oUser.Name).Append(" ").Append("<br/><br/>")
                    .Append("We have received a request from the User Name <b>" + UserID + "</b>")
                    .Append(" for a recovery of password,<br/> Following are your Password Details:")
                    .Append("<br/>")
                    .Append("Your Login ID : " + UserID)
                    .Append("<br/>")
                    .Append("Your password : <b><i>" + Password)
                    .Append("</b></i>")
                    .Append("<br/>")
                    .Append("<br/><br/>-----------<br/>")
                    .Append("Thank you,<br/>Grameenavidya Team<br/>www.Grameenavidya.org.com");
                    oMailing.Message = oSBMessage.ToString();
                    oMailing.SendMail();
                    returnValue = "Available";

                }
                catch (Exception ex)
                {

                }


            }
            else
            {
                returnValue = "NotAvailable";

            }
            return returnValue;
        }

     


        #endregion

        protected void btnFinish_Click(object sender, EventArgs e)
        {
           // string name = txtCampName.Text;
        }
    }
}