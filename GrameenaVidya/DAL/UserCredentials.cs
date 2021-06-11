
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
    public class UserCredentials
    {

        #region UserCredentials SelectAll
        public static DataSet UserCredentials_SelectAll()
        {
            DataSet ds = null;
            try
            {
                ds= SqlHelper.ExecuteDataset(DSN.Connection("TLWConnectionString"), "UserCredentials_SelectAll");
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return ds;
        }
        #endregion

        #region UserCredentials SelectRow
        public static SqlDataReader UserCredentials_SelectRow(int UserCredentialID)
        {
            SqlDataReader dr = null;
            try
            {
                dr = SqlHelper.ExecuteReader(DSN.Connection("GVConnectionString"), "UserCredentials_SelectRow", UserCredentialID);
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return dr;
        }
        #endregion

        #region UserCredentials InsertRow
        public static bool UserCredentials_InsertRow( int UserID, string Password, DateTime CreatedDate, DateTime LastModifiedDate,bool status)
        {
            bool RetVal = false;
            try
            {
                int i = SqlHelper.ExecuteNonQuery(DSN.Connection("GVConnectionString"), "UserCredentials_InsertRow", UserID, Password, CreatedDate, LastModifiedDate,true);
                if (i > 0) RetVal = true;               
            }
            catch (Exception ex)
            {
               // TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return RetVal;
        }
        #endregion

        #region UserCredentials UpdateRow
        public static bool UserCredentials_UpdateRow(int UserCredentialID,int UserID,string Password,DateTime CreatedDate,DateTime LastModifiedDate)
        {
            bool RetVal = false;
            try
            {
                int i= SqlHelper.ExecuteNonQuery(DSN.Connection("TLWConnectionString"), "UserCredentials_UpdateRow",  UserCredentialID, UserID, Password, CreatedDate, LastModifiedDate);
                if (i > 0) RetVal = true;               
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return RetVal;
        }
        #endregion

        #region Check User Authentication
        public static bool UserCredentials_UserAuthentication(long UserID, string Password)
        {
            bool RetVal = false;
            try
            {

                string i = SqlHelper.ExecuteScalar(DSN.Connection("GVConnectionString"), "UserCredentials_Authentication", UserID).ToString();
                if (i == TLW.Common.Cryptography.Encrypt(Password).ToString())
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

        public static bool UserLogIn_CloseAllSessionDetails(long UserID)
        {
            bool RetVal = false;
            try
            {
                int i = SqlHelper.ExecuteNonQuery(DSN.Connection("TLWConnectionString"), "UserLogIn_CloseSessionDetails", UserID);
                if (i > 0) RetVal = true;
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return RetVal;
        }
       
    }
}