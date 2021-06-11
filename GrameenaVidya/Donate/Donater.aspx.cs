using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Text;
using System.Data;
using GrameenaVidya.AppCode;


namespace GrameenaVidya.Donate
{
    public partial class Donater : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GrameenaVidya.BLL.Users oUser = new GrameenaVidya.BLL.Users();

                // hdDonerID.Value = oUser.UserID.ToString();
                hdDonerID.Value = "1";
                // LoadStudents();
                // LoadCountries();
            }

        }
        public class DonarDat
        {
            public int UserID { get; set; }
            public string Name { get; set; }
            public string EmailAddress { get; set; }
            public string ContactPerson { get; set; }
            public string ContactNumber { get; set; }
            public string SponserTypeID { get; set; }
            public string UserTypeID { get; set; }
            public string RegisteredDate { get; set; }
            public string CountryID { get; set; }
            public string StateID { get; set; }
            public string Location { get; set; }
            public string Address { get; set; }
            public string Pincode { get; set; }
            public string CountryName { get; set; }
            public string StateName { get; set; }


        }

        [WebMethod]
        public static List<DonarDat> GetDonarDat(string DonarID)
        {
            List<DonarDat> lstst = new List<DonarDat>();

            DataTable dt = GrameenaVidya.BLL.Donate.GetDonarData(DonarID);


            for (int i = 0; i < dt.Rows.Count; i++)
            {
                DonarDat st = new DonarDat();
                st.UserID = Convert.ToInt32(dt.Rows[i]["UserID"].ToString());
                st.Name = dt.Rows[i]["Name"].ToString();
                st.EmailAddress = dt.Rows[i]["EmailAddress"].ToString();
                st.Address = dt.Rows[i]["Address"].ToString();
                st.Location = dt.Rows[i]["location"].ToString();
                st.CountryID = dt.Rows[i]["CountryID"].ToString();
                st.Pincode = dt.Rows[i]["Pincode"].ToString();
                st.ContactNumber = dt.Rows[i]["contactNumber"].ToString();
                st.CountryName = dt.Rows[i]["CountryName"].ToString();
                st.StateName = dt.Rows[i]["StateName"].ToString();

                lstst.Add(st);
            }
            return lstst;
        }
        public class GetUserDetails
        {
            public string UserID { get; set; }
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
        public class DropDownValues
        {
            public string Value { get; set; }
            public string Text { get; set; }
        }
        [WebMethod]
        public static List<DropDownValues> BindDropDowns(string ddlType, string ID)
        {

            List<DropDownValues> ddl = new List<DropDownValues>();
            try
            {
                DataTable dt = GrameenaVidya.DAL.Users.BindDropDowns(ddlType, ID);
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    DropDownValues dropdown = new DropDownValues();
                    dropdown.Value = dt.Rows[i]["ID"].ToString();
                    dropdown.Text = dt.Rows[i]["Name"].ToString();

                    ddl.Add(dropdown);

                }

                return ddl;

            }
            catch (Exception e)
            {
                return ddl;

            }

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
                    string SessionID = GrameenaVidya.BLL.Users.UserLogIn_InsertSessionDetails(oUser.UserID);
                    DonarDetails Details = new DonarDetails();
                    Details.UserID = oUser.UserID;
                    if (SessionID != null)
                    {
                        DataTable dt = GrameenaVidya.DAL.Users.GetProfileData(username);

                        foreach (DataRow dtrow in dt.Rows)
                        {
                            GetUserDetails gv = new GetUserDetails();



                            gv.UserID = dtrow["UserID"].ToString();
                            gv.Name = dtrow["Name"].ToString();
                            gv.Email = dtrow["EmailAddress"].ToString();
                            gv.MobileNum = dtrow["ContactNumber"].ToString();
                            gv.Address = dtrow["Address"].ToString();
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

        [WebMethod]
        public static List<StudentData> GetStudentData()
        {
            List<StudentData> lststu = new List<StudentData>();

            DataTable dt = GrameenaVidya.BLL.Donate.GetStudents().Tables[0];


            for (int i = 0; i < dt.Rows.Count; i++)
            {
                StudentData stu = new StudentData();
                stu.StudentID = Convert.ToInt32(dt.Rows[i]["StudentID"].ToString());
                stu.StudentName = dt.Rows[i]["StudentName"].ToString();
                stu.Class = dt.Rows[i]["Class"].ToString();
                stu.Amount = dt.Rows[i]["Amount"].ToString();
                lststu.Add(stu);
            }
            return lststu;
        }
        [WebMethod]
        public static List<StudentData> GetDoners(int StudentID)
        {
            List<StudentData> lststu = new List<StudentData>();

            DataTable dt = GrameenaVidya.BLL.Donate.GetDoners(StudentID.ToString());


            for (int i = 0; i < dt.Rows.Count; i++)
            {
                StudentData stu = new StudentData();

                stu.StudentName = dt.Rows[i]["Name"].ToString();
                stu.ContactNumber = dt.Rows[i]["ContactNumber"].ToString();
                stu.Amount = dt.Rows[i]["Amount"].ToString();

                lststu.Add(stu);
            }
            return lststu;
        }


        [WebMethod]
        public static string InsertDonarData(string UserName, string Email, string Address, string location, string Country, string State, string PackageTypeID, string PackageID, string PackageAmount, string PaymentMode, string Pwd, string pin, string mobile)
        {
            int RetVal = GrameenaVidya.BLL.Donate.Insert_Donation(UserName, Email, Address, location,Country, State,Convert.ToInt32(PackageTypeID), PackageID, Convert.ToDouble(PackageAmount), PaymentMode,Pwd,pin,mobile);

            return RetVal.ToString();

        }
        [WebMethod]
        public static string UpdateDonarData(string PackageTypeID, string PackageID, string PackageAmount, string UserID, string PaymentMode)
        {
            int RetVal = 0;
            RetVal = GrameenaVidya.BLL.Donate.UpdateDonarData(PackageTypeID, PackageID, PackageAmount,UserID, PaymentMode);
            return RetVal.ToString();
        }
        public class StudentData
        {
            public int StudentID { get; set; }
            public string StudentName { get; set; }
            public string Class { get; set; }
            public string Amount { get; set; }
            public string ContactNumber { get; set; }
        }



        //private void LoadCountries()
        //{
        //    ddlcountry.DataSource = GrameenaVidya.BLL.Donate.GetCountries().Tables[0];
        //    ddlcountry.DataTextField = "CountryName";
        //    ddlcountry.DataValueField = "CountryID";
        //    ddlcountry.DataBind();
        //    ddlcountry.Items.Insert(0, new ListItem("Select Country", "0"));
        //}

        //private void LoadStates(int CountryID)
        //{
        //    ddlState1.DataSource = GrameenaVidya.BLL.Donate.GetStates(CountryID).Tables[0];
        //    ddlState1.DataTextField = "StateName";
        //    ddlState1.DataValueField = "StateID";
        //    ddlState1.DataBind();

        //    ddlState1.Items.Insert(0, new ListItem("Select State", "0"));
        //}

        //protected void ddlcountry_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    LoadStates(Convert.ToInt32(ddlcountry.SelectedValue));
        //}

        //private void GetSelectedRecord()
        //{
        //    for (int i = 0; i < gvStudents.Rows.Count; i++)
        //    {
        //        RadioButton rb = (RadioButton)gvStudents.Rows[i]
        //                        .Cells[0].FindControl("RadioButton1");
        //        if (rb != null)
        //        {
        //            if (rb.Checked)
        //            {
        //                HiddenField hf = (HiddenField)gvStudents.Rows[i]
        //                                .Cells[0].FindControl("HiddenField1");
        //                if (hf != null)
        //                {
        //                    ViewState["SelectedContact"] = hf.Value;
        //                }

        //                break;
        //            }
        //        }
        //    }
        //}


        //protected void lbDonate_Click(object sender, EventArgs e)
        //{
        //    //int PackageTypeID = Convert.ToInt32(hfPackageTypeID.Value);

        //    int PackageTypeID = 0;
        //    string PackageTypeName = "";
        //    string Package = "";

        //    if (rdbPackage1.Checked) PackageTypeID = 1;
        //    if (rdbPackage2.Checked) PackageTypeID = 2;
        //    if (rdbPackage3.Checked) PackageTypeID = 3;
        //    if (rdbPackage4.Checked) PackageTypeID = 4;
        //    if (rdbPackage5.Checked) PackageTypeID = 5;

        //    string PackageID = "";
        //    double PackageAmount = 0;
        //    if (PackageTypeID == 1)
        //    {
        //        PackageID = ddlBoard.SelectedValue + "-" + ddlClass.SelectedValue + "-" + ddlPackage.SelectedIndex;
        //        PackageAmount = Convert.ToInt32(ddlPackage.SelectedValue);
        //        PackageTypeName = "Digital Patasala";
        //        Package = ddlBoard.SelectedItem + " - " + ddlClass.SelectedItem + " - " + ddlPackage.SelectedItem;
        //    }

        //    if (PackageTypeID == 2)
        //    {
        //        //PackageID = hfPackageID.Value;
        //        //PackageAmount = Convert.ToInt32(hfPackageAmount.Value);

        //        if (rd1.Checked) { PackageAmount = Convert.ToInt32(rd1.ToolTip); Package = rd1.Text; }
        //        if (rd2.Checked) { PackageAmount = Convert.ToInt32(rd2.ToolTip); Package = rd2.Text; }
        //        if (rd3.Checked) { PackageAmount = Convert.ToInt32(rd3.ToolTip); Package = rd3.Text; }
        //        if (rd4.Checked) { PackageAmount = Convert.ToInt32(rd4.ToolTip); Package = rd4.Text; }
        //        if (rd5.Checked) { PackageAmount = Convert.ToInt32(rd5.ToolTip); Package = rd5.Text; }
        //        if (rd6.Checked) { PackageAmount = Convert.ToInt32(rd6.ToolTip); Package = rd6.Text; }
        //        PackageTypeName = "Digital Classroom";

        //    }

        //    if (PackageTypeID == 3)
        //    {
        //        PackageID = "1";
        //        PackageAmount = Convert.ToInt32(txtSchoolAmount.Text);
        //        PackageTypeName = "Donate School";
        //        Package = txtname.Text + "<br>" + txtAddress.Text;
        //    }

        //    if (PackageTypeID == 4)
        //    {
        //        PackageID = "1";
        //        PackageAmount = 10000;
        //        PackageTypeName = "Donate Student";
        //        Package = "Student Name";
        //    }

        //    if (PackageTypeID == 5)
        //    {
        //        PackageID = "0";
        //        PackageAmount = Convert.ToInt32(txtOtherAmount.Text);
        //        PackageTypeName = "Other Amount";
        //    }


        //    //foreach (GridViewRow row in gvStudents.Rows)
        //    //{

        //    //    HiddenField tb = (HiddenField)row.FindControl("HiddenField1");
        //    //    string ActualAmount = row.Cells[4].Text;
        //    //    TextBox tvalue = (TextBox)row.FindControl("txtdonate");
        //    //    RadioButton btn = (RadioButton)row.FindControl("RadioButton1");
        //    //    if (Convert.ToInt32(tvalue.Text) > Convert.ToInt32(ActualAmount))
        //    //    {
        //    //        lblerror.Text = "Contribuation should not be exceed beyond Donate amount!";
        //    //        break;
        //    //    }
        //    //    else
        //    //    {
        //    //        lblerror.Text = "";
        //    //        if (tvalue.Text != "")
        //    //        {
        //    //            Session["contributeamount"] = tvalue.Text;
        //    //            Session["RemainingAmount"] = Convert.ToString(Convert.ToInt32(ActualAmount) - Convert.ToInt32(tvalue.Text));
        //    //            Session["StudentID"] = tb.Value;

        //    //        }
        //    //    }


        //    //}          

        //    int RetVal = GrameenaVidya.BLL.Donate.Insert_Donation(PackageTypeID, PackageID, PackageAmount, 1, "Card");
        //    if (RetVal > 0)
        //    {
        //        Session["QueryValues"] = PackageTypeName + "~" + Package + "~" + PackageAmount + "~" + User + "~" + RetVal;
        //        Session["DonarDetails"] = txtDonarname.Text + "~" + txtDonarEmail.Text + "~" + txtDonarMobile.Text + "~" + txtDonarAddress.Text + "~" + txtDonarCountry.Text + "~" + txtDonarState.Text + "~" + txtDonarPin.Text + "~" + txtDonarLocation.Text;

        //        Response.Redirect("PurchaseOrder.aspx");
        //    }
        //}





        //protected void gvStudents_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    int ID = Convert.ToInt32(e.CommandArgument);
        //    GridViewRow row = (GridViewRow)(((Control)e.CommandSource).NamingContainer);


        //        if (e.CommandName == "ShowPopup")
        //        {

        //            gv_displaydata.DataSource = GrameenaVidya.BLL.Donate.GetDoners(ID.ToString());
        //            gv_displaydata.DataBind();
        //            Popup(true);

        //        }

        //}



        private void Popup(bool isDisplay)
        {
            StringBuilder builder = new StringBuilder();
            if (isDisplay)
            {
                builder.Append("<script language=JavaScript> ShowPopup(); </script>\n");
                Page.ClientScript.RegisterStartupScript(this.GetType(), "ShowPopup", builder.ToString());
            }
            else
            {
                builder.Append("<script language=JavaScript> HidePopup(); </script>\n");
                Page.ClientScript.RegisterStartupScript(this.GetType(), "HidePopup", builder.ToString());

            }
        }

        private void Confirm(string Text)
        {
            string script = "<script type='text/javascript'> \n" +
            "confirm('" + Text + "'); \n" +
            "</script> \n";
            ClientScript.RegisterStartupScript(GetType(),
            "onClick", script);

        }



    }
}