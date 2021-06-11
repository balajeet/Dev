
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
    public class UserLogin
    {

        #region UserLogin SelectAll
        public static DataSet UserLogin_SelectAll()
        {
            DataSet ds = null;
            try
            {
                ds= SqlHelper.ExecuteDataset(DSN.Connection("TLWConnectionString"), "UserLogin_SelectAll");
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return ds;
        }
        #endregion

        #region UserLogin SelectRow
        public static SqlDataReader UserLogin_SelectRow(int UserLogInID)
        {
            SqlDataReader dr = null;
            try
            {
                dr= SqlHelper.ExecuteReader(DSN.Connection("TLWConnectionString"), "UserLogin_SelectRow", UserLogInID );
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return dr;
        }
        #endregion

        #region UserLogin InsertRow
        public static bool UserLogin_InsertRow( int UserID, DateTime LogInDate, DateTime LogOutDate, string Session, string IPAddress)
        {
            bool RetVal = false;
            try
            {
                int i= SqlHelper.ExecuteNonQuery(DSN.Connection("TLWConnectionString"), "UserLogin_InsertRow",  UserID, LogInDate, LogOutDate, Session, IPAddress);
                if (i > 0) RetVal = true;               
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return RetVal;
        }
        #endregion

        #region UserLogin UpdateRow
        public static bool UserLogin_UpdateRow(int UserLogInID,int UserID,DateTime LogInDate,DateTime LogOutDate,string Session,string IPAddress)
        {
            bool RetVal = false;
            try
            {
                int i= SqlHelper.ExecuteNonQuery(DSN.Connection("TLWConnectionString"), "UserLogin_UpdateRow",  UserLogInID, UserID, LogInDate, LogOutDate, Session, IPAddress);
                if (i > 0) RetVal = true;               
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return RetVal;
        }
        #endregion

        #region UserLogIn InsertRow
        public static bool UserLogIn_InsertSessionDetials(long UserID, DateTime LogInDate, string Session, string IPAddress)
        {
            bool RetVal = false;
            try
            {
                int i = SqlHelper.ExecuteNonQuery(DSN.Connection("GVConnectionString"), "UserLogIn_InsertSessionDetails", UserID, LogInDate, Session, IPAddress);
                if (i > 0) RetVal = true;
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return RetVal;
        }
        #endregion

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
    }
}