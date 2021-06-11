using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using DataAccess;
using System.Data;

namespace GrameenaVidya.DAL
{
    public class Common
    {

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
    }
}