using System.Text;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace GrameenaVidya.AppCode
{
    public class DonarDetails
    {
        HttpContext htt = HttpContext.Current;
        public string SessionID
        {
            get { if (htt.Session["SessionID"] == null) return ""; else return htt.Session["SessionID"].ToString(); }
            set { htt.Session["SessionID"] = value; }
        }

        public long UserID
        {
            get { if (htt.Session["UserID"] == null) return 0; else return Convert.ToInt64(htt.Session["UserID"]); }
            set { htt.Session["UserID"] = value; }
        }

        public string DonarName
        {
            get { if (htt.Session["Name"] == null) return ""; else return htt.Session["Name"].ToString(); }
            set { htt.Session["Name"] = value; }
        }

        public bool IsPurchased
        {
            get { if (htt.Session["IsPurchased"] == null) return false; else return Convert.ToBoolean(htt.Session["IsPurchased"]); }
            set { htt.Session["IsPurchased"] = value; }
        }

        public string PackageStatus
        {
            get { if (htt.Session["PackageStatus"] == null) return ""; else return htt.Session["PackageStatus"].ToString(); }
            set { htt.Session["PackageStatus"] = value; }
        }
    }
}