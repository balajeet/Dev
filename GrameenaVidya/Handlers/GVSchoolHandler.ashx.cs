using GrameenaVidya.BLL;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;

namespace GrameenaVidya.Handlers
{
    /// <summary>
    /// Summary description for GVSchoolHandler
    /// </summary>
    public class GVSchoolHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            SchoolDetails school = new SchoolDetails();

            school.SchoolName = context.Request.Form["schoolName"];
            school.DecisionMaker = context.Request.Form["dmakerschool"];
            school.Email = context.Request.Form["Email"];
            school.Curriculum = context.Request.Form["Curriculum"];
            school.Strength = context.Request.Form["Strength"];
            school.Nogirls = context.Request.Form["Nogirls"];
            school.NoTeachers = context.Request.Form["NoTeachers"];
            school.SchoolType = context.Request.Form["SchoolType"];
            school.Avgschoolfee = context.Request.Form["Avgschoolfee"];
            school.Socio = context.Request.Form["Socio"];
            school.Nosmart = context.Request.Form["Nosmart"];
          school.dmakerContact= context.Request.Form["dmakerContact"];
            school.Address = context.Request.Form["address"];
            school.Nocomputers = context.Request.Form["Nocomputers"];
          
            school.StateID = Convert.ToInt32(context.Request.Form["StateID"]);
            school.DistrictID = Convert.ToInt32(context.Request.Form["DistrictID"]);
            school.LocationID = Convert.ToInt32(context.Request.Form["LocationID"]);
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

            school.ImageFile = bytes;
            school.PdfFile = pdfbytes;
            DataTable dt = GrameenaVidya.DAL.Users.UploadSchool(school);
            int sid = 0;
            sid = Convert.ToInt32(dt.Rows[0]["SchoolID"]);
            context.Response.Write(JsonConvert.SerializeObject(school));
            // return sid;

        }
        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}