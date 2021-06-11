using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace GrameenaVidya.UserHome.Donate
{
    public partial class SchoolList : System.Web.UI.Page
    {
        private static int PageSize = 10;
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
            gvSchoolsList.DataSource = dummy;
            gvSchoolsList.DataBind();

        }
        private void Bindstates()
        {

            DataSet ds = GVSchools.BLL.Schools.SelectStates();
            ddlState.DataSource = ds.Tables[0];
            ddlState.DataBind();
            ddlState.Items.Insert(0, new ListItem("Select State", "0"));
        }

        [System.Web.Services.WebMethod]
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
    }
}