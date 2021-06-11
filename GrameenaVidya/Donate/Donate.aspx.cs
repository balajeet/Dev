using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Drawing;
using GrameenaVidya.AppCode;
using System.Web.Services;
using GrameenaVidya.BLL;
using GrameenaVidya.DAL;
using System.Configuration;
using System.IO;

namespace GrameenaVidya.Donate
{
    public partial class Donate : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                rbdCountry.Checked = true;
                if (HttpContext.Current.User.Identity.IsAuthenticated)
                {

                    UserDetails ud = new UserDetails();
                    int UserID = Convert.ToInt32(ud.UserID);
                    if (UserID == 0)
                    {
                        LoadCountries();

                    }
                    else
                    {
                        DataSet Doners = GVSchools.DAL.Schools.GetSelectDoner(UserID);
                        DataTable dt = new DataTable();
                        dt = Doners.Tables[0];
                        string UserName = dt.Rows[0]["UserName"].ToString();
                        int CountryID = Convert.ToInt32(dt.Rows[0]["CountryID"]);
                        int StateID = Convert.ToInt32(dt.Rows[0]["StateID"]);
                        string Email = dt.Rows[0]["Email"].ToString();
                        string Address = dt.Rows[0]["Address"].ToString();
                        string CountryName = dt.Rows[0]["CountryName"].ToString();
                        string State = dt.Rows[0]["StateName"].ToString();
                        string Pincode = dt.Rows[0]["Pincode"].ToString();
                        string Mobile = dt.Rows[0]["Mobile"].ToString();
                        txtDonarname.Text = UserName;
                        txtDonarEmail.Text = Email;
                        txtDonarAddress.Text = Address;

                        DataSet StateFinal = GVSchools.DAL.Schools.GetState(State);
                        if (StateFinal.Tables[0].Rows.Count > 0)
                        {
                            ddlState1.DataSource = StateFinal;
                            ddlState1.DataValueField = "StateID";
                            ddlState1.DataTextField = "StateName";
                            ddlState1.DataBind();
                            ddlState1.Enabled = true;
                        }
                        DataSet CountyFinal = GVSchools.DAL.Schools.GetCountry(CountryName);
                        if (CountyFinal.Tables[0].Rows.Count > 0)
                        {
                            ddlcountry.DataSource = CountyFinal;
                            ddlcountry.DataValueField = "CountryId";
                            ddlcountry.DataTextField = "CountryName";
                            ddlcountry.DataBind();
                            ddlcountry.Enabled = true;
                        }
                        //txtDonarCountry.Text = CountryName;
                        //txtDonarState.Text = StateName;
                        txtDonarPin.Text = Pincode;
                        txtDonarMobile.Text = Mobile;


                    }


                }
                else
                {
                    DataSet CountyFinal = GVSchools.DAL.Schools.GetCountry();
                    if (CountyFinal.Tables[0].Rows.Count > 0)
                    {
                        ddlcountry.DataSource = CountyFinal;
                        ddlcountry.DataValueField = "CountryId";
                        ddlcountry.DataTextField = "CountryName";
                        ddlcountry.DataBind();
                        ddlcountry.Enabled = true;
                        //  ddlcountry.SelectedItem.Text = rbdCountry.Text;
                    }
                }


            }

        }
        protected override void OnPreInit(EventArgs e)
        {
            base.OnPreInit(e);


            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                UserDetails ud = new UserDetails();
                int UserID = Convert.ToInt32(ud.UserID);
                if (UserID == 0)
                {
                    MasterPageFile = "~/Master/OutSideMaster.master";

                }
                else
                {
                    MasterPageFile = "~/Master/InsideMaster.master";
                }
            }


        }

        private void LoadStudents()
        {
            //  gvStudents.DataSource = GrameenaVidya.BLL.Donate.GetStudents().Tables[0];
            //  gvStudents.DataBind();
        }

        //[WebMethod]
        //public static StudentDetails[] BindStudents()
        //{
        //    DataSet ds1 =  GrameenaVidya.BLL.Donate.GetStudents();

        //    DataTable dt = ds1.Tables[0];

        //    List<StudentDetails> _data = new List<StudentDetails>();

        //    int count = dt.Rows.Count;
        //    for (int i = 0; i < dt.Rows.Count; i++)
        //    {
        //        StudentDetails objUser = new StudentDetails();
        //        objUser.StudentID = Convert.ToInt32(dt.Rows[i]["StudentID"]);
        //        objUser.StudentName = Convert.ToString(dt.Rows[i]["StudentName"]);
        //        objUser.Class = Convert.ToString(dt.Rows[i]["Class"]);
        //        objUser.Amount = Convert.ToString(dt.Rows[i]["Amount"]);
        //      //  objUser.DistrictName = Convert.ToString(dt.Rows[i]["DistrictName"]);
        //       // objUser.LocationName = Convert.ToString(dt.Rows[i]["LocationName"]);
        //        //objUser.CreatedDate = Convert.ToString(dt.Rows[i]["CreatedDate"]);
        //        //objUser.IsActive = Convert.ToString(dt.Rows[i]["IsActive"]);
        //        //objUser.StatusID = Convert.ToString(dt.Rows[i]["StatusID"]);
        //        //objUser.PackageName = Convert.ToString(dt.Rows[i]["PackageName"]);
        //        //objUser.Amount = Convert.ToString(dt.Rows[i]["Amount"]);
        //        //objUser.DiscountAmount = Convert.ToString(dt.Rows[i]["DiscountAmount"]);
        //        //objUser.CouponCode = Convert.ToString(dt.Rows[i]["CouponCode"]);
        //        _data.Add(objUser);
        //    }
        //    return _data.ToArray();
        //}

        private void LoadCountries()
        {
            ddlcountry.DataSource = GVSchools.DAL.Schools.GetCountry(); //GrameenaVidya.BLL.Donate.GetCountries().Tables[0];
            ddlcountry.DataTextField = "CountryName";
            ddlcountry.DataValueField = "CountryID";
            ddlcountry.DataBind();
            //    ddlcountry.SelectedItem.Text = rbdCountry.Text;
            //   ddlcountry.Items.Insert(0, new ListItem("Select Country", "0"));
        }

        private void LoadStates(int CountryID)
        {
            ddlState1.DataSource = GrameenaVidya.BLL.Donate.GetStates(CountryID).Tables[0];
            ddlState1.DataTextField = "StateName";
            ddlState1.DataValueField = "StateID";
            ddlState1.DataBind();

            ddlState1.Items.Insert(0, new ListItem("Select State", "0"));
        }

        protected void ddlcountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            LoadStates(Convert.ToInt32(ddlcountry.SelectedValue));
        }


        private void GetSelectedRecord()
        {
            for (int i = 0; i < gvStudents.Rows.Count; i++)
            {
                RadioButton rb = (RadioButton)gvStudents.Rows[i]
                                .Cells[0].FindControl("RadioButton1");
                if (rb != null)
                {
                    if (rb.Checked)
                    {
                        HiddenField hf = (HiddenField)gvStudents.Rows[i]
                                        .Cells[0].FindControl("HiddenField1");
                        if (hf != null)
                        {
                            ViewState["SelectedContact"] = hf.Value;
                        }

                        break;
                    }
                }
            }
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
            //if (PackageTypeID == 1)
            //{
            //    if (ddlBoard.SelectedValue == "0")
            //    {
            //        lblPerror.Visible = true;
            //        lblDError.Text = "Please Select Board";
            //       // this.lblMsg.ForeColor = Color.Red;
            //    }
            //    if(ddlClass.SelectedValue == "0")
            //    {
            //        lblPerror.Visible = true;
            //        lblDError.Text = "Please Select Class";
            //      //  this.lblMsg.ForeColor = Color.Red;
            //    }
            //    if (ddlPackage.SelectedValue == "0")
            //    {
            //        lblPerror.Visible = true;
            //        lblDError.Text = "Please Select Package";
            //       // this.lblMsg.ForeColor = Color.Red;
            //    }
            //    PackageID = ddlBoard.SelectedValue + "-" + ddlClass.SelectedValue + "-" + ddlPackage.SelectedIndex;
            //    PackageAmount = Convert.ToInt32(ddlPackage.SelectedValue);
            //    PackageTypeName = "Digital Student";
            //    Package = ddlBoard.SelectedItem + " - " + ddlClass.SelectedItem + " - " + ddlPackage.SelectedItem;
            //    string UserID =  hfDonerID.Value;
            //    if (UserID != "")
            //    {
            //        bool UserExist = GVSchools.DAL.Schools.GetSelectDoner2(Convert.ToInt32(UserID));
            //        if (UserExist)
            //        {
            //            hfUserIDFinal.Value = UserID.ToString();
            //            lblDError.Visible = true;
            //            lblDError.Text = "Doner with already exist";
            //         //   this.lblMsg.ForeColor = Color.Red;
            //        }
            //    }
            //    else
            //    {
            //        string Name = txtDonarname.Text;
            //        string EmailAddress = txtDonarEmail.Text;
            //        string Address = txtDonarAddress.Text;
            //        string Location = txtDonarLocation.Text;
            //        int CountryID = Convert.ToInt32(ddlcountry.SelectedItem.Value);
            //        int StateID = Convert.ToInt32(ddlState1.SelectedItem.Value);
            //        string Pincode = txtDonarPin.Text;
            //        string ContactNumber = txtDonarMobile.Text;
            //        Int32 _UserID = GVSchools.DAL.Schools.InsertDoners(Name, EmailAddress, ContactNumber, CountryID, StateID, Location, Address, Pincode);


            //        string Password = "password";
            //        GVSchools.DAL.Schools.CreateUserPassword(_UserID, Password);
            //        hfUserIDFinal.Value = _UserID.ToString();
            //        lblDError.Visible = true;
            //        lblDError.Text = "Successfully  Inserted";
            //      //  this.lblMsg.ForeColor = Color.Green;
            //    }


            //}

            //if (PackageTypeID == 2)
            //{
            //    //PackageID = hfPackageID.Value;
            //    //PackageAmount = Convert.ToInt32(hfPackageAmount.Value);

            //    if (rd1.Checked) { PackageAmount = Convert.ToInt32(rd1.ToolTip); Package = rd1.Text; }
            //    if (rd2.Checked) { PackageAmount = Convert.ToInt32(rd2.ToolTip); Package = rd2.Text; }
            //    if (rd3.Checked) { PackageAmount = Convert.ToInt32(rd3.ToolTip); Package = rd3.Text; }
            //    if (rd4.Checked) { PackageAmount = Convert.ToInt32(rd4.ToolTip); Package = rd4.Text; }
            //    if (rd5.Checked) { PackageAmount = Convert.ToInt32(rd5.ToolTip); Package = rd5.Text; }
            //    if (rd6.Checked) { PackageAmount = Convert.ToInt32(rd6.ToolTip); Package = rd6.Text; }
            //    PackageTypeName = "Digital Classroom";
            //    string UserID =  hfDonerID.Value;
            //    if (UserID != "")
            //    {
            //        bool UserExist = GVSchools.DAL.Schools.GetSelectDoner2(Convert.ToInt32(UserID));
            //        if (UserExist)
            //        {
            //            hfUserIDFinal.Value = UserID.ToString();
            //            lblDError.Visible = true;
            //            lblDError.Text = "Doner with already exist";
            //         //   this.lblMsg.ForeColor = Color.Red;
            //        }
            //      }
            //    else
            //    {
            //        string Name = txtDonarname.Text;
            //        string EmailAddress = txtDonarEmail.Text;
            //        string Address = txtDonarAddress.Text;
            //        string Location = txtDonarLocation.Text;
            //        int CountryID = Convert.ToInt32(ddlcountry.SelectedItem.Value);
            //        int StateID = Convert.ToInt32(ddlState1.SelectedItem.Value);
            //        string Pincode = txtDonarPin.Text;
            //        string ContactNumber = txtDonarMobile.Text;
            //        Int32 _UserID = GVSchools.DAL.Schools.InsertDoners(Name, EmailAddress, ContactNumber, CountryID, StateID, Location, Address, Pincode);
            //        string Password = "password";
            //        GVSchools.DAL.Schools.CreateUserPassword(_UserID, Password);
            //        hfUserIDFinal.Value = _UserID.ToString();
            //        lblDError.Visible = true;
            //        lblDError.Text = "Successfully  Inserted";
            //     //   this.lblMsg.ForeColor = Color.Green;
            //    }


            //}

            //if (PackageTypeID == 3)
            //{
            //    PackageID = "1";
            //    PackageAmount = Convert.ToInt32(txtSchoolAmount.Text);
            //    PackageTypeName = "Donate School";
            //    Package = txtname.Text + "<br>" + txtAddress.Text;
            //    string UserID =  hfDonerID.Value;
            //    if (UserID != "")
            //    {
            //        bool UserExist = GVSchools.DAL.Schools.GetSelectDoner2(Convert.ToInt32(UserID));
            //        if (UserExist)
            //        {
            //            hfUserIDFinal.Value = UserID.ToString();
            //            lblDError.Visible = true;
            //            lblDError.Text = "Doner with already exist";
            //          //  this.lblMsg.ForeColor = Color.Red;
            //        }

            //    }
            //    else
            //    {
            //        string Name = txtDonarname.Text;
            //        string EmailAddress = txtDonarEmail.Text;
            //        string Address = txtDonarAddress.Text;
            //        string Location = txtDonarLocation.Text;
            //        int CountryID = Convert.ToInt32(ddlcountry.SelectedItem.Value);
            //        int StateID = Convert.ToInt32(ddlState1.SelectedItem.Value);
            //        string Pincode = txtDonarPin.Text;
            //        string ContactNumber = txtDonarMobile.Text;
            //        Int32 _UserID = GVSchools.DAL.Schools.InsertDoners(Name, EmailAddress, ContactNumber, CountryID, StateID, Location, Address, Pincode);
            //        string Password = "password";
            //        GVSchools.DAL.Schools.CreateUserPassword(_UserID, Password);
            //        hfUserIDFinal.Value = _UserID.ToString();
            //        lblDError.Visible = true;
            //        lblDError.Text = "Successfully  Inserted";
            //       // this.lblMsg.ForeColor = Color.Green;
            //  }
            //    string SchoolID = hfSchoolIDFinal.Value;
            //    if (SchoolID != "")
            //    {
            //        bool SchoolExist = GVSchools.DAL.Schools.GetSelectSchool2(Convert.ToInt32(SchoolID));
            //        if (SchoolExist)
            //        {
            //            lblScError.Visible = true;
            //            lblScError.Text = "School with already exist";
            //            this.lblScError.ForeColor = Color.Red;
            //        }

            //    }
            //    else
            //    {
            //        string SchoolName = txtname.Text;
            //        int StateID = Convert.ToInt32(ddlStates.SelectedItem.Value);
            //        string Address = txtAddress.Text;
            //        int DistrictID = Convert.ToInt32(ddlDistricts.SelectedItem.Value);
            //        string Amount = txtSchoolAmount.Text;
            //        int LocationID = Convert.ToInt32(ddlLocations.SelectedItem.Value);
            //        Int32 SchoolID2 = GVSchools.DAL.Schools.InsertSchool(SchoolName, StateID, DistrictID, LocationID, Address);
            //        string Dmaker = txtDmaker.Text;
            //        string Dmakercontact = txtDmakercontact.Text;
            //        string Email = txtEmail.Text;
            //        string Curriculum = txtCurriculum.Text;

            //        string Noofstudents = txtNoofstudents.Text;
            //        string Noofgirls = txtNoofgirls.Text;
            //        string Noofteachers = txtNoofteachers.Text;
            //        string Typeofschool = txtTypeofschool.Text;
            //        string Avgschoolfee = txtAvgschoolfee.Text;
            //        string Geoinfo = txtGeoinfo.Text;
            //        string Socio = txtSocio.Text;
            //        string Studentfamilyincome = txtStudentfamilyincome.Text;
            //        string Noofcomputers = txtNoofcomputers.Text;
            //        bool dohaveonlineclass = false;
            //        bool dohavesmartclass = false;
            //        Int32 SchoolID5 = GVSchools.DAL.Schools.InsertSchoolProfile(SchoolID2,Dmaker, Dmakercontact, Email, Curriculum, Noofstudents, Noofgirls,
            //            Noofgirls, Noofteachers, Typeofschool, Avgschoolfee, Geoinfo, Socio, Studentfamilyincome, Noofcomputers, dohaveonlineclass, dohavesmartclass);
            //        int CountryID = 41;
            //        hfUserIDFinal.Value = UserID.ToString();
            //        GVSchools.DAL.Schools.InsertDonarSchoolDetails(CountryID, StateID, DistrictID, LocationID, SchoolID2, Convert.ToInt32(UserID));
            //        lblDError.Visible = true;
            //        lblDError.Text = "Successfully  Inserted";
            //        this.lblDError.ForeColor = Color.Green;
            //    }

            //}
            //if (PackageTypeID == 4)
            //{
            //    PackageID = "1";
            //    PackageAmount = 10000;
            //    PackageTypeName = "Donate Student";
            //    Package = "Student Name";
            //    string UserID = hfDonerID.Value;
            //    if (UserID != "")
            //    {
            //        bool UserExist = GVSchools.DAL.Schools.GetSelectDoner2(Convert.ToInt32(UserID));
            //        if (UserExist)
            //        {
            //            hfUserIDFinal.Value = UserID.ToString();
            //            lblDError.Visible = true;
            //            lblDError.Text = "Doner with already exist";
            //           // this.lblMsg.ForeColor = Color.Red;
            //        }

            //    }
            //    else
            //    {
            //        string Name = txtDonarname.Text;
            //        string EmailAddress = txtDonarEmail.Text;
            //        string Address = txtDonarAddress.Text;
            //        string Location = txtDonarLocation.Text;
            //        int CountryID = Convert.ToInt32(ddlcountry.SelectedItem.Value);
            //        int StateID = Convert.ToInt32(ddlState1.SelectedItem.Value);
            //        string Pincode = txtDonarPin.Text;
            //        string ContactNumber = txtDonarMobile.Text;
            //        Int32 _UserID = GVSchools.DAL.Schools.InsertDoners(Name, EmailAddress, ContactNumber, CountryID, StateID, Location, Address, Pincode);
            //        string Password = "password";
            //        GVSchools.DAL.Schools.CreateUserPassword(_UserID, Password);
            //        hfUserIDFinal.Value = UserID.ToString();
            //        lblDError.Visible = true;
            //        lblDError.Text = "Successfully  Inserted";
            //     //   this.lblMsg.ForeColor = Color.Green;
            //    }
            //       string StudentID = hfStudentIDFinal.Value;
            //       if (StudentID != "")
            //        {
            //             bool StudentExist = GVSchools.DAL.Schools.GetStudent2(Convert.ToInt32(StudentID));
            //             if (StudentExist)
            //             {
            //                 lblStudentsError.Visible = true;
            //                 lblStudentsError.Text = "Student with already exist";
            //                 this.lblStudentsError.ForeColor = Color.Red;
            //             }

            //        }
            //        else
            //        {
            //            string FirstName = txtFName.Text;
            //            string LastName = txtLName.Text;
            //            string SurName = txtSName.Text;
            //            string ClassName = txtClass.Text;
            //            string Amount = txtAmount.Text;
            //            Int32 _SchoolID = GVSchools.DAL.Schools.InsertStudent(FirstName, LastName, SurName, ClassName, Amount);

            //            lblStudentsError.Visible = true;
            //            lblStudentsError.Text = "Successfully  Inserted";
            //            this.lblStudentsError.ForeColor = Color.Green;
            //        }

            //}
            //if (PackageTypeID == 5)
            //{
            //    PackageID = "0";
            //    PackageAmount = Convert.ToInt32(txtOtherAmount.Text);
            //    PackageTypeName = "Other Amount";
            //    string UserID = hfDonerID.Value;
            //    if (UserID != "")
            //    {
            //        bool UserExist = GVSchools.DAL.Schools.GetSelectDoner2(Convert.ToInt32(UserID));
            //        if (UserExist)
            //        {
            //            hfUserIDFinal.Value = UserID.ToString();
            //            lblDError.Visible = true;
            //            lblDError.Text = "Doner with already exist";
            //          //  this.lblMsg.ForeColor = Color.Red;
            //        }

            //    }
            //    else
            //    {
            //        string Name = txtDonarname.Text;
            //        string EmailAddress = txtDonarEmail.Text;
            //        string Address = txtDonarAddress.Text;
            //        string Location = txtDonarLocation.Text;
            //        int CountryID = Convert.ToInt32(ddlcountry.SelectedItem.Value);
            //        int StateID = Convert.ToInt32(ddlState1.SelectedItem.Value);
            //        string Pincode = txtDonarPin.Text;
            //        string ContactNumber = txtDonarMobile.Text;
               //     Int32 _UserID = GVSchools.DAL.Schools.InsertDoners(Name, EmailAddress, ContactNumber, CountryID, StateID, Location, Address, Pincode);
            //        string Password = "password";
            //        GVSchools.DAL.Schools.CreateUserPassword(_UserID, Password);
            //        hfUserIDFinal.Value = _UserID.ToString();
            //        lblDError.Visible = true;
            //        lblDError.Text = "Successfully  Inserted Doner";
            //       // this.lblMsg.ForeColor = Color.Green;
            //    }
            //}
            string UserIDLast = "1";
            try
            {
                UserIDLast = hfUserIDFinal.Value;

            }
            catch (Exception ex)
            {

                lblDError.Text = ex.Message;
            }

            if (UserIDLast != "")
            {
                try
                {
                    PackageAmount = Convert.ToDouble(hfPackageAmount.Value);
                    PackageID = hfPackageID.Value;
                    string PackageType = hfPackageTypeID.Value;
                    string packs2 = PackageType.TrimEnd('_');
                    string[] packsmain = packs2.Split('_');
                    string packs1=PackageID.TrimEnd('_');
                    string[] packs = packs1.Split('_');
                    string DonationMode = "";
                    if (rbnetbanking.Checked) DonationMode = "Net Banking";
                    if (rbchequee.Checked) DonationMode = "chequee";
                    int RetVal = 0;

                    lblDError.Text = "RetVal==" + PackageTypeID + "," + PackageID + "," + PackageAmount + "," + UserIDLast + "," + DonationMode;
                    if (packs.Length == 1)
                    {
                        RetVal = GrameenaVidya.BLL.Donate.Insert_Donation(Convert.ToInt32(packsmain[0]), packs[0], PackageAmount, Convert.ToInt32(UserIDLast), DonationMode);
                    }
                    else {
                        for (int i = 0; i < packs.Length;i++ )
                        {
                            RetVal = GrameenaVidya.BLL.Donate.Insert_Donation(Convert.ToInt32(packsmain[i]), packs[i], PackageAmount, Convert.ToInt32(UserIDLast), DonationMode);
                        }
                    
                    }


                    if (RetVal > 0)
                    {
                        Session["QueryValues"] = PackageTypeName + "~" + Package + "~" + PackageAmount + "~" + UserIDLast + "~" + RetVal;
                        Session["DonarDetails"] = txtDonarname.Text + "~" + txtDonarEmail.Text + "~" + txtDonarMobile.Text + "~" + txtDonarAddress.Text + "~" + ddlcountry.SelectedItem.Text + "~" + ddlState1.SelectedItem.Text + "~" + txtDonarPin.Text + "~" + txtDonarLocation.Text;

                        lblDError.Text = "Your Donation Successfully  Submitted";
                        this.lblDError.ForeColor = Color.Green;


                        Response.Redirect("PurchaseOrder.aspx", false);



                    }
                }
                catch (Exception ex)
                {

                    lblDError.Text = "Error <br/>" + ex.Message;
                    this.lblDError.ForeColor = Color.Red;
                }

            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "ShowPopup();", true);

            }

        }


        //protected void rdbPackage3_CheckedChanged(object sender, EventArgs e)
        //{
        //    btnDoners.Visible = true;
        //    BindStates();
        //    clearTextBoxes();
        //}
        protected void rdbPackage1_CheckedChanged(object sender, EventArgs e)
        {
            btnDoners.Visible = true;

        }
        protected void rdbPackage2_CheckedChanged(object sender, EventArgs e)
        {
            btnDoners.Visible = true;

        }
        //protected void rdbPackage4_CheckedChanged(object sender, EventArgs e)
        //{
        //    btnDoners.Visible = true;

        //}
        //protected void rdbNewSchool_CheckedChanged(object sender, EventArgs e)
        //{
        //    btnDoners.Visible = true;

        //}
        //protected void rdbExistingSchool_CheckedChanged(object sender, EventArgs e)
        //{
        //    btnDoners.Visible = true;
        //    BindSchoolList();
        //    BindStates();


        //}
        protected void rdbExistingStudent_CheckedChanged(object sender, EventArgs e)
        {
            btnDoners.Visible = true;
            LoadStudents();


        }
        protected void rdbPackage5_CheckedChanged(object sender, EventArgs e)
        {
            btnDoners.Visible = true;

        }

        private void clearTextBoxes()
        {
            txtDonarname.Text = "";
            txtDonarEmail.Text = "";
            txtDonarAddress.Text = "";
            //txtDonarCountry.Text = "";
            //txtDonarState.Text = "";
            txtDonarPin.Text = "";
            txtDonarMobile.Text = "";
        }

        private void BindStates()
        {
            ddlStates.DataSource = GVSchools.DAL.Schools.Select_States1();
            ddlStates.DataValueField = "StateID";
            ddlStates.DataTextField = "StateName";
            ddlStates.DataBind();
            ddlStates.Items.Insert(0, new ListItem("Select State", "0"));
        }
        protected void ddlStates_SelectedIndexChanged(object sender, EventArgs e)
        {
            int StateID = Convert.ToInt32(ddlStates.SelectedValue.ToString());
            DataSet Districts = GVSchools.DAL.Schools.SelectDistricts(StateID);
            if (Districts.Tables[0].Rows.Count > 0)
            {
                ddlDistricts.DataSource = Districts;
                ddlDistricts.DataValueField = "DistrictID";
                ddlDistricts.DataTextField = "DistrictName";
                ddlDistricts.DataBind();
                ddlDistricts.Items.Insert(0, new ListItem("-- Select Districts --", "0"));
            }
        }
        protected void ddlDistricts_SelectedIndexChanged(object sender, EventArgs e)
        {
            int DistrictID = Convert.ToInt32(ddlDistricts.SelectedValue.ToString());
            DataSet Location = GVSchools.DAL.Schools.SelectLocation(DistrictID);
            if (Location.Tables[0].Rows.Count > 0)
            {
                ddlLocations.DataSource = Location;
                ddlLocations.DataValueField = "LocationID";
                ddlLocations.DataTextField = "LocationName";
                ddlLocations.DataBind();
                ddlLocations.Items.Insert(0, new ListItem("-- Select Location --", "0"));
            }
        }

        protected void btnSchool_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
            BindSchoolList();
            BindStates();
        }

        private void BindSchoolList()
        {
            // gvSchoollist.DataSource = GVSchools.DAL.Schools.GetSchoolList().Tables[0];
            //  gvSchoollist.DataBind();
        }
        protected void btnSelect_Click(object sender, EventArgs e)
        {
            int SchoolID = Convert.ToInt32(Request.Form["hfSchoolID"]);
            hfSchoolIDFinal.Value = SchoolID.ToString();
            if (SchoolID == 0)
            {
                //   lblMsg.Visible = true;
                //   lblMsg.Text = "Please Select School";
                //   this.lblMsg.ForeColor = Color.Red;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
            }
            else
            {
                DataSet School = GVSchools.DAL.Schools.GetSelectSchool(SchoolID);
                DataTable dt = new DataTable();
                dt = School.Tables[0];
                string SchoolName = dt.Rows[0]["SchoolName"].ToString();
                string State = dt.Rows[0]["StateName"].ToString();
                string DistrictName = dt.Rows[0]["DistrictName"].ToString();
                string LocationName = dt.Rows[0]["LocationName"].ToString();
                DataSet StateFinal = GVSchools.DAL.Schools.GetState(State);
                if (StateFinal.Tables[0].Rows.Count > 0)
                {
                    ddlStates.DataSource = StateFinal;
                    ddlStates.DataValueField = "StateID";
                    ddlStates.DataTextField = "StateName";
                    ddlStates.DataBind();
                    ddlStates.Enabled = true;
                }
                DataSet DistrictNameFinal = GVSchools.DAL.Schools.GetDistrict(DistrictName);
                if (DistrictNameFinal.Tables[0].Rows.Count > 0)
                {
                    ddlDistricts.DataSource = DistrictNameFinal;
                    ddlDistricts.DataValueField = "DistrictID";
                    ddlDistricts.DataTextField = "DistrictName";
                    ddlDistricts.DataBind();

                    ddlDistricts.Enabled = true;
                }
                DataSet LocationsFinal = GVSchools.DAL.Schools.GetLocation(LocationName, SchoolID);
                if (LocationsFinal.Tables[0].Rows.Count > 0)
                {
                    ddlLocations.DataSource = LocationsFinal;
                    ddlLocations.DataValueField = "LocationID";
                    ddlLocations.DataTextField = "LocationName";
                    ddlLocations.DataBind();

                    ddlLocations.Enabled = true;
                }
                txtname.Text = SchoolName;

            }
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "ModalClose();", true);
            btnDoners.Visible = true;
        }
        protected void btnDoners_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal1();", true);
            BindDoNarsList();

        }

        private void BindDoNarsList()
        {
            gvDonerList.DataSource = GVSchools.DAL.Schools.GetDonerList().Tables[0];
            gvDonerList.DataBind();
        }
        protected void btnDSend_Click(object sender, EventArgs e)
        {
            int UserID = Convert.ToInt32(Request.Form["hfDonerID"]);
            hfDonerID.Value = UserID.ToString();
            if (UserID == 0)
            {
                lblerrorDoner.Visible = true;
                lblerrorDoner.Text = "Please Select Doner";
                this.lblerrorDoner.ForeColor = Color.Red;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal1();", true);
            }
            else
            {
                DataSet Doners = GVSchools.DAL.Schools.GetSelectDoner(UserID);
                DataTable dt = new DataTable();
                dt = Doners.Tables[0];
                string UserName = dt.Rows[0]["UserName"].ToString();
                int CountryID = Convert.ToInt32(dt.Rows[0]["CountryID"]);
                int StateID = Convert.ToInt32(dt.Rows[0]["StateID"]);
                string Email = dt.Rows[0]["Email"].ToString();
                string Address = dt.Rows[0]["Address"].ToString();
                string CountryName = dt.Rows[0]["CountryName"].ToString();
                string State = dt.Rows[0]["StateName"].ToString();
                string Pincode = dt.Rows[0]["Pincode"].ToString();
                string Mobile = dt.Rows[0]["Mobile"].ToString();
                txtDonarname.Text = UserName;
                txtDonarEmail.Text = Email;
                txtDonarAddress.Text = Address;
                DataSet StateFinal = GVSchools.DAL.Schools.GetState(State);
                if (StateFinal.Tables[0].Rows.Count > 0)
                {
                    ddlState1.DataSource = StateFinal;
                    ddlState1.DataValueField = "StateID";
                    ddlState1.DataTextField = "StateName";
                    ddlState1.DataBind();
                    ddlState1.Enabled = true;
                }
                DataSet CountyFinal = GVSchools.DAL.Schools.GetCountry(CountryName);
                if (CountyFinal.Tables[0].Rows.Count > 0)
                {
                    ddlcountry.DataSource = CountyFinal;
                    ddlcountry.DataValueField = "CountryId";
                    ddlcountry.DataTextField = "CountryName";
                    ddlcountry.DataBind();
                    ddlcountry.Enabled = true;
                }
                //txtDonarCountry.Text = CountryName;
                //txtDonarState.Text = StateName;
                txtDonarPin.Text = Pincode;
                txtDonarMobile.Text = Mobile;
            }
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "ModalClose1();", true);
            int PackageId = 0;
            if (rdbPackage1.Checked) PackageId = 1;
            if (rdbPackage2.Checked) PackageId = 2;
            //  if (rdbPackage3.Checked) PackageId = 3;
            // if (rdbPackage4.Checked) PackageId = 4;
            if (rdbPackage5.Checked) PackageId = 5;
            hfPackageID.Value = PackageId.ToString();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "", "SelectPackage(" + PackageId + ");", true);
        }
        protected void btnStudents_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModalStudent();", true);
            LoadStudents();
        }
        protected void btnStudent_Click(object sender, EventArgs e)
        {
            int StudentID = Convert.ToInt32(Request.Form["hfStudentID"]);
            hfStudentIDFinal.Value = StudentID.ToString();
            if (StudentID == 0)
            {
                lblStudentError.Visible = true;
                lblStudentError.Text = "Please Select Student";
                this.lblStudentError.ForeColor = Color.Red;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModalStudent();", true);
            }
            else
            {
                DataSet StudentList = GVSchools.DAL.Schools.GetSelectStudentList(StudentID);
                DataTable dt = new DataTable();
                dt = StudentList.Tables[0];
                int StudentIDFinal = Convert.ToInt32(dt.Rows[0]["StudentID"]);
                string FirstName = dt.Rows[0]["FirstName"].ToString();
                string LastName = dt.Rows[0]["LastName"].ToString();
                string SurName = dt.Rows[0]["SurName"].ToString();
                string Qualification = dt.Rows[0]["Qualification"].ToString();
                int Amount = Convert.ToInt32(dt.Rows[0]["Amount"]);
                txtFName.Text = FirstName;
                txtLName.Text = LastName;
                txtSName.Text = SurName;
                txtClass.Text = Qualification;
                txtAmount.Text = Convert.ToInt32(Amount).ToString();
            }
            int PackageId = 0;
            if (rdbPackage1.Checked) PackageId = 1;
            if (rdbPackage2.Checked) PackageId = 2;
            // if (rdbPackage3.Checked) PackageId = 3;
            //   if (rdbPackage4.Checked) PackageId = 4;
            if (rdbPackage5.Checked) PackageId = 5;
            hfPackageID.Value = PackageId.ToString();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "", "SelectPackage(" + PackageId + ");", true);
        }


        [WebMethod]
        public static int InsertDonar(GrameenaVidya.BLL.Users Donars)
        {
            string Name = Donars.Name;
            string EmailAddress = Donars.EmailAddress;
            string Address = Donars.Address;
            string Location = Donars.Location;
            int CountryID = Convert.ToInt32(Donars.CountryID);
            int StateID = 0;// Convert.ToInt32(ddlState1.SelectedItem.Value);
            string Pincode = Donars.Pincode;
            string ContactNumber = Donars.ContactNumber;
            string PAN = Donars.PAN;
            bool UserExist = GrameenaVidya.BLL.Users.CheckUserExists(EmailAddress);
            if (UserExist)
            {
                return -1;

            }
            else
            {
                Int32 _UserID = GVSchools.DAL.Schools.InsertDoners(Name, EmailAddress, ContactNumber, CountryID, StateID, Location, Address, Pincode,PAN);
                string Password = "password";
                GVSchools.DAL.Schools.CreateUserPassword(_UserID, Password);
                //hfUserIDFinal.Value = _UserID.ToString();
                //lblDError.Visible = true;
                //lblDError.Text = "Successfully  Inserted Doner";
             //   SendPurchaseMail(_UserID);

                return _UserID;
            }
        }

      
        [WebMethod]
        public static SchoolDetails[] BindSchools(string Type)
        {
            DataSet ds1 = GVSchools.DAL.Schools.GetSchoolList(Type);

            DataTable dt = ds1.Tables[0];

            List<SchoolDetails> _data = new List<SchoolDetails>();

            int count = dt.Rows.Count;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                SchoolDetails objUser = new SchoolDetails();
                objUser.SchoolID = Convert.ToInt32(dt.Rows[i]["SchoolID"]);
                objUser.SchoolName = Convert.ToString(dt.Rows[i]["SchoolName"]);
                objUser.CountryName = Convert.ToString(dt.Rows[i]["CountryName"]);
                objUser.StateName = Convert.ToString(dt.Rows[i]["StateName"]);
                objUser.DistrictName = Convert.ToString(dt.Rows[i]["DistrictName"]);
                objUser.LocationName = Convert.ToString(dt.Rows[i]["LocationName"]);
                //objUser.CreatedDate = Convert.ToString(dt.Rows[i]["CreatedDate"]);
                //objUser.IsActive = Convert.ToString(dt.Rows[i]["IsActive"]);
                //objUser.StatusID = Convert.ToString(dt.Rows[i]["StatusID"]);
                //objUser.PackageName = Convert.ToString(dt.Rows[i]["PackageName"]);
                //objUser.Amount = Convert.ToString(dt.Rows[i]["Amount"]);
                //objUser.DiscountAmount = Convert.ToString(dt.Rows[i]["DiscountAmount"]);
                //objUser.CouponCode = Convert.ToString(dt.Rows[i]["CouponCode"]);
                _data.Add(objUser);
            }
            return _data.ToArray();
        }

        [WebMethod]
        public static StudentDetails[] BindStudents(string Type)
        {
            DataSet ds1 = null;


            ds1 = GrameenaVidya.BLL.Donate.GetStudentsView(Type);

            DataTable dt = ds1.Tables[0];

            List<StudentDetails> _data = new List<StudentDetails>();

            int count = dt.Rows.Count;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                StudentDetails objUser = new StudentDetails();
                objUser.StudentID = Convert.ToInt32(dt.Rows[i]["StudentID"]);
                objUser.StudentName = Convert.ToString(dt.Rows[i]["StudentName"]);
                var img = dt.Rows[i]["ImageFile"].ToString();
                if (img.ToString() == "")
                {
                }
                else
                {
                    objUser.ImageFile = (byte[])dt.Rows[i]["ImageFile"];
                }
                objUser.StateName = Convert.ToString(dt.Rows[i]["StateName"]);
                objUser.DistrictName = Convert.ToString(dt.Rows[i]["DistrictName"]);
                string address = Convert.ToString(dt.Rows[i]["LocationName"]) + "," + Convert.ToString(dt.Rows[i]["NearBy1"]) + "," + Convert.ToString(dt.Rows[i]["NearBy2"]) + "," + Convert.ToString(dt.Rows[i]["Pin"]);
                objUser.LocationName = address;
                //objUser.CreatedDate = Convert.ToString(dt.Rows[i]["CreatedDate"]);
                //objUser.IsActive = Convert.ToString(dt.Rows[i]["IsActive"]);
                //objUser.StatusID = Convert.ToString(dt.Rows[i]["StatusID"]);
                //objUser.PackageName = Convert.ToString(dt.Rows[i]["PackageName"]);
                //objUser.Amount = Convert.ToString(dt.Rows[i]["Amount"]);
                //objUser.DiscountAmount = Convert.ToString(dt.Rows[i]["DiscountAmount"]);
                //objUser.CouponCode = Convert.ToString(dt.Rows[i]["CouponCode"]);
                _data.Add(objUser);
            }
            return _data.ToArray();
        }


        [WebMethod]
        public static Packages[] BindPackages(int SelectedPackage)
        {
            DataSet ds1 = GVSchools.DAL.Schools.GetPackages(SelectedPackage);

            DataTable dt = ds1.Tables[0];

            List<Packages> _data = new List<Packages>();

            int count = dt.Rows.Count;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                Packages objUser = new Packages();
                objUser.ID = Convert.ToInt32(dt.Rows[i]["ID"]);
                objUser.PackageID = Convert.ToInt32(dt.Rows[i]["PackageID"]);
                objUser.Text = Convert.ToString(dt.Rows[i]["Text"]);

                objUser.Money = Convert.ToDecimal(dt.Rows[i]["Money"]);
                //objUser.CreatedDate = Convert.ToString(dt.Rows[i]["CreatedDate"]);
                //objUser.IsActive = Convert.ToString(dt.Rows[i]["IsActive"]);
                //objUser.StatusID = Convert.ToString(dt.Rows[i]["StatusID"]);
                //objUser.PackageName = Convert.ToString(dt.Rows[i]["PackageName"]);
                //objUser.Amount = Convert.ToString(dt.Rows[i]["Amount"]);
                //objUser.DiscountAmount = Convert.ToString(dt.Rows[i]["DiscountAmount"]);
                //objUser.CouponCode = Convert.ToString(dt.Rows[i]["CouponCode"]);
                _data.Add(objUser);
            }
            return _data.ToArray();
        }


    }
}