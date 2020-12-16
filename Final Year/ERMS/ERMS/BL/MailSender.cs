using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net.Mail;
using System.Net.Mime;
using System.Net;
using DL;

namespace BL
{
    public class MailSender
    {
        private string mailAdd;
        public string strMailAdd
        {
            get { return mailAdd; }
            set { mailAdd = value; }
        }
        private string mailBody;
        public string strMailBody
        {
            get { return mailBody; }
            set { mailBody = value; }
        }

        public void autoMail(MailSender myMailSender)
        {
            try
            {
                MailMessage mail = new MailMessage();
                MailAddress mailAddress = new MailAddress(myMailSender.strMailAdd, "LatLong.Info");
                mail.To.Add(mailAddress);
                mail.From = mailAddress;

                mail.Subject = "ERMS mail service";
                mail.Body = myMailSender.strMailBody;
                
                string sendEmailsFrom = "erms.latlonginfo.latlong@gmail.com";
                string sendEmailsFromPassword = "edmsemtesaepi";
                NetworkCredential credentials = new NetworkCredential(sendEmailsFrom, sendEmailsFromPassword);

                SmtpClient mailClient = new SmtpClient("smtp.gmail.com", 587);
                mailClient.Credentials = credentials;
                mailClient.EnableSsl = true;
                mailClient.DeliveryMethod = SmtpDeliveryMethod.Network;
                mailClient.Send(mail);
            }
            catch (Exception ex)
            {
                throw;
            }
        }
    }
}
