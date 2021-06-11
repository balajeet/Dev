using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using DataAccess;
using System.Data.SqlClient;
using UskyAdmin.DAL;
using GrameenaVidya.BLL;

namespace GrameenaVidya.DAL
{
    public class Users
    {


        #region Users_GetDetails
        public static DataTable Users_GetUserDetails(string UserName)
        {
            DataTable dt = null;
            try
            {
                dt = SqlHelper.ExecuteDataset(DSN.Connection("GVConnectionString"), "Users_GetUserDetails", UserName).Tables[0];
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return dt;
        }
        #endregion

        #region UserLogIn InsertRow
        public static bool UserLogIn_InsertSessionDetials(long UserID, DateTime LogInDate, string Session, string IPAddress)
        {
            bool RetVal = false;
            try
            {
                int i = SqlHelper.ExecuteNonQuery(DSN.Connection("GVConnectionString"), "UserLogIn_InsertSessionDetails", UserID, LogInDate, Session, IPAddress);
                if (i < 0) RetVal = true;
                //if (i >= 1) RetVal = true;
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return RetVal;
        }
        #endregion

        public static DataSet GetUserLoginDetails(string username)
        {
            DataSet ds = null;
            try
            {
                ds = SqlHelper.ExecuteDataset(DSN.Connection("GVConnectionString"), "[Profile_GetUserDetails]", username.Trim());
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return ds;
        }

        #region UserCredentials InsertRow
        public static bool UserCredentials_InsertRow(long UserID, string Password, DateTime CreatedDate, DateTime LastModifiedDate, bool status)
        {
            bool RetVal = false;
            try
            {
                int i = SqlHelper.ExecuteNonQuery(DSN.Connection("GVConnectionString"), "UserCredentials_InsertRow", UserID, GrameenaVidya.Common.Cryptography.Encrypt(Password), CreatedDate, LastModifiedDate, status);
                if (i > 0) RetVal = true;
            }
            catch (Exception ex)
            {
                // TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            
            return RetVal;
        }
        #endregion

        public static SqlDataReader UserRegister_SelectRow(long UserID)
        {
            SqlDataReader dr = null;
            try
            {
                dr = SqlHelper.ExecuteReader(DSN.Connection("GVConnectionString"), "UserProfile_SelectRow", UserID);
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return dr;
        }

        public static bool CheckFieldExist(string TableName, string FieldName, string FieldValue, string KeyField, string KeyValue)
        {
            bool RetVal = false;
            try
            {
                SqlParameter[] param = new SqlParameter[2];
                param[0] = new SqlParameter("@FieldValue", FieldValue);
                param[1] = new SqlParameter("@KeyValue", KeyValue);

                int i = (int)SqlHelper.ExecuteScalar(DSN.Connection("GVConnectionString"), CommandType.Text,
                    "Select Count(*) from " + TableName + " Where " + FieldName + "=@FieldValue and " + KeyField + "!= @KeyValue", param);
                if (i >= 1) RetVal = true;

            }
            catch (Exception ex)
            {
                // TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return RetVal;

        }


        #region UserLogIn Verify Session
        public static bool UserLogIn_VerifySession(long UserID, string SessionID)
        {
            bool RetVal = false;
            try
            {
                int i = (int)SqlHelper.ExecuteScalar(DSN.Connection("GVConnectionString"), "UserLogIn_VerifySession", UserID, SessionID);
                if (i > 0) RetVal = true;
            }
            catch (Exception ex)
            {
               // TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return RetVal;
        }
        #endregion


        #region Check User Authentication
        public static bool UserAuthentication(long UserID, string Password)
        {
            bool RetVal = false;
            try
            {

                string i = SqlHelper.ExecuteScalar(DSN.Connection("GVConnectionString"), "UserCredentials_Authentication", UserID).ToString();
                if (i == GrameenaVidya.Common.Cryptography.Encrypt(Password).ToString())
                {
                    RetVal = true;
                }
            }
            catch (Exception ex)
            {
                // TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return RetVal;
        }
        #endregion


        public static bool UpdatePasswordDetails(int UserId, string Password)
        {
            bool RetVal = false;
            try
            {
                int i = SqlHelper.ExecuteNonQuery(DSN.Connection("GVConnectionString"), "DonarUpdate_DonarPassword", UserId, Password);
                if (i > 0) RetVal = true;
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return RetVal;
        }



        #region UserProfile SelectRow
        public static SqlDataReader UserProfile_SelectRow(int UserID)
        {
            SqlDataReader dr = null;
            try
            {
                dr = SqlHelper.ExecuteReader(DSN.Connection("GVConnectionString"), "UserProfile_SelectRow", UserID);
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return dr;
        }
        #endregion

        public static IDataReader UserProfile_SelectRow(long UserID)
        {
            SqlDataReader dr = null;
            try
            {
                dr = SqlHelper.ExecuteReader(DSN.Connection("GVConnectionString"), "UserProfile_SelectRow", UserID);
            }
            catch (Exception ex)
            {
                // TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return dr;
        }


        public static DataSet GetSubscritionDetails(long UserID)
        {
            DataSet ds = null;
            try
            {
                ds = SqlHelper.ExecuteDataset(DSN.Connection("GVConnectionString"), "[Package_Status]", UserID);
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return ds;
        }

        public static bool CheckFieldExisting(string TableName, string FieldName, string FieldValue, string KeyField, string KeyValue)
        {
            bool RetVal = false;
            try
            {
                SqlParameter[] param = new SqlParameter[2];
                param[0] = new SqlParameter("@FieldValue", FieldValue);
                param[1] = new SqlParameter("@KeyValue", KeyValue);

                int i = (int)SqlHelper.ExecuteScalar(DSN.Connection("GVConnectionString"), CommandType.Text,
                    "Select Count(*) from " + TableName + " Where " + FieldName + "=@FieldValue and " + KeyField + "= @KeyValue", param);
                if (i >= 1) RetVal = true;

            }
            catch (Exception ex)
            {
                // TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return RetVal;

        }

        public static bool UserRegister_UpdateRow(long UserID, string Name, string ContactPerson, string ContactNumber, string Address, string pincode, int StateID, int CountryID)
        {
            //bool RetVal = false;
            //try
            //{
            //    int i = SqlHelper.ExecuteNonQuery(DSN.Connection("GVConnectionString"), "UserProfile_UpdateRow", UserID, Name, ContactPerson, ContactNumber, Address, pincode, StateID, CountryID);
            //    if (i > 0) RetVal = true;
            //}
            //catch (Exception ex)
            //{
            //    //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            //}
            //return RetVal;
            string Query = "";
            Query = Query + "Update UserProfile set Name='" + Name + "' ,ContactPerson='" + ContactPerson + "',ContactNumber='" + ContactNumber + "', Address='" + Address + "', Pincode='" + pincode + "',CountryID=" + CountryID + ",StateID=" + StateID + " Where UserID=" + UserID + "";
            int RetVal = 0;
            RetVal = Convert.ToInt32(DataAccess.SqlHelper.ExecuteNonQuery(DataAccess.DSN.Connection("GVConnectionString"), CommandType.Text, Query));
            return true;
        }

        public static DataTable UploadStudent(Student student)
        {
            DataTable dt = null;
            dt = SqlHelper.ExecuteDataset(DSN.Connection("GVConnectionString"), "InsertStudent_Info", student.studentName, student.dob, student.grade, student.gender, student.Caste,
                student.Relegion, student.motherName, student.motheroccupation, student.fatherName, student.fatheroccupation, student.monthlyincome, student.familysize, student.address,
               student.school, student.hm, student.refer1, student.refer2, student.ImageFile, student.PdfFile,student.StateID,student.DistrictID,student.LocationID).Tables[0];
            return dt;
        }


        public static DataTable UploadSchool(SchoolDetails school)
        {
            DataTable dt = null;
            dt = SqlHelper.ExecuteDataset(DSN.Connection("GVConnectionString"), "InsertSchool_Info", school.SchoolName, school.DecisionMaker,school.dmakerContact, school.Address, school.Email, school.Curriculum,
                school.Strength, school.Nogirls, school.NoTeachers, school.SchoolType, school.Avgschoolfee, school.Socio, school.Nosmart, school.Nocomputers,
                school.ImageFile, school.PdfFile, school.StateID, school.DistrictID, school.LocationID).Tables[0];
            return dt;
        }
    }
}