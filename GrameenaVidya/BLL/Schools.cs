using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
namespace GVSchools.BLL
{
    public class Schools
    {
        public static DataSet SelectStates()
        {
            return GVSchools.DAL.Schools.SelectStates();
        }

        public static DataSet SelectDistricts(int StateID)
        {
            return GVSchools.DAL.Schools.SelectDistricts(StateID);
        }

        public static DataSet GetSchoolsData(int stateID,int DistrictID)
        {
            return GVSchools.DAL.Schools.GetSchoolsData(stateID,DistrictID);
        }





        public static DataSet SelectCountries()
        {
            return GVSchools.DAL.Schools.SelectCountries();
        }

        public static DataSet Select_States(int CountryID)
        {
            return GVSchools.DAL.Schools.Select_States(CountryID);
        }

        public static DataTable GetCampaginDonationDetails()
        {
            return GVSchools.DAL.Schools.GetCampaginDonationDetails().Tables[0];
        }



        public static DataTable GetSchoolInformation(int SchoolID)
        {
            return GVSchools.DAL.Schools.GetSchoolInformation(SchoolID).Tables[0];
        }

        public static bool InsertFeedback(string feedback, string description, string emailid)
        {
            return GVSchools.DAL.Schools.InsertFeedback(feedback, description, emailid);
        }

        public static DataSet GetSchools_New(int StateID, int DistrictID)
        {
            return GVSchools.DAL.Schools.GetSchools_New(StateID, DistrictID);
        }

        public static string InsertDonar_SchoolDetails(int ProgramID, int packageID, decimal Amount, int TypeSchoolID, int stateid, int DistrictID, int Schoolid, string SchoolName, string PrincipalName, string SupMobilenumber, string supPincode, string DonarName, string DonarEmail, string DonarMobileNum, string Address1,  string DonarPinCode, int CountryID, int DonarStateID,string location, int donatemode, int PaymnetMode, int CheckpickupID)
        {

            return GVSchools.DAL.Schools.InsertDonar_SchoolDetails(ProgramID, packageID, Amount, TypeSchoolID, stateid, DistrictID, Schoolid, SchoolName, PrincipalName, SupMobilenumber, supPincode, DonarName, DonarEmail, DonarMobileNum, Address1, DonarPinCode, CountryID, DonarStateID,location, donatemode,PaymnetMode,CheckpickupID);
                
     
            
                                                                            
        }

        
    }
}