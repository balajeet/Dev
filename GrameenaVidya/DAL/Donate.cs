using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DataAccess;
using System.Data;
using System.Data.SqlClient;

namespace GrameenaVidya.DAL
{
    public class Donate
    {
        public static string InsertDonarDetails(string DonarName, string Email, string ContactNumber, int SponserType, int UserType, int CountryID, int DonarStateID, string location, string Address, string pincode, int DonateMode, int SchoolType, int AdoptType, int paymentMode, string Amount, DateTime ExpiryDate, int ContributionID, int SchoolID, int StateID, int DistrictID, string PrincipalName, string SSchoolName, string SMobileNum, int SDistrict, int SState)
        {
            string RetVal = null;
            try
            {
                RetVal = (string)SqlHelper.ExecuteScalar(DSN.Connection("GVConnectionString"), "Insert_Donar_Details", DonarName, Email, ContactNumber, SponserType, UserType, CountryID, DonarStateID, location, Address, pincode, DonateMode, SchoolType, AdoptType, paymentMode, Amount, ExpiryDate, ContributionID, SchoolID, StateID, DistrictID, PrincipalName, SSchoolName, SMobileNum, SDistrict, SState);
                // if (i > 0) RetVal = true;
            }
            catch (Exception ex)
            {
                //  TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return RetVal;
        }

        public static DataSet  GetCampainDetails(int id)
        {
            DataSet ds = null;
            try
            {
                ds = SqlHelper.ExecuteDataset(DSN.Connection("GVConnectionString"), "GetCampainDetails",id);
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return ds;
        }

        //

        public static DataSet GetFundRaisedData(int id)
        {
            DataSet ds = null;
            try
            {
                ds = SqlHelper.ExecuteDataset(DSN.Connection("GVConnectionString"), "GetFundRaisedData", id);
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return ds;
        }

        public static string InsertExistingDonarDetails(int UserID, string DonarName, string ContactNumber, int SponserType, int UserType, int CountryID, int DonarStateID, string location, string Address, string pincode, int DonateMode, int SchoolType, int AdoptType, int paymentMode, string Amount, DateTime ExpiryDate, int ContributionID, int SchoolID, int StateID, int DistrictID, string principalname, string SSchoolname, string SMobileNum, int sDistrict, int SState)
        {
            string RetVal = null;
            try
            {
                RetVal = (string)SqlHelper.ExecuteScalar(DSN.Connection("GVConnectionString"), "[InsertExisting_Donar_Details]", UserID, DonarName, ContactNumber, SponserType, UserType, CountryID, DonarStateID, location, Address, pincode, DonateMode, SchoolType, AdoptType, paymentMode, Amount, ExpiryDate, ContributionID, SchoolID, StateID, DistrictID, principalname, SSchoolname, SMobileNum, sDistrict, SState);
                // if (i > 0) RetVal = true;
            }
            catch (Exception ex)
            {
                //  TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return RetVal;
        }

       

        public static string InsertExistingCDonarDetails(int UserID, string DonarName, string ContactNumber, int SponserType, int UserType, int CountryID, int DonarStateID, string location, string Address, string pincode, int DonateMode, int SchoolType, int AdoptType, int paymentMode, string Amount, DateTime ExpiryDate, int ContributionID, int SchoolID, int StateID, int DistrictID, string principalname, string SSchoolname, string SMobileNum, int sDistrict, int SState, string CampaignName, string CampaignDate, string CExpiryDate, string CampaignImg, string CampaignMessage)
        {
            string RetVal = null;
            try
            {
                RetVal = (string)SqlHelper.ExecuteScalar(DSN.Connection("GVConnectionString"), "[InsertExistingCampaign_Donar_Details]", UserID, DonarName, ContactNumber, SponserType, UserType, CountryID, DonarStateID, location, Address, pincode, DonateMode, SchoolType, AdoptType, paymentMode, Amount, ExpiryDate, ContributionID, SchoolID, StateID, DistrictID, principalname, SSchoolname, SMobileNum, sDistrict, SState, CampaignName, CampaignDate, CExpiryDate, CampaignImg, CampaignMessage);
                // if (i > 0) RetVal = true;
            }
            catch (Exception ex)
            {
                //  TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return RetVal;
        }

        public static DataSet GetDonationsList()
        {
            DataSet ds = null;
            try
            {
                ds = SqlHelper.ExecuteDataset(DSN.Connection("GVConnectionString"), "GetDonationDetails");
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return ds;
        }

        public static string Insert_NewTransactionDetails(string DonarName, string Email, string ContactNumber, int SponserType, int UserType, int CountryID, int DonarStateID, string location, string Address, string pincode, int AdoptTypeID, int School_ContributionID, int Units, int Years, string Amount, int Sponser_ContributionID, int SchoolID, int DonateMode, int PaymentMode, DateTime ExpiryDate,string principalname,string SchoolName,string Mobilenumber,int StateID,int DistrictID)
        {
            string RetVal = null;
            try
            {
                RetVal = (string)SqlHelper.ExecuteScalar(DSN.Connection("GVConnectionString"), "Insert_Transaction_Details", DonarName, Email, ContactNumber, SponserType, UserType, CountryID, DonarStateID, location, Address, pincode, AdoptTypeID, School_ContributionID, Units, Years, Amount, Sponser_ContributionID, SchoolID, DonateMode, PaymentMode, ExpiryDate, principalname, SchoolName, Mobilenumber, StateID, DistrictID);
                // if (i > 0) RetVal = true;
            }
            catch (Exception ex)
            {
                //  TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return RetVal;
        }

        public static string Insert_ExistingTransactionDetails(int UserID, string DonarName, string ContactNumber, int SponserType, int UserType, int CountryID, int DonarStateID, string location, string Address, string pincode, int AdoptTypeID, int School_ContributionID, int Units, int Years, string Amount, int Sponser_ContributionID, int SchoolID, int DonateMode, int PaymentMode, DateTime ExpiryDate, string PrincipalName, string SchoolName, string MobileNumber, int StateID, int DistrictID)
        {
            string RetVal = null;
            try
            {
                RetVal = (string)SqlHelper.ExecuteScalar(DSN.Connection("GVConnectionString"), "[Insert_ExistingUser_Transaction_Details]", UserID, DonarName, ContactNumber, SponserType, UserType, CountryID, DonarStateID, location, Address, pincode, AdoptTypeID, School_ContributionID, Units, Years, Amount, Sponser_ContributionID, SchoolID, DonateMode, PaymentMode, ExpiryDate, PrincipalName, SchoolName, MobileNumber, StateID, DistrictID);
                // if (i > 0) RetVal = true;
            }
            catch (Exception ex)
            {
                //  TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return RetVal;
        }

        public static string InsertCampaignDetails(int _UserID, string CampaignName, DateTime CStartDate, DateTime CExpiryDate, string Message, decimal GoalAmount, decimal Amount)
        {
            string RetVal = null;
            try
            {
                RetVal = (string)SqlHelper.ExecuteScalar(DSN.Connection("GVConnectionString"), "[Insert_Campaign_Details]", _UserID, CampaignName, CStartDate, CExpiryDate, Message, GoalAmount, Amount);
                // if (i > 0) RetVal = true;
            }
            catch (Exception ex)
            {
                //  TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return RetVal;
        }

        public static string UpdateCampaignImage(int _CampID, string CampPath)
        {
            string RetVal = null;
            try
            {
                RetVal = (string)SqlHelper.ExecuteScalar(DSN.Connection("GVConnectionString"), "Update_Campaign_Image", _CampID, CampPath);
                // if (i > 0) RetVal = true;
            }
            catch (Exception ex)
            {
                //  TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return RetVal;
        }

        public static DataSet GetSubScriptionDetails(int UserID)
        {
            DataSet ds = null;
            try
            {
                ds = SqlHelper.ExecuteDataset(DSN.Connection("GVConnectionString"), "[Packages_GetPackAgeDetails]", UserID);
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return ds;
        }

        public static DataSet GetDonationsList_Donar(int UserID)
        {
            DataSet ds = null;
            try
            {
                string Query = "";
               // Query = Query + "Select S.SchoolName as SchoolName,PackageAmount,StateName,D.DonationDate as Transaction_Date from Donations D left join  dbo.SchoolDonarsDetails Sd On SD.UserID=D.UserID left join dbo.Schools S ON S.SchoolID=SD.SchoolID left join dbo.States ST On ST.StateID=Sd.StateID where D.UserID=" + UserID + "";
                ds = SqlHelper.ExecuteDataset(DSN.Connection("GVConnectionString"), "GetDonationDetails_ByDonar", UserID);

                //ds = SqlHelper.ExecuteDataset(DSN.Connection("GVConnectionString"), CommandType.Text, Query);
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return ds;
        }

        public static string Insert_ExistingCampaign_NewUser(string DonarName, string Email, string ContactNumber, int SponserType, int UserType, int CountryID, int DonarStateID, string location, string Address, string pincode, int AdoptTypeID, int School_ContributionID, int Units, int Years, string Amount, int Sponser_ContributionID, int SchoolID, int DonateMode, int PaymentMode, DateTime ExpiryDate, int CID)
        {
            string RetVal = null;
            try
            {
                RetVal = (string)SqlHelper.ExecuteScalar(DSN.Connection("GVConnectionString"), "InsertCampaign_Existing_NewUser", DonarName, Email, ContactNumber, SponserType, UserType, CountryID, DonarStateID, location, Address, pincode, AdoptTypeID, School_ContributionID, Units, Years, Amount, Sponser_ContributionID, SchoolID, DonateMode, PaymentMode, ExpiryDate,CID);
                // if (i > 0) RetVal = true;
            }
            catch (Exception ex)
            {
                //  TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return RetVal;
        }

        public static string Insert_ExistingCampaign_ExistingUser(int UserID, string DonarName, string ContactNumber, int SponserType, int UserType, int CountryID, int DonarStateID, string location, string Address, string pincode, int AdoptTypeID, int School_ContributionID, int Units, int Years, string Amount, int Sponser_ContributionID, int SchoolID, int DonateMode, int PaymentMode, DateTime ExpiryDate, int CID)
        {
            string RetVal = null;
            try
            {
                RetVal = (string)SqlHelper.ExecuteScalar(DSN.Connection("GVConnectionString"), "Campaigns_ExistingUser", UserID, DonarName, ContactNumber, SponserType, UserType, CountryID, DonarStateID, location, Address, pincode, AdoptTypeID, School_ContributionID, Units, Years, Amount, Sponser_ContributionID, SchoolID, DonateMode, PaymentMode, ExpiryDate, CID);
                // if (i > 0) RetVal = true;
            }
            catch (Exception ex)
            {
                //  TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return RetVal;
        }

        public static DataSet GetCampaignDonarNames(int ID)
        {
            DataSet ds = null;
            try
            {
                ds = SqlHelper.ExecuteDataset(DSN.Connection("GVConnectionString"), "ExistingCampaing_Donars", ID);
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return ds;
        }
        
        public static DataSet GetStudents()
        {
            DataSet ds = null;
            try
            {
                ds = SqlHelper.ExecuteDataset(DSN.Connection("GVConnectionString"), CommandType.Text, "Select StudentID, FirstName + LastName as [StudentName], Qualification as Class, Amount from StudentsData");
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return ds;
        }

        public static DataSet GetCountries()
        {
            DataSet ds = null;
            try
            {
                ds = SqlHelper.ExecuteDataset(DSN.Connection("GVConnectionString"), CommandType.Text, "Select * from Countries");
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return ds;
        }

        public static DataSet GetStates(int CountryID)
        {
            DataSet ds = null;
            try
            {
                ds = SqlHelper.ExecuteDataset(DSN.Connection("GVConnectionString"), CommandType.Text, "Select * from States Where CountryID=" + CountryID);
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return ds;
        }

        public static int Insert_Donation(int PackageTypeID, string PackageID, double PackageAmount, int UserIDLast, string PaymentMode)
        {
            int RetVal = 0;
            try
            {
                string query = "Insert Into Donations (DonationDate, PackageTypeID, PackageID, PackageAmount, UserID, PaymentMode, PaymentStatus, CreatedDate) Values ('" + DateTime.Now.ToString("dd-MMM-yyyy") + "'," + PackageTypeID + ",'" + PackageID + "'," + PackageAmount + "," + UserIDLast + ", '" + PaymentMode + "', 0,'01-Jan-2019')";
                RetVal = (int)SqlHelper.ExecuteNonQuery(DSN.Connection("GVConnectionString"), CommandType.Text, query);

                if (RetVal > 0)
                {
                    query = "Select max(DonationID) from Donations";
                    RetVal = (int)SqlHelper.ExecuteScalar(DSN.Connection("GVConnectionString"), CommandType.Text, query);
                    return RetVal;
                }
                // if (i > 0) RetVal = true;
            }
            catch (Exception ex)
            {
                throw;
            }
            return RetVal;
        }

        public static bool Insert_Enquiry(string FirstName, string Email, string Mobile, string EnquiryType, string Message)
        {
            int RetVal = 0;
            try
            {
                SqlParameter[] param = new SqlParameter[7];
                param[0] = new SqlParameter("@EnquiryDate", DateTime.Now.ToString("dd-MMM-yyyy"));
                param[1] = new SqlParameter("@FirstName", FirstName);
                param[2] = new SqlParameter("@Email", Email);
                param[3] = new SqlParameter("@Mobile", Mobile);
                param[4] = new SqlParameter("@EnquiryType", EnquiryType);
                param[5] = new SqlParameter("@Message", Message);
                param[6] = new SqlParameter("@CreatedDate", DateTime.Now.ToString("dd-MMM-yyyy hh:mm:ss"));


                string query = "Insert Into Enquires Values (@EnquiryDate, @FirstName, @Email, @Mobile, @EnquiryType, @Message, @CreatedDate)";
                RetVal = (int)SqlHelper.ExecuteNonQuery(DSN.Connection("GVConnectionString"), CommandType.Text, query, param);

                if (RetVal > 0)
                {
                   
                    return true;
                }
                
            }
            catch (Exception ex)
            {
                throw;
                
            }
            return false;
        }

        public static DataSet GetStudentsView(string Type)
        {
            DataSet ds = null;
            try
            {
                ds = SqlHelper.ExecuteDataset(DSN.Connection("GVConnectionString"), "GetStudents_View", Type);
            }
            catch (Exception ex)
            {
                //TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
            }
            return ds;
        }
    }
}