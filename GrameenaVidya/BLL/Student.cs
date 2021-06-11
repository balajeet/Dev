using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UskyAdmin.DAL
{
    public class Student
    {

            public string studentName {get; set;}
            public string dob {get; set;}
            public string grade {get; set;}
            public string gender {get; set;}
            public string Caste {get; set;}
            public string Relegion {get; set;}
            public string motherName {get; set;}
            public string motheroccupation {get; set;}
            public string fatherName {get; set;}
            public string fatheroccupation {get; set;}
            public string monthlyincome {get; set;}
            public string familysize {get; set;}
            public string address {get; set;}
            public string school {get; set;}
            public string hm {get; set;}
            public string refer1 {get; set;}
            public string refer2 { get; set; }
          //  public byte[] ImageByte { get; set; }
          //  public string ImagePath { get; set; }
            public byte[] ImageFile { get; set; }
          //  public byte[] FileByte { get; set; }
           // public string FilePath { get; set; }
            public byte[] PdfFile { get; set; }
            public int StateID { get; set; }
            public int DistrictID { get; set; }
            public int LocationID { get; set; }
    }
}