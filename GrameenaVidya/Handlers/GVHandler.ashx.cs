
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using UskyAdmin.DAL;
using System.IO;
using System.Data;
using Newtonsoft.Json;

namespace UskyAdmin.Handlers
{
    /// <summary>
    /// Summary description for GVHandler
    /// </summary>
    public class GVHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            Student student = new Student();
            
            student.studentName = context.Request.Form["studentName"];
            student.dob = context.Request.Form["dob"];
            student.grade = context.Request.Form["grade"];
            student.gender = context.Request.Form["gender"];
            student.Caste = context.Request.Form["Caste"];
            student.Relegion = context.Request.Form["Relegion"];
            student.motherName = context.Request.Form["motherName"];
            student.motheroccupation = context.Request.Form["motheroccupation"];
            student.fatherName = context.Request.Form["fatherName"];
            student.fatheroccupation = context.Request.Form["fatheroccupation"];
            student.monthlyincome = context.Request.Form["monthlyincome"];
            student.familysize = context.Request.Form["familysize"];
            student.address = context.Request.Form["address"];
            student.school = context.Request.Form["school"];
            student.hm = context.Request.Form["hm"];
            student.refer1 = context.Request.Form["refer1"];
            student.refer2 = context.Request.Form["refer2"];
            student.StateID = Convert.ToInt32(context.Request.Form["StateID"]);
            student.DistrictID = Convert.ToInt32(context.Request.Form["DistrictID"]);
            student.LocationID = Convert.ToInt32(context.Request.Form["LocationID"]);
            byte[] bytes = null;
            byte[] pdfbytes = null;
           //only uploading one file
           
            if (context.Request.Files.Count >= 1)
            {
                var uploadedFile = context.Request.Files[0];
                using (Stream fs = uploadedFile.InputStream)
                {
                    using (BinaryReader br = new BinaryReader(fs))
                    {
                        bytes = br.ReadBytes((Int32)fs.Length);
                    }
                }
            }
            if (context.Request.Files.Count >= 2)
            {
                var pdfuploadedFile = context.Request.Files[1];
                using (Stream fs = pdfuploadedFile.InputStream)
                {
                    using (BinaryReader br = new BinaryReader(fs))
                    {
                        pdfbytes = br.ReadBytes((Int32)fs.Length);
                    }
                }
            }
           
            student.ImageFile = bytes;
            student.PdfFile = pdfbytes;
            DataTable dt = GrameenaVidya.DAL.Users.UploadStudent(student);
            int sid = 0;
            sid = Convert.ToInt32(dt.Rows[0]["StudentID"]);
            context.Response.Write(JsonConvert.SerializeObject(student));
            // return sid;

        }

        //public override int ProcessRequest(HttpContext context)
        //{
        //    Student student = new Student();
        //    var uploadedFile = context.Request.Files[0]; //only uploading one file
        //    var pdfuploadedFile = context.Request.Files[1];
        //    student.studentName = context.Request.Form["studentName"];
        //    student.dob = context.Request.Form["dob"];
        //    student.grade = context.Request.Form["grade"];
        //    student.gender = context.Request.Form["gender"];
        //    student.Caste = context.Request.Form["Caste"];
        //    student.Relegion = context.Request.Form["Relegion"];
        //    student.motherName = context.Request.Form["motherName"];
        //    student.motheroccupation = context.Request.Form["motheroccupation"];
        //    student.fatherName = context.Request.Form["fatherName"];
        //    student.fatheroccupation = context.Request.Form["fatheroccupation"];
        //    student.monthlyincome = context.Request.Form["monthlyincome"];
        //    student.familysize = context.Request.Form["familysize"];
        //    student.address = context.Request.Form["address"];
        //    student.school = context.Request.Form["school"];
        //    student.hm = context.Request.Form["hm"];
        //    student.refer1 = context.Request.Form["refer1"];
        //    student.refer2 = context.Request.Form["refer2"];
        //    byte[] bytes = null;
        //    byte[] pdfbytes = null;
        //    using (Stream fs = uploadedFile.InputStream)
        //    {
        //        using (BinaryReader br = new BinaryReader(fs))
        //        {
        //            bytes = br.ReadBytes((Int32)fs.Length);
        //        }
        //    }
        //    using (Stream fs = pdfuploadedFile.InputStream)
        //    {
        //        using (BinaryReader br = new BinaryReader(fs))
        //        {
        //            pdfbytes = br.ReadBytes((Int32)fs.Length);
        //        }
        //    }
        //    student.ImageFile = bytes;
        //    student.PdfFile = pdfbytes;
        //    DataTable dt = UskyAdmin.DAL.ResourceAdding.UploadStudent(student);
        //    int sid = 0;
        //    sid = Convert.ToInt32(dt.Rows[0]["ID"]);
        //     return sid;
        //}
        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}