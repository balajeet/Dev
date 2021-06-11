using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GrameenaVidya.BLL
{
    public class StudentDetails
    {

        public int StudentID { get; set; }
        public string StudentName { get; set; }
        public byte[] ImageFile { get; set; }
        public string Amount { get; set; }
        public string StateName { get; set; }
        public string DistrictName { get; set; }
        public string LocationName { get; set; }
    }
}