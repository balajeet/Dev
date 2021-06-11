using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace GrameenaVidya.BLL
{
    public class Users
    {

        #region Private Variables
        private long _UserID;
        private string _Name;
        private string _EmailAddress;
        private string _ContactPerson;
        private string _ContactNumber;
        private int _SponserTypeID;
        private int _UserTypeID;
        private DateTime _RegisteredDate;
        private int _CountryID;
        private int _StateID;
        private int _CityID;
        private string _Address;
        private string _Pincode;
        private string _Location;
        private string _State;
        private bool _Status;
        private string _UserPassword;
        private string _CountryName;
        private string _StateName;
        private string _PAN;

        #endregion

        #region Public Properties
        public long UserID
        {
            get { return _UserID; }
            set { _UserID = value; }
        }
        public string Name
        {
            get { return _Name; }
            set { _Name = value; }
        }

        public string CountryName
        {
            get { return _CountryName; }
            set { _CountryName = value; }
        }

        
        public string StateName
        {
            get { return _StateName; }
            set { _StateName = value; }
        }


        public string EmailAddress
        {
            get { return _EmailAddress; }
            set { _EmailAddress = value; }
        }
        public string Location
        {
            get { return _Location; }
            set { _Location = value; }
        }
        public string State
        {
            get { return _State; }
            set { _State = value; }
        }
        public string ContactPerson
        {
            get { return _ContactPerson; }
            set { _ContactPerson = value; }
        }
        public string ContactNumber
        {
            get { return _ContactNumber; }
            set { _ContactNumber = value; }
        }
        public int SponserTypeID
        {
            get { return _SponserTypeID; }
            set { _SponserTypeID = value; }
        }
        public int UserTypeID
        {
            get { return _UserTypeID; }
            set { _UserTypeID = value; }
        }
        public DateTime RegisteredDate
        {
            get { return _RegisteredDate; }
            set { _RegisteredDate = value; }
        }
        public int CountryID
        {
            get { return _CountryID; }
            set { _CountryID = value; }
        }
        public int StateID
        {
            get { return _StateID; }
            set { _StateID = value; }
        }
        public int CityID
        {
            get { return _CityID; }
            set { _CityID = value; }
        }
        public string Address
        {
            get { return _Address; }
            set { _Address = value; }
        }
        public string Pincode
        {
            get { return _Pincode; }
            set { _Pincode = value; }
        }
        public bool Status
        {
            get { return _Status; }
            set { _Status = value; }
        }
        public string UserPassword
        {
            get { return _UserPassword; }
            set { _UserPassword = value; }
        }
        public string PAN
        {
            get { return _PAN; }
            set { _PAN = value; }
        }
        #endregion


        public static Users UsersGetUserDetails(string UserName)
        {
            DataTable dt = GrameenaVidya.DAL.Users.Users_GetUserDetails(UserName);
               
            Users userregister = new Users();

            if (dt.Rows.Count > 0)
            {
                userregister.UserID = (long)dt.Rows[0]["UserID"];
                userregister.Name = (string)dt.Rows[0]["Name"];
                userregister.EmailAddress = (string)dt.Rows[0]["EmailAddress"];
                userregister.ContactNumber = (string)dt.Rows[0]["ContactNumber"];
                userregister.RegisteredDate = (DateTime)dt.Rows[0]["RegisteredDate"];
                userregister.Address = (string)dt.Rows[0]["Address"];             
                string PWD = (string)dt.Rows[0]["UserPassword"];
                userregister.UserPassword = GrameenaVidya.Common.Cryptography.Decrypt(PWD);
                
                userregister.Status = (bool)dt.Rows[0]["Status"];
                
            }
            else
            {
                return null;
            }
            dt.Dispose();
            return userregister;
        }

        public static string UserLogIn_InsertSessionDetails(long UserID)
        {
            string SessionID = System.Guid.NewGuid().ToString().Replace("-", "");
            bool RetVal = GrameenaVidya.DAL.Users.UserLogIn_InsertSessionDetials(UserID, DateTime.Now, SessionID, "");
                if (RetVal == true)
                return SessionID;

            return null;
        }


        public static DataSet GetUserLoginDetails(string username)
        {
            return GrameenaVidya.DAL.Users.GetUserLoginDetails(username);
               
        }

        public static bool UserCredentialsInsertRow(long UserID, string password, DateTime CreatedDate, DateTime LastModifiedDate, bool status)
        {
            return GrameenaVidya.DAL.Users.UserCredentials_InsertRow(UserID, password, CreatedDate, LastModifiedDate, status);
        }

        public static Users UserRegisterSelectRow(long UserID)
        {
            IDataReader dr = GrameenaVidya.DAL.Users.UserRegister_SelectRow(UserID);
              
            Users userregister = new Users();

            if (dr.Read())
            {
                userregister.UserID = (long)dr["UserID"];
                userregister.Name = (string)dr["Name"];
                userregister.EmailAddress = (string)dr["EmailAddress"];
                userregister.ContactNumber = (string)dr["ContactNumber"];
                userregister.Address = (string)dr["Address"];
                userregister.Pincode = (string)dr["Pincode"];
                userregister.Location = (string)dr["Location"];
                userregister.CountryName = (string)dr["CountryName"];
                if (dr["StateName"] != DBNull.Value)
                {
                    userregister.StateName = (string)dr["StateName"];
                
                }
                
                userregister.CountryID = (int)dr["CountryID"];
                userregister.StateID = (int)dr["StateID"];

            }
            dr.Close();
            return userregister;
        }

        public static bool CheckUserExists(string UserName)
        {
            return GrameenaVidya.DAL.Users.CheckFieldExist("UserProfile", "EmailAddress", UserName, "UserID", "0");

        }

        public static bool UserLogVerifySession(long UserID, string SessionID)
        {
            return GrameenaVidya.DAL.Users.UserLogIn_VerifySession(UserID, SessionID);
        }

        public static bool UserAuthentication(long UserID, string Password)
        {
            return GrameenaVidya.DAL.Users.UserAuthentication(UserID, Password);
            
        }

        public static bool UpdatePasswordDetails(int UserId, string Password)
        {
            return GrameenaVidya.DAL.Users.UpdatePasswordDetails(UserId, Password);
            
        }
        public static Users UserProfileSelectRow(int UserID)
        {
            IDataReader dr = GrameenaVidya.DAL.Users.UserProfile_SelectRow(UserID);
            Users userprofile = new Users();

            if (dr.Read())
            {
                userprofile.UserID = (long)dr["UserID"];
                userprofile.Name = (string)dr["Name"];
                userprofile.EmailAddress = (string)dr["EmailAddress"];
                userprofile.ContactNumber = (string)dr["ContactNumber"];
                userprofile.RegisteredDate = (DateTime)dr["RegisteredDate"];
                userprofile.CountryName = (string)dr["CountryName"];
                if (dr["StateName"] != DBNull.Value) {
                    userprofile.State = (string)dr["StateName"];
                }
               
                userprofile.Location = (string)dr["Location"];
                userprofile.Address = (string)dr["Address"];
                userprofile.Pincode = (string)dr["Pincode"];
                userprofile.Status = (bool)dr["Status"];
            }
            return userprofile;
        }

        public static DataSet GetSubScriptionDetails(int UserID)
        {
            return GrameenaVidya.DAL.Donate.GetSubScriptionDetails(UserID);
        }



        public static Users UserProfileSelectRow(long UserID)
        {
            IDataReader dr = GrameenaVidya.DAL.Users.UserProfile_SelectRow(UserID);
            Users userprofile = new Users();

            while (dr.Read())
            {
                if (dr.IsDBNull(dr.GetOrdinal("UserID")) == false) userprofile.UserID = (long)dr["UserID"];
                if (dr.IsDBNull(dr.GetOrdinal("Name")) == false) userprofile.Name = (string)dr["Name"];
                if (dr.IsDBNull(dr.GetOrdinal("Address")) == false) userprofile.Address = (string)dr["Address"];
                if (dr.IsDBNull(dr.GetOrdinal("Location")) == false) userprofile.Location = (string)dr["Location"];
                if (dr.IsDBNull(dr.GetOrdinal("StateID")) == false) userprofile.StateID = (int)dr["StateID"];
                if (dr.IsDBNull(dr.GetOrdinal("CountryID")) == false) userprofile.CountryID = (int)dr["CountryID"];
                if (dr.IsDBNull(dr.GetOrdinal("StateName")) == false) userprofile.State = (string)dr["StateName"];
                if (dr.IsDBNull(dr.GetOrdinal("CountryName")) == false) userprofile.CountryName = (string)dr["CountryName"];
                if (dr.IsDBNull(dr.GetOrdinal("PinCode")) == false) userprofile._Pincode = (string)dr["PinCode"];


            }
            dr.Close();

            return userprofile;
        }

        public static DataSet GetSubscriptionDetails(long UserID)
        {
            return GrameenaVidya.DAL.Users.GetSubscritionDetails(UserID);
        }



        public static bool UserRegisterUpdateRow(long UserID, string Name, string ContactPerson, string ContactNumber, string Address, string pincode, int StateID, int CountryID)
        {
            return GrameenaVidya.DAL.Users.UserRegister_UpdateRow(UserID, Name, ContactPerson, ContactNumber, Address, pincode, StateID, CountryID);
        }
    }
}