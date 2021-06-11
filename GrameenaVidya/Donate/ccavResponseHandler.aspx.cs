using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Collections.Specialized;
using CCA.Util;
    
public partial class ResponseHandler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string workingKey = "329251429A7FD3B51B7E064E3374527D";//put in the 32bit alpha numeric key in the quotes provided here
            CCACrypto ccaCrypto = new CCACrypto();
            string encResponse = ccaCrypto.Decrypt(Request.Form["encResp"],workingKey);
            NameValueCollection Params = new NameValueCollection();
            string[] segments = encResponse.Split('&');
            foreach (string seg in segments)
            {
                string[] parts = seg.Split('=');
                if (parts.Length > 0)
                {
                    string Key = parts[0].Trim();
                    string Value = parts[1].Trim();
                    Params.Add(Key, Value);
                }
            }
            
            //for (int i = 0; i < Params.Count; i++)
            //{
            //    Response.Write(Params.Keys[i] + " = " + Params[i] + "<br>");
            //}


            if (Params[3] == "Success")
            {
                divSuccess.Visible = true;
                divError.Visible = false;
                lblStatusSuccess.Text = Params[0];
            }
            else
            {
                divSuccess.Visible = false;
                divError.Visible = true;
            }
           
         }
    }
