using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace GrameenaVidya.BLL
{
    public class Donate
    {
        public static string InsertDonarDetails(string DonarName, string Email, string ContactNumber, int SponserType, int UserType, int CountryID, int DonarStateID, string location, string Address,string pincode, int DonateMode, int SchoolType, int AdoptType, int paymentMode, string Amount, DateTime ExpiryDate,int ContributionID, int SchoolID, int StateID, int DistrictID,string principalname,string SSchoolname,string SMobileNum,int sDistrict,int SState)
        {
            return GrameenaVidya.DAL.Donate.InsertDonarDetails(DonarName, Email, ContactNumber, SponserType, UserType, CountryID, DonarStateID, location, Address, pincode, DonateMode, SchoolType, AdoptType, paymentMode, Amount, ExpiryDate, ContributionID, SchoolID, StateID, DistrictID, principalname, SSchoolname, SMobileNum, sDistrict, SState);
        }

        public static DataSet GetCampainDetails(int id)
        {
            return GrameenaVidya.DAL.Donate.GetCampainDetails(id);
        }

        public static DataTable GetFundRaisedData(int id) 
        {
            return GrameenaVidya.DAL.Donate.GetFundRaisedData(id).Tables[0];
        }

        public static string InsertExistingDonarDetails(int UserID, string DonarName,string ContactNumber, int SponserType, int UserType, int CountryID, int DonarStateID, string location, string Address, string pincode, int DonateMode, int SchoolType, int AdoptType, int paymentMode, string Amount, DateTime ExpiryDate, int ContributionID, int SchoolID, int StateID, int DistrictID, string principalname, string SSchoolname, string SMobileNum, int sDistrict, int SState)
        {
            return GrameenaVidya.DAL.Donate.InsertExistingDonarDetails(UserID, DonarName, ContactNumber, SponserType, UserType, CountryID, DonarStateID, location, Address, pincode, DonateMode, SchoolType, AdoptType, paymentMode, Amount, ExpiryDate, ContributionID, SchoolID, StateID, DistrictID, principalname, SSchoolname, SMobileNum, sDistrict, SState);
        }

        

        public static string InsertExistingCDonarDetails(int UserID, string DonarName, string ContactNumber, int SponserType, int UserType, int CountryID, int DonarStateID, string location, string Address, string pincode, int DonateMode, int SchoolType, int AdoptType, int paymentMode, string Amount, DateTime ExpiryDate, int ContributionID, int SchoolID, int StateID, int DistrictID, string principalname, string SSchoolname, string SMobileNum, int sDistrict, int SState, string CampaignName, string CampaignDate, string CExpiryDate, string CampaignImg, string CampaignMessage)
        {
            return GrameenaVidya.DAL.Donate.InsertExistingCDonarDetails(UserID, DonarName, ContactNumber, SponserType, UserType, CountryID, DonarStateID, location, Address, pincode, DonateMode, SchoolType, AdoptType, paymentMode, Amount, ExpiryDate, ContributionID, SchoolID, StateID, DistrictID, principalname, SSchoolname, SMobileNum, sDistrict, SState,CampaignName,CampaignDate,CExpiryDate,CampaignImg,CampaignMessage);
        }

        //public static DataTable GetDonationsList()
        //{
        //    return GrameenaVidya.DAL.Donate.GetDonationsList().Tables[0];
        //}


        public static string Insert_NewTransactionDetails(string DonarName, string Email, string ContactNumber, int SponserType, int UserType, int CountryID, int DonarStateID, string location, string Address, string pincode, int AdoptTypeID, int School_ContributionID, int Units, int Years, string Amount, int Sponser_ContributionID, int SchoolID, int DonateMode, int PaymentMode, DateTime ExpiryDate,string principalname,string SchoolName,string Mobilenumber,int StateID,int DistrictID)
        {
            return GrameenaVidya.DAL.Donate.Insert_NewTransactionDetails(DonarName, Email, ContactNumber, SponserType, UserType, CountryID, DonarStateID, location, Address, pincode, AdoptTypeID, School_ContributionID, Units, Years, Amount, Sponser_ContributionID, SchoolID, DonateMode, PaymentMode, ExpiryDate,principalname,SchoolName,Mobilenumber,StateID,DistrictID);
        }

        public static string Insert_ExistingTransactionDetails(int UserID, string DonarName, string ContactNumber, int SponserType, int UserType, int CountryID, int DonarStateID, string location, string Address, string pincode, int AdoptTypeID, int School_ContributionID, int Units, int Years, string Amount, int Sponser_ContributionID, int SchoolID, int DonateMode, int PaymentMode, DateTime ExpiryDate, string PrincipalName, string SchoolName, string MobileNumber, int StateID, int DistrictID)
        {
            return GrameenaVidya.DAL.Donate.Insert_ExistingTransactionDetails(UserID, DonarName, ContactNumber, SponserType, UserType, CountryID, DonarStateID, location, Address, pincode, AdoptTypeID, School_ContributionID, Units, Years, Amount, Sponser_ContributionID,SchoolID,DonateMode,PaymentMode,ExpiryDate, PrincipalName, SchoolName, MobileNumber, StateID, DistrictID);
        }

        public static string InsertCampaignDetails(int _UserID, string CampaignName, DateTime CStartDate, DateTime CExpiryDate, string Message, decimal GoalAmount, decimal Amount)
        {
            return GrameenaVidya.DAL.Donate.InsertCampaignDetails(_UserID,CampaignName,CStartDate,CExpiryDate,Message,GoalAmount,Amount);
        }

        public static string UpdateCampaignImage(int _CampID, string CampPath)
        {
            return GrameenaVidya.DAL.Donate.UpdateCampaignImage(_CampID, CampPath);
        }

        public static DataSet GetDonationsList_Donar(int UserID)
        {
            return GrameenaVidya.DAL.Donate.GetDonationsList_Donar(UserID);
        }

        public static string Insert_ExistingCampaign_NewUser(string DonarName, string Email, string ContactNumber, int SponserType, int UserType, int CountryID, int DonarStateID, string location, string Address, string pincode, int AdoptTypeID, int School_ContributionID, int Units, int Years, string Amount, int Sponser_ContributionID, int SchoolID, int DonateMode, int PaymentMode, DateTime ExpiryDate, int CID)
        {
            return GrameenaVidya.DAL.Donate.Insert_ExistingCampaign_NewUser(DonarName, Email, ContactNumber, SponserType, UserType, CountryID, DonarStateID, location, Address, pincode, AdoptTypeID, School_ContributionID, Units, Years, Amount, Sponser_ContributionID, SchoolID, DonateMode, PaymentMode, ExpiryDate, CID);
        }

        public static string Insert_ExistingCampaign_ExistingUser(int UserID, string DonarName, string ContactNumber, int SponserType, int UserType, int CountryID, int DonarStateID, string location, string Address, string pincode, int AdoptTypeID, int School_ContributionID, int Units, int Years, string Amount, int Sponser_ContributionID, int SchoolID, int DonateMode, int PaymentMode, DateTime ExpiryDate, int CID)
        {
            return GrameenaVidya.DAL.Donate.Insert_ExistingCampaign_ExistingUser(UserID, DonarName, ContactNumber, SponserType, UserType, CountryID, DonarStateID, location, Address, pincode, AdoptTypeID, School_ContributionID, Units, Years, Amount, Sponser_ContributionID, SchoolID, DonateMode, PaymentMode, ExpiryDate, CID);
        }

        public static object GetCampaignDonarNames(int ID)
        {
            return GrameenaVidya.DAL.Donate.GetCampaignDonarNames(ID);
        }

        public static DataSet GetStudents()
        {
            return GrameenaVidya.DAL.Donate.GetStudents();
        }

        public static DataSet GetCountries()
        {
            return GrameenaVidya.DAL.Donate.GetCountries();
        }

        public static DataSet GetStates(int CountryID)
        {
            return GrameenaVidya.DAL.Donate.GetStates(CountryID);
        }

        public static int Insert_Donation(int PackageTypeID, string PackageID, double PackageAmount, int UserIDLast, string PaymentMode)
        {
            return GrameenaVidya.DAL.Donate.Insert_Donation(PackageTypeID, PackageID, PackageAmount, UserIDLast, PaymentMode);
        }

        public static bool Insert_Enquiry(string FirstName, string Email, string Mobile, string EnquiryType, string Message)
        {
            return GrameenaVidya.DAL.Donate.Insert_Enquiry(FirstName, Email, Mobile, EnquiryType, Message);
        }
        public static DataSet GetStudentsView(string Type)
        {
            return GrameenaVidya.DAL.Donate.GetStudentsView(Type);
        }
    }
}




