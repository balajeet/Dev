using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Collections;
using GrameenaVidya.AppCode;
using System.Configuration;
using System.IO;
using System.Text;
using GrameenaVidya.Common;

namespace GrameenaVidya.Donate
{
    public partial class Donate_New : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindStates(41);
                BindCountries();
            
            }
        }

        private void BindStates(int CountryID)
        {
            ddlState.DataSource = GVSchools.BLL.Schools.Select_States(Convert.ToInt32(CountryID));
            ddlState.DataBind();
            ddlState.Items.Insert(0, new ListItem("Select State", "0"));
            ddlDistrict.Items.Insert(0, new ListItem("Select District", "0"));
            ddlSchool.Items.Insert(0, new ListItem("Select School", "0"));
        }

        private void BindCountries()
        {
            //DataSet ds = GVSchools.BLL.Schools.SelectCountries();
            //ddlcountry.DataSource = ds.Tables[0];
            //ddlcountry.DataBind();
            //ddlcountry.Items.Insert(0, new ListItem("Select Country", "0"));
          
        }


        #region Webservicses
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

           [System.Web.Services.WebMethod]

        public static ArrayList PopulateSchools(int StateID, int DistrictID)
        {

            ArrayList list = new ArrayList();
            DataSet ds = GVSchools.BLL.Schools.GetSchools_New(Convert.ToInt32(StateID), Convert.ToInt32(DistrictID));
            DataTable dt = ds.Tables[0];
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {

                list.Add(new ListItem(ds.Tables[0].Rows[i]["SchoolName"].ToString(), ds.Tables[0].Rows[i]["S_ID"].ToString()));

            }
            return list;


        }                                                                                                                                                                                                                                                                                                       


        #endregion

           protected void lbDonate_Click(object sender, EventArgs e)
           {
               try
               {
                   decimal Amount;
                   int ProgramID = Convert.ToInt32(hdProgramType.Value);
                   int packageID = Convert.ToInt32(hdAmountTypeID.Value);
                   int TypeSchoolID = Convert.ToInt32(hdSchoolType.Value);
                   int Usertype = Convert.ToInt32(hdUserType.Value);
                   int donatemode = Convert.ToInt32(hdDonationModeID.Value);//PaymentModeID
                   int CheckpickupID = Convert.ToInt32(hdCheckpickupID.Value);
                   if (donatemode != 4)
                   {
                       CheckpickupID = 0;
                   }

                   if (lblAmount.Text != "")
                   {
                       //Amount = Convert.ToDecimal(lblAmount.Text);
                       Amount = Int32.Parse(hdnewamount.Value);
                   }
                   else
                   {
                       Amount = Convert.ToDecimal("0");

                   }

                   if (TypeSchoolID == 1)
                   {
                       txtsuppSchoolName.Text = txtsupppName.Text = txtsuppMobilenum.Text = txtsuppZipcode.Text = null;
                   }

                   if (Usertype == 1)
                   {
                       string Donate_pay = GVSchools.BLL.Schools.InsertDonar_SchoolDetails(ProgramID, packageID, Amount, TypeSchoolID, Convert.ToInt32(ddlState.SelectedValue), Convert.ToInt32(hdDistrictID.Value), Convert.ToInt32(hdSchoolID.Value), txtsuppSchoolName.Text, txtsupppName.Text, txtsuppMobilenum.Text, txtsuppZipcode.Text, txtname.Text, txtemail.Text, txtMobileNum.Text, txtAddress.Text, txtpincode.Text, Convert.ToInt32(hdcountryID.Value), Convert.ToInt32(hdDonarStateID.Value), txtlocation.Text, donatemode, 1, CheckpickupID);
                   }
                   else
                       if (Usertype == 2)
                       {


                           
                       }


               }
               catch
               {
                   ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Select Correct Details')", true);
               }

           }

           protected void lnkAdoptSchool_Click(object sender, EventArgs e)
           {
               hdProgramType.Value = "1";
               lbladopttext.Text = "Adopt a School";
           }

           protected void lnkAdoptVillage_Click(object sender, EventArgs e)
           {
               hdProgramType.Value = "2";
               lbladopttext.Text = "Adopt a Village";
           }
    }
}