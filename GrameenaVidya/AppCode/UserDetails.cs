using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;

namespace GrameenaVidya.AppCode
{
    public class UserDetails
    {
        HttpContext htt = HttpContext.Current;

        public long UserID
        {
            get { if (htt.Session["UserID"] == null) return 0; else return Convert.ToInt64(htt.Session["UserID"]); }
            set { htt.Session["UserID"] = value; }
        }
        
    }
}