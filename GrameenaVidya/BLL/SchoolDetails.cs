using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GrameenaVidya.BLL
{
    public class SchoolDetails
    {
        public int SchoolID { get; set; }
        public string SchoolName { get; set; }
        public string CountryName { get; set; }
        public string StateName { get; set; }
        public string DistrictName { get; set; }
        public string LocationName { get; set; }
        public byte[] ImageFile { get; set; }
        //  public byte[] FileByte { get; set; }
        // public string FilePath { get; set; }
        public byte[] PdfFile { get; set; }
        public int StateID { get; set; }
        public int DistrictID { get; set; }
        public int LocationID { get; set; }
        public string DecisionMaker { get; set; }
        public string Email { get; set; }
        public string Curriculum { get; set; }
        public string Strength { get; set; }
        public string Nogirls { get; set; }
        public string NoTeachers { get; set; }
        public string SchoolType { get; set; }
        public string Avgschoolfee { get; set; }
        public string Socio { get; set; }
        public string Nosmart { get; set; }
        public string Nocomputers { get; set; }
        public string Address { get; set; }
        public string dmakerContact { get; set; }
    }
}