using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;

namespace GrameenaVidya.Controls
{
    public partial class SchoolData : System.Web.UI.UserControl
    {
        private static int PageSize = 10;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindStates();
                BindColumnToGridview();
            }
        }

        private void BindStates()
        {
            ddlStates.DataSource = TLW.BLL.DonateBLL.StatesSelectAll();
            ddlStates.DataBind();
            ddlStates.Items.Insert(0, new ListItem("Select State", "-1"));
        }



        [System.Web.Services.WebMethod]
        public static ArrayList PopulateDistricts(int StateID)
        {

            ArrayList list = new ArrayList();
            DataSet ds = TLW.BLL.DonateBLL.SelectDistricts(StateID);
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                list.Add(new ListItem(ds.Tables[0].Rows[i]["DistrictName"].ToString(), ds.Tables[0].Rows[i]["DistrictID"].ToString()));

            }
            return list;

        }



        private void BindColumnToGridview()
        {
            DataTable dummy = new DataTable();
            dummy.Columns.Add("SchoolName");
            dummy.Columns.Add("Address");
            dummy.Columns.Add("Details");
            dummy.Rows.Add();

            gvSchools.DataSource = dummy;
            gvSchools.DataBind();

        }

        [System.Web.Services.WebMethod]
        public static string GetCustomers(int pageIndex, int StateID, int DistrictID)
        {
            string query = "[Schools_SelectSchools]";
            SqlCommand cmd = new SqlCommand(query);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@PageIndex", pageIndex);
            cmd.Parameters.AddWithValue("@PageSize", PageSize);
            cmd.Parameters.AddWithValue("@StateID", StateID);
            cmd.Parameters.AddWithValue("@DistrictID", DistrictID);

            cmd.Parameters.Add("@RecordCount", SqlDbType.Int, 20).Direction = ParameterDirection.Output;
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
    }
}