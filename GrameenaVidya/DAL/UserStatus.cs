
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
    public class UserStatus
    {

        #region UserStatus SelectAll
        public static DataSet UserStatus_SelectAll()
        {
            DataSet ds = null;
            try
            {
                ds= SqlHelper.ExecuteDataset(DSN.Connection("TLWConnectionString"), "UserStatus_SelectAll");
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return ds;
        }
        #endregion

        #region UserStatus SelectRow
        public static SqlDataReader UserStatus_SelectRow(int UserID)
        {
            SqlDataReader dr = null;
            try
            {
                dr= SqlHelper.ExecuteReader(DSN.Connection("TLWConnectionString"), "UserStatus_SelectRow", UserID );
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return dr;
        }
        #endregion

        #region UserStatus InsertRow
        public static bool UserStatus_InsertRow( int UserID, bool IsActivated, bool MobileActivated, bool EmailActivated, DateTime CreatedDate, DateTime LastModifiedDate)
        {
            bool RetVal = false;
            try
            {
                int i= SqlHelper.ExecuteNonQuery(DSN.Connection("TLWConnectionString"), "UserStatus_InsertRow",  UserID, IsActivated, MobileActivated, EmailActivated, CreatedDate, LastModifiedDate);
                if (i > 0) RetVal = true;               
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return RetVal;
        }
        #endregion

        #region UserStatus UpdateRow
        public static bool UserStatus_UpdateRow(int UserID,bool IsActivated,bool MobileActivated,bool EmailActivated,DateTime CreatedDate,DateTime LastModifiedDate)
        {
            bool RetVal = false;
            try
            {
                int i= SqlHelper.ExecuteNonQuery(DSN.Connection("TLWConnectionString"), "UserStatus_UpdateRow",  UserID, IsActivated, MobileActivated, EmailActivated, CreatedDate, LastModifiedDate);
                if (i > 0) RetVal = true;               
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return RetVal;
        }
        #endregion
    }
}