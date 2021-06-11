
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using DataAccess;
using System.Configuration;
using System;

namespace TLW.DAL
{
    public class UserProfile
    {
        

        #region UserProfile SelectAll
        public static DataSet UserProfile_SelectAll()
        {
            DataSet ds = null;
            try
            {
                ds= SqlHelper.ExecuteDataset(DSN.Connection("TLWConnectionString"), "UserProfile_SelectAll");
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return ds;
        }
        #endregion

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


       

        #region UserProfile InsertRow
        public static bool UserProfile_InsertRow( string Name, string EmailAddress, string ContactPerson, string ContactNumber, int SponserTypeID, int UserTypeID, DateTime RegisteredDate, int CountryID, int StateID, int CityID, string Address, string Pincode, bool Status)
        {
            bool RetVal = false;
            try
            {
                int i = SqlHelper.ExecuteNonQuery(DSN.Connection("GVConnectionString"), "UserProfile_InsertRow", Name, EmailAddress, ContactPerson, ContactNumber, SponserTypeID, UserTypeID, RegisteredDate, CountryID, StateID, CityID, Address, Pincode, Status);
                if (i > 0) RetVal = true;               
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return RetVal;
        }
        #endregion

        #region UserProfile UpdateRow
        public static bool UserProfile_UpdateRow(int UserID,string Name,string EmailAddress,string ContactPerson,string ContactNumber,int SponserTypeID,int UserTypeID,DateTime RegisteredDate,int CountryID,int StateID,int CityID,string Address,string Pincode,bool Status)
        {
            bool RetVal = false;
            try
            {
                int i = SqlHelper.ExecuteNonQuery(DSN.Connection("GVConnectionString"), "UserProfile_UpdateRow", UserID, Name, EmailAddress, ContactPerson, ContactNumber, SponserTypeID, UserTypeID, RegisteredDate, CountryID, StateID, CityID, Address, Pincode, Status);
                if (i > 0) RetVal = true;               
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return RetVal;
        }
        #endregion

        #region UserRegister SelectRow
        public static SqlDataReader UserRegister_SelectRow(long UserID)
        {
            SqlDataReader dr = null;
            try
            {
                dr = SqlHelper.ExecuteReader(DSN.Connection("GVConnectionString"), "UserRegister_SelectRow", UserID);
            }
            catch (Exception ex)
            {
               // TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return dr;
        }
        #endregion
        #region UserCredentials InsertRow
        public static bool UserCredentials_InsertRow(long UserID, string Password, DateTime CreatedDate, DateTime LastModifiedDate,bool status)
        {
            bool RetVal = false;
            try
            {
                int i = SqlHelper.ExecuteNonQuery(DSN.Connection("GVConnectionString"), "UserCredentials_InsertRow", UserID, TLW.Common.Cryptography.Encrypt(Password), CreatedDate, LastModifiedDate,status);
                if (i > 0) RetVal = true;
            }
            catch (Exception ex)
            {
               // TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return RetVal;
        }
        #endregion


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


        public static bool UserRegister_UpdateRow(long UserID, string Name, string ContactPerson, string ContactNumber, string Address, string pincode,int StateID,int CountryID)
        {
            bool RetVal = false;
            try
            {
                int i = SqlHelper.ExecuteNonQuery(DSN.Connection("GVConnectionString"), "UserProfile_UpdateRow", UserID, Name, ContactPerson, ContactNumber, Address, pincode,StateID,CountryID);
                if (i > 0) RetVal = true;
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return RetVal;
        }

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

        public static string CheckUserExist(string UserName)
        {
            string ds=string.Empty;
            try
            {

                ds = SqlHelper.ExecuteScalar(DSN.Connection("GVConnectionString"), "[Package_Status]", UserName).ToString();
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return ds;
        }

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
    }
}