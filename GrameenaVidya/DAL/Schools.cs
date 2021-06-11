using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using DataAccess;
using System.Configuration;
using System;

namespace GVSchools.DAL
{
    public class Schools
    {
     
        #region
        public static DataSet SelectStates()
        {
            DataSet ds = null;
            try
            {
                //ds = SqlHelper.ExecuteDataset(DSN.Connection("GVConnectionString"), "SelectStates");
                string Query = "";
                Query = Query + "Select StateID, StateName from States where IsActive=1";
                ds = SqlHelper.ExecuteDataset(DSN.Connection("GVConnectionString"), CommandType.Text, Query);
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return ds;
        }

        #endregion

        #region Select District
        public static DataSet SelectDistricts(int StateID)
        {
            DataSet ds = null;
            try
            {
                string Query = "";
                Query = Query + "Select DistrictID, DistrictName from dbo.Districts where StateID=" + StateID + "";
                ds = SqlHelper.ExecuteDataset(DSN.Connection("GVConnectionString"), CommandType.Text, Query);
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return ds;
        }

        #endregion

        public static DataSet GetSchoolsData(int stateID, int DistrictID)
        {
            DataSet ds = null;
            try
            {
                ds = SqlHelper.ExecuteDataset(DSN.Connection("GVConnectionString"), "Schools_SelectSchools", stateID, DistrictID);
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return ds;
        }

        public static DataSet SelectCountries()
        {
            DataSet ds = null;
            try
            {
                string Query = "";
                Query = Query + "Select CountryId, CountryName from Countries where IsActive=1";
                ds = SqlHelper.ExecuteDataset(DSN.Connection("GVConnectionString"), CommandType.Text, Query);
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return ds;
        }

        public static DataSet Select_States(int CountryID)
        {
            DataSet ds = null;
            try
            {
                string Query = "";
                Query = Query + "Select StateID, StateName from States where IsActive=1 and CountryID=" + CountryID;
                ds = SqlHelper.ExecuteDataset(DSN.Connection("GVConnectionString"), CommandType.Text, Query);
                //ds = SqlHelper.ExecuteDataset(DSN.Connection("GVConnectionString"), "Schools_SelectStates",CountryID);
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return ds;
        }
        public static DataSet Select_States1()
        {
            DataSet ds = null;
            try
            {
                string Query = "";
                Query = Query + "Select StateID,StateName from dbo.States where StateID=212 and IsActive=1";
                ds = SqlHelper.ExecuteDataset(DSN.Connection("GVConnectionString"), CommandType.Text, Query);
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return ds;
        }
        public static DataSet GetPackages(int PackageID)
        {
            DataSet ds = null;
            try
            {
                string Query = "";
              //  Query = Query + "Select * from dbo.PackageDetails where PackageID="+ PackageID+ " and Status=1 or  PackageID=" + 5 + "";
                Query = Query + "Select * from dbo.PackageDetails where Status=1  order by PackageID";
                ds = SqlHelper.ExecuteDataset(DSN.Connection("GVConnectionString"), CommandType.Text, Query);
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return ds;
        }

        public static bool InsertFeedback(string feedback, string description, string emailid)
        {
            bool status = false;
            int count = Convert.ToInt32(SqlHelper.ExecuteScalar(DSN.Connection("GVConnectionString"), CommandType.Text, "SELECT TOP 1 ID  FROM FeedBack ORDER BY ID DESC"));
            count = count + 1;
            status = Convert.ToBoolean(SqlHelper.ExecuteNonQuery(DSN.Connection("GVConnectionString"), CommandType.Text, "INSERT INTO FeedBack ([ID],[Feedback],[Description],[EmailID],[Status]) VALUES (" + count + ",'" + feedback + "','" + description + "','" + emailid + "',1)"));
            return status;
        }

        public static DataSet GetCampaginDonationDetails()
        {
            DataSet ds = null;
            try
            {
                ds = SqlHelper.ExecuteDataset(DSN.Connection("GVConnectionString"), "GetCampaginDonationDetails");
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return ds;
        }

        public static DataSet GetSchoolInformation(int SchoolID)
        {
            DataSet ds = null;
            try
            {
                ds = SqlHelper.ExecuteDataset(DSN.Connection("GVConnectionString"), "GetSchoolInformation", SchoolID);
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return ds;
        }

        public static DataSet GetSchools_New(int StateID, int DistrictID)
        {
            DataSet ds = null;
            try
            {
                ds = SqlHelper.ExecuteDataset(DSN.Connection("GVConnectionString"), "GetSchools", StateID, DistrictID);
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return ds;
        }

        public static string InsertDonar_SchoolDetails(int ProgramID, int packageID, decimal Amount, int TypeSchoolID, int stateid, int DistrictID, int Schoolid, string SchoolName, string PrincipalName, string SupMobilenumber, string supPincode, string DonarName, string DonarEmail, string DonarMobileNum, string Address1, string DonarPinCode, int CountryID, int DonarStateID,string location, int donatemode, int PaymentMode, int CheckupID)
        {
            string RetVal = null;
            try
            {
                RetVal = (string)SqlHelper.ExecuteScalar(DSN.Connection("GVConnectionString"), "Insert_Transaction_DonarDetails", ProgramID, packageID, Amount, TypeSchoolID, stateid,
                    DistrictID, Schoolid, SchoolName,
                    PrincipalName, SupMobilenumber, supPincode, DonarName, DonarEmail, DonarMobileNum, Address1, DonarPinCode, CountryID,
                    DonarStateID,location, donatemode, PaymentMode,CheckupID);
                // if (i > 0) RetVal = true;
            }
            catch (Exception ex)
            {
                //  TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return RetVal;
        }

        public static DataSet SelectLocation(int DistrictID)
        {
            DataSet ds = null;
            try
            {
                string Query = "";
                Query = Query + "Select LocationID, LocationName from dbo.Locations  where DistrictID=" + DistrictID + "";
                ds = SqlHelper.ExecuteDataset(DSN.Connection("GVConnectionString"), CommandType.Text, Query);
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return ds;
        }

        public static DataSet GetSchoolList(string Type)
        {
            DataSet ds = null;
            try
            {
                string Query = "";
                if (Type =="Normal")
                {
                    Query = Query + "Select S.SchoolID as SchoolID, S.SchoolName as SchoolName,C.CountryName as CountryName, ST.StateName as StateName, D.DistrictName as DistrictName,L.LocationName as LocationName from Schools S left join dbo.Countries C ON C.CountryID=S.CountryID left join dbo.States ST ON ST.StateID=S.StateID left join dbo.Districts D ON D.DistrictID=S.DistrictID left join dbo.Locations L ON L.LocationID=S.LocationID where S.Status=1 Group by S.SchoolID,S.SchoolName,C.CountryName,ST.StateName,D.DistrictName,L.LocationName order by S.SchoolID";
                }
                if (Type=="Random")
                {
                    Query = Query + "Select S.SchoolID as SchoolID, S.SchoolName as SchoolName,C.CountryName as CountryName, ST.StateName as StateName, D.DistrictName as DistrictName,L.LocationName as LocationName from Schools S left join dbo.Countries C ON C.CountryID=S.CountryID left join dbo.States ST ON ST.StateID=S.StateID left join dbo.Districts D ON D.DistrictID=S.DistrictID left join dbo.Locations L ON L.LocationID=S.LocationID where S.Status=1 Group by S.SchoolID,S.SchoolName,C.CountryName,ST.StateName,D.DistrictName,L.LocationName order by NEWID()";

                }
               
                ds = SqlHelper.ExecuteDataset(DSN.Connection("GVConnectionString"), CommandType.Text, Query);
            }
            catch (Exception ex)
            {
                
            }
            return ds;
        }

        public static DataSet GetSelectSchool(int SchoolID)
        {
            DataSet ds = null;
            try
            {
                string Query = "";
                Query = Query + "Select S.SchoolID as SchoolID, S.SchoolName as SchoolName,C.CountryName as CountryName, ST.StateName as StateName, D.DistrictName as DistrictName,L.LocationName as LocationName from Schools S left join dbo.Countries C ON C.CountryID=S.CountryID left join dbo.States ST ON ST.StateID=S.StateID left join dbo.Districts D ON D.DistrictID=S.DistrictID left join dbo.Locations L ON L.LocationID=S.LocationID where S.SchoolID="+SchoolID + " Group by S.SchoolID,S.SchoolName,C.CountryName,ST.StateName,D.DistrictName,L.LocationName";
                ds = SqlHelper.ExecuteDataset(DSN.Connection("GVConnectionString"), CommandType.Text, Query);
            }
            catch (Exception ex)
            {

            }
            return ds;
        }

        public static DataSet GetState(string State)
        {
            DataSet ds = null;
            try
            {
                string Query = "";
                Query = Query + "Select StateID, StateName from dbo.States where StateName='"+ State + "'";
                ds = SqlHelper.ExecuteDataset(DSN.Connection("GVConnectionString"), CommandType.Text, Query);
            }
            catch (Exception ex)
            {

            }
            return ds;
        }


        public static DataSet GetStates(int CountryID)
        {
            DataSet ds = null;
            try
            {
                string Query = "";
                Query = Query + "Select StateID, StateName from dbo.States where CountryID=" + CountryID ;
                ds = SqlHelper.ExecuteDataset(DSN.Connection("GVConnectionString"), CommandType.Text, Query);
            }
            catch (Exception ex)
            {

            }
            return ds;
        }

        public static DataSet GetDistrict(string DistrictName)
        {
            DataSet ds = null;
            try
            {
                string Query = "";
                Query = Query + "Select DistrictID, DistrictName from dbo.Districts where DistrictName='" + DistrictName + "'";
                ds = SqlHelper.ExecuteDataset(DSN.Connection("GVConnectionString"), CommandType.Text, Query);
            }
            catch (Exception ex)
            {

            }
            return ds;
        }

        public static DataSet GetLocation(string LocationName, int SchoolID)
        {
            DataSet ds = null;
            try
            {
                string Query = "";
                Query = Query + "Select Ls.LocationID as LocationID, LS.LocationName as LocationName from dbo.Locations Ls left Join dbo.Schools SL ON SL.LocationID=Ls.LocationID where LS.LocationName='" + LocationName + "' and SL.SchoolID="+SchoolID + "";
                ds = SqlHelper.ExecuteDataset(DSN.Connection("GVConnectionString"), CommandType.Text, Query);
            }
            catch (Exception ex)
            {

            }
            return ds;
        }

        public  static DataSet GetDonerList()
        {
            DataSet ds = null;
            try
            {
                string Query = "";
                Query = Query + "Select Sd.UserID as UserID, C.CountryName as CountryName,Sd.CountryID as CountryID,Sd.StateID as StateID,ST.StateName as StateName,Sd.Name as UserName,Sd.EmailAddress as Email, Sd.Address as Address, Sd.PinCode as Pincode, Sd.ContactNumber as Mobile from dbo.UserProfile  Sd left join dbo.Countries C ON C.CountryID=Sd.CountryID left join dbo.States ST ON ST.StateID=Sd.StateID";
                ds = SqlHelper.ExecuteDataset(DSN.Connection("GVConnectionString"), CommandType.Text, Query);
            }
            catch (Exception ex)
            {

            }
            return ds;
        }

        public static DataSet GetSelectDoner(int UserID)
        {
            DataSet ds = null;
            try
            {
                string Query = "";
                Query = Query + "Select Sd.UserID as UserID, C.CountryName as CountryName,Sd.CountryID as CountryID,Sd.StateID as StateID,ST.StateName as StateName,Sd.Name as UserName,Sd.EmailAddress as Email, Sd.Address as Address, Sd.PinCode as Pincode, Sd.ContactNumber as Mobile from dbo.UserProfile  Sd left join dbo.Countries C ON C.CountryID=Sd.CountryID left join dbo.States ST ON ST.StateID=Sd.StateID where Sd.UserID=" + UserID + "";
                ds = SqlHelper.ExecuteDataset(DSN.Connection("GVConnectionString"), CommandType.Text, Query);
            }
            catch (Exception ex)
            {

            }
            return ds;
        }

        public static DataSet GetSelectStudentList(int StudentID)
        {
            DataSet ds = null;
            try
            {
                string Query = "";
                Query = Query + "Select StudentID, FirstName, LastName, SurName, Qualification, Amount from StudentsData where StudentID=" + StudentID + "";
                ds = SqlHelper.ExecuteDataset(DSN.Connection("GVConnectionString"), CommandType.Text, Query);
            }
            catch (Exception ex)
            {

            }
            return ds;
        }

        public static bool GetSelectDoner2(int UserID)
        {
            bool RetVal = false;

            int i = (int)SqlHelper.ExecuteScalar(DSN.Connection("GVConnectionString"), CommandType.Text,
                "Select Count(*) from UserProfile Where UserID=" + UserID + "");
            if (i >= 1) RetVal = true;

            return RetVal;
        }

        public static DataSet GetCountry(string CountryName)
        {
            DataSet ds = null;
            try
            {
                string Query = "";
                Query = Query + "Select CountryId, CountryName from dbo.Countries where CountryName='" + CountryName + "'";
                ds = SqlHelper.ExecuteDataset(DSN.Connection("GVConnectionString"), CommandType.Text, Query);
            }
            catch (Exception ex)
            {

            }
            return ds;
        }

        public static DataSet GetCountry()
        {
            DataSet ds = null;
            try
            {
                string Query = "";
              //  Query = Query + "Select CountryId, CountryName from dbo.Countries where countryID in (1,41) order by CountryName";
                Query = Query + "Select CountryId, CountryName from dbo.Countries  order by CountryName";
                ds = SqlHelper.ExecuteDataset(DSN.Connection("GVConnectionString"), CommandType.Text, Query);
            }
            catch (Exception ex)
            {

            }
            return ds;
        }


        public static int InsertDoners(string Name, string EmailAddress, string ContactNumber, int CountryID, int StateID, string Location, string Address, string Pincode,string PAN)
        {
            int UserID;
            try
            {

                UserID = Convert.ToInt32(SqlHelper.ExecuteScalar(DSN.Connection("GVConnectionString"), "Users_InsertUsersRow", Name, EmailAddress, ContactNumber, CountryID, StateID, Location, Address, Pincode,PAN));
            }
            catch (Exception ex)
            {
                throw;
                UserID = 0;
            }
            return UserID;
        }

        public static bool GetSelectSchool2(int SchoolID)
        {
            bool RetVal = false;

            int i = (int)SqlHelper.ExecuteScalar(DSN.Connection("GVConnectionString"), CommandType.Text,
                "Select Count(*) from Schools Where SchoolID=" + SchoolID + "");
            if (i >= 1) RetVal = true;

            return RetVal;
        }

        public static int InsertSchool(string SchoolName, int StateID, int DistrictID, int LocationID, string Address)
        {
            DataSet ds = null;
            int SchoolID;
            string Query1 = "";
            Query1 = Query1 + "Select Max(SchoolID)+1 as SchoolID from Schools";
            ds = SqlHelper.ExecuteDataset(DSN.Connection("GVConnectionString"), CommandType.Text, Query1);
            DataTable dt = new DataTable();
            dt = ds.Tables[0];
            SchoolID = Convert.ToInt32(dt.Rows[0]["SchoolID"]);
            //Query = Query + "Insert into Schools (SchoolID,SchoolName,CountryID,StateID,DistrictID,LocationID,Address) values ('" + SchoolID + "','" + SchoolName + "'," + 41 + "," + StateID + ", " + DistrictID + "," + LocationID + ",'" + Address + "'";
            //int RetVal = 0;
            //RetVal = Convert.ToInt32(DataAccess.SqlHelper.ExecuteScalar(DataAccess.DSN.Connection("GVConnectionString"), CommandType.Text, Query));
            //return RetVal;
            
            try
            {

                Convert.ToInt32(SqlHelper.ExecuteScalar(DSN.Connection("GVConnectionString"), "InsertSchool", SchoolID,SchoolName,StateID,DistrictID,LocationID,Address));
            }
            catch (Exception ex)
            {
                throw;
                 
            }
            return SchoolID;
        }

        public static bool GetStudent2(int StudentID)
        {
            bool RetVal = false;

            int i = (int)SqlHelper.ExecuteScalar(DSN.Connection("GVConnectionString"), CommandType.Text,
                "Select Count(*) from Schools Where StudentID=" + StudentID + "");
            if (i >= 1) RetVal = true;

            return RetVal;
        }

        public static int InsertStudent(string FirstName, string LastName, string SurName, string ClassName, string Amount)
        {
            int SchoolID;
            try
            {

                SchoolID = Convert.ToInt32(SqlHelper.ExecuteScalar(DSN.Connection("GVConnectionString"), "InsertStudents", FirstName, LastName, SurName, ClassName,Amount));
            }
            catch (Exception ex)
            {
                throw;
                SchoolID = 0;
            }
            return SchoolID;
        }

        public static void CreateUserPassword(int _UserID, string Password)
        {
            string Query = "";
            Query = Query + "Insert into UserCredentials (DonarID,Password,CreatedDate,LastModifiedDate,Status) values (" + _UserID + ",'" + GrameenaVidya.Common.Cryptography.Encrypt(Password) + "'," + "getdate()" +"," + "getdate()" + ", " +"1)";
            int RetVal = 0;
            RetVal = Convert.ToInt32(DataAccess.SqlHelper.ExecuteNonQuery(DataAccess.DSN.Connection("GVConnectionString"), CommandType.Text, Query));
        }
       


        public static void InsertDonarSchoolDetails(int CountryID, int StateID, int DistrictID, int LocationID, int SchoolID2, int UserID)
        {
            string Query = "";
            Query = Query + "Insert into SchoolDonarsDetails (CountryID,StateID,DistrictID,LocationID,SchoolID,UserID) values (" + CountryID + "," + StateID + "," + DistrictID + "," + LocationID + ", " + SchoolID2 + ", " + UserID + ")";
            int RetVal = 0;
            RetVal = Convert.ToInt32(DataAccess.SqlHelper.ExecuteNonQuery(DataAccess.DSN.Connection("GVConnectionString"), CommandType.Text, Query));
        }

        public static int InsertSchoolProfile(int SchoolID2,string Dmaker, string Dmakercontact, string Email, string Curriculum, string Noofstudents, string Noofgirls, string Noofgirls_2, string Noofteachers, string Typeofschool, string Avgschoolfee, string Geoinfo, string Socio, string Studentfamilyincome, string Noofcomputers, bool dohaveonlineclass, bool dohavesmartclass)
        {

            int RetVal = Convert.ToInt32(SqlHelper.ExecuteScalar(DSN.Connection("GVConnectionString"), "InsertSchool_Profile", SchoolID2, Email, Curriculum, Dmaker, Dmakercontact, Avgschoolfee, Noofstudents, Noofteachers, Noofgirls, Typeofschool, Noofcomputers, Geoinfo, Socio, dohaveonlineclass, dohavesmartclass));
            //int RetVal = 0;
            //RetVal = Convert.ToInt32(DataAccess.SqlHelper.ExecuteNonQuery(DataAccess.DSN.Connection("GVConnectionString"), CommandType.Text, Query));
            return RetVal;
        }
    }
}