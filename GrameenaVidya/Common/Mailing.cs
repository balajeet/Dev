#region FileHeaderComment

#endregion FileHeaderComment

#region "Namespaces"
using System;
using System.Collections.Generic;
using System.Text;
using System.Configuration;
using System.Collections.Specialized;

using System.Net.Mail;

#endregion "Namespaces"

#region Modification History

#endregion Modification History
namespace GrameenaVidya.Common
{
    public class Mailing
    {
        #region "Private Variables"
        private string _strFrom = string.Empty;
        private string _strDisplayFromName = string.Empty;
        private string _strTo = string.Empty;
        private string _strDisplayToName = string.Empty;
        private string _strCC = string.Empty;
        private string _strDisplayCCName = string.Empty;
        private string _strBCC = string.Empty;
        private string _strDisplayBCCName = string.Empty;
        private string _strSubject = string.Empty;
        private string _strMessage = string.Empty;
        private bool _bIsBodyHtml = true;
        private string _strUserName = string.Empty;
        private string _strPassWord = string.Empty;
        private string _strHostname = string.Empty;

        #endregion "Private Variables"

        #region "Properties"

        /// <summary>
        /// Get/Set From Address
        /// </summary>
        public string From
        {
            get
            {
                return _strFrom;
            }
            set
            {
                _strFrom = value;
            }
        }

        /// <summary>
        /// Get/Set Display From Name 
        /// </summary>
        public string DisplayFromName
        {
            get { return _strDisplayFromName; }
            set { _strDisplayFromName = value; }
        }

        /// <summary>
        /// Get/Set To Address
        /// </summary>
        public string To
        {
            get { return _strTo; }
            set { _strTo = value; }
        }

        /// <summary>
        /// Get/Set Display To Name 
        /// </summary>
        public string DisplayToName
        {
            get { return _strDisplayToName; }
            set { _strDisplayToName = value; }
        }

        /// <summary>
        /// Get/Set CC Address
        /// </summary>
        public string CC
        {
            get { return _strCC; }
            set { _strCC = value; }
        }

        /// <summary>
        /// Get/Set Display CC Name 
        /// </summary>
        public string DisplayCCName
        {
            get { return _strDisplayCCName; }
            set { _strDisplayCCName = value; }
        }

        /// <summary>
        /// Get/Set Display BCC Name 
        /// </summary>
        public string BCC
        {
            get { return _strBCC; }
            set { _strBCC = value; }
        }

        /// <summary>
        /// Get/Set Display CC Name 
        /// </summary>
        public string DisplayBCCName
        {
            get { return _strDisplayBCCName; }
            set { _strDisplayBCCName = value; }
        }

        /// <summary>
        /// Get/Set Subject  
        /// </summary>
        public string Subject
        {
            get { return _strSubject; }
            set { _strSubject = value; }
        }

        /// <summary>
        /// Get/Set Message
        /// </summary>
        public string Message
        {
            get { return _strMessage; }
            set { _strMessage = value; }
        }

        /// <summary>
        /// Get/Set Body 
        /// </summary>
        public bool IsBodyHtml
        {
            get { return _bIsBodyHtml; }
            set { _bIsBodyHtml = value; }
        }

        /// <summary>
        /// Get/Set Smtp server username
        /// </summary>
        public string UserName
        {
            get { return _strUserName; }
            set { _strUserName = value; }
        }

        /// <summary>
        /// Get/Set Smtp server password
        /// </summary>
        /// 
        public string Password
        {
            get { return _strPassWord; }
            set { _strPassWord = value; }
        }

        /// <summary>
        /// Get/Set Host Name
        /// </summary>
        /// 
        public string Hostname
        {
            get { return _strHostname; }
            set { _strHostname = value; }
        }


        #endregion "Properties"

        #region "Public Methods"
        /// <summary>
        /// Sending Mail
        /// </summary>
        public void SendMail()
        {
            MailMessage message = new MailMessage();

            try
            {
                if (From != "")
                    message.From = new MailAddress(From, DisplayFromName);

                if (To != "")
                    message.To.Add(new MailAddress(To, DisplayToName));

                if (CC != "")
                    message.CC.Add(new MailAddress(CC, DisplayCCName));

                if (BCC != "")
                    message.Bcc.Add(new MailAddress(BCC, DisplayBCCName));

                message.Subject = Subject;
                message.Body = Message;
                message.IsBodyHtml = IsBodyHtml;
                SmtpClient client = new SmtpClient();
                //System.Net.NetworkCredential basicAuthInfo = new System.Net.NetworkCredential();
                //basicAuthInfo.UserName = UserName.ToString();
                //basicAuthInfo.Password = Password.ToString();
                //client.Host = Hostname.ToString();
                //client.UseDefaultCredentials = false;
                //client.Credentials = basicAuthInfo;
                client.Send(message);
            }
            catch (Exception ex)
            {
                // TLW.Common.WtiteToLog(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType.Name, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                //CET.Platform.Lite.Common.Logger objLogger = new CET.Platform.Lite.Common.Logger();
                //objLogger.ModuleName = "Mailing";
                //objLogger.LogPriority = CET.Platform.Lite.Common.Logger.Priority.Medium;
                //objLogger.MethodName = "Send Mail";
                //objLogger.ExceptionMessage = ex.Message.ToString();
                //objLogger.WriteToLog();
            }

        }
        #endregion "Methods"
    }
}