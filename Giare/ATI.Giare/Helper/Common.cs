using System;
using System.Configuration;
using System.Diagnostics;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Text.RegularExpressions;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using ATI.Web.Email;

namespace ATI.Web.Helper
{
    public sealed class Common
    {

        public static int TransferLang(string pValue)
        {
            switch (pValue)
            {
                case "0":
                    return 0;
                case "1":
                    return 1;
                case "2":
                    return 2;
                case "3":
                    return 3;
                default:
                    return 0;
            }
        }
        public static void SendMail(string toList, string ccList, string subject, string body)
        {
            MailMessage message = new MailMessage();
            SmtpClient smtpClient = new SmtpClient();
            //string msg = string.Empty;
            try
            {
                MailAddress fromAddress = new MailAddress(ConfigurationManager.AppSettings["smtp_username"], "VietHanEttsc Info");
                message.From = fromAddress;
                message.To.Add(toList);
                if (ccList != null && ccList != string.Empty)
                    message.CC.Add(ccList);
                message.Subject = subject;
                message.IsBodyHtml = true;

                string mailBody;
                Page pageHolder = new Page();
                pageHolder.EnableViewState = false;
                var form = new HtmlForm();
                form.ID = "form1";
                pageHolder.Controls.Add(form);
                var email = (EmailTemplate)pageHolder.LoadControl("\\Email\\EmailTemplate.ascx");
                email.UpdateAlert(body);
                TextWriter myTextWriter = new StringWriter();
                var myWriter = new HtmlTextWriter(myTextWriter);

                email.RenderControl(myWriter);
                mailBody = myTextWriter.ToString();
                message.Body = mailBody;
                smtpClient.Host = ConfigurationManager.AppSettings["smtp_host"];   // We use gmail as our smtp client
                smtpClient.Port = int.Parse(ConfigurationManager.AppSettings["port"]);
                smtpClient.EnableSsl = true;
                smtpClient.UseDefaultCredentials = true;
                smtpClient.Credentials = new NetworkCredential(ConfigurationManager.AppSettings["smtp_username"], ConfigurationManager.AppSettings["smtp_password"]);
                smtpClient.Send(message);
            }
            catch (Exception ex)
            {
                
            }
        }

        /// <summary>
        /// đổi thời gian thành chuỗi thời gian hh:mm:ss
        /// </summary> 
        /// <returns></returns>
        public static string GetTimeString(int second)
        {
            int h = second / 3600;
            int s1 = second % 3600;
            int m = s1 / 60;
            int s = s1 % 60;

            return (h == 0 ? string.Empty : string.Format("{0:00}", h) + ":") + string.Format("{0:00}", m) + ":" + string.Format("{0:00}", s);
        }

        public static string MediaFiles()
        {
            return ConfigurationManager.AppSettings["FilesMedia"];
        }

        public static string UrlReferrer()
        {
            return HttpContext.Current.Request.UrlReferrer == null ? "" : HttpContext.Current.Request.UrlReferrer.OriginalString;
        }

        public static string DocFiles()
        {
            return ConfigurationManager.AppSettings["FilesDoc"];
        }

        public static void CheckExistsAndCreateFolder(string folder)
        {
            if (!new DirectoryInfo(folder).Exists)
            {
                new DirectoryInfo(folder).Create();
            }
        }

        public static void ResizeImage(string file, int targetSize, string targetFolder, long quality)
        {
            if (new FileInfo(targetFolder).Exists)
            {
                new FileInfo(targetFolder).Delete();
            }

            var imgToResize = Image.FromFile(file);

            int destWidth, destHeight;
            if (imgToResize.Height <= targetSize && imgToResize.Width <= targetSize)
            {
                destWidth = imgToResize.Width;
                destHeight = imgToResize.Height;
            }
            else
            {
                if (imgToResize.Height > imgToResize.Width)
                {
                    destHeight = targetSize;
                    destHeight = destHeight > imgToResize.Height ? imgToResize.Height : destHeight;

                    destWidth = (int)(imgToResize.Width * ((float)targetSize / (float)imgToResize.Height));
                }
                else
                {
                    destWidth = targetSize;
                    destWidth = destWidth > imgToResize.Width ? imgToResize.Width : destWidth;
                    destHeight = (int)(imgToResize.Height * ((float)targetSize / (float)imgToResize.Width));
                }
            }

            var bitmap = new Bitmap(destWidth, destHeight);
            Graphics g = Graphics.FromImage((Image)bitmap);
            g.DrawImage(imgToResize, 0, 0, destWidth, destHeight);

            g.Dispose();
            using (var encoderParameters = new EncoderParameters(1))
            {
                encoderParameters.Param[0] = new EncoderParameter(System.Drawing.Imaging.Encoder.Quality, quality);

                bitmap.Save(targetFolder, GetImageCodec(".jpg"), encoderParameters);

                bitmap.Dispose();
            }
        }

        public static ImageCodecInfo GetImageCodec(string extension)
        {
            extension = extension.ToUpperInvariant();
            ImageCodecInfo[] codecs = ImageCodecInfo.GetImageEncoders();
            foreach (ImageCodecInfo codec in codecs)
            {
                if (codec.FilenameExtension.Contains(extension))
                {
                    return codec;
                }
            }
            return codecs[1];
        }

        public static string ClientIP
        {
            get
            {
                string IP = "";
                if (HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"] != null)
                {
                    IP = HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
                }
                if (IP == "")
                {
                    IP = HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"];
                }
                return IP;
            }
        }

        public static string UrlRoot
        {
            get
            {
                string sRet = HttpContext.Current.Request.ApplicationPath;
                if (!sRet.EndsWith("/"))
                    sRet = sRet + "/";
                return sRet;
            }
        }

        //public static string SiteName
        //{
        //    get
        //    {
        //        string sRet = Config.SiteName;
        //        if (string.IsNullOrEmpty(sRet))
        //        {
        //            string sDomain = HttpContext.Current.Request.Url.Host.Trim().ToLower();
        //            if (sDomain.IndexOf("localhost") < 0)
        //            {
        //                sRet = sDomain.Replace("." + Config.DomainName, "");
        //            }
        //            else
        //            {
        //                sRet = "www";
        //            }
        //        }
        //        return sRet;
        //    }
        //}

        public static string ATIDecrypt(string value)
        {
            var rijndaelEnhanced = new RijndaelEnhanced(ConfigurationManager.AppSettings["SiteName"], "@1B2c3D4e5F6g7H8");
            return rijndaelEnhanced.Decrypt(value);
        }

        public static string ATIEndcrypt(string value)
        {
            var rijndaelEnhanced = new RijndaelEnhanced(ConfigurationManager.AppSettings["SiteName"], "@1B2c3D4e5F6g7H8");
            return rijndaelEnhanced.Encrypt(value);
        }

        public static bool CheckEmailFormat(string email)
        {
            String ZipRegex = @"^([a-zA-Z0-9_\.]+)@((\[[0-9]{1,3}" + @"\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\" +
                              @".)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$";

            if (!Regex.IsMatch(email, ZipRegex))
            {
                return false;
            }

            return true;
        }

        public static string MD5Endcoding(string password)
        {
            return BitConverter.ToString(new MD5CryptoServiceProvider().ComputeHash(Encoding.ASCII.GetBytes(password))).Replace("-", string.Empty);
        }

        public static string CreateRandomCode(int codeCount)
        {
            const string allChar =
                "0,1,2,3,4,5,6,7,8,9,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z";
            string[] allCharArray = allChar.Split(',');
            string randomCode = "";
            int temp = -1;

            var rand = new Random();
            for (int i = 0; i < codeCount; i++)
            {
                if (temp != -1)
                {
                    rand = new Random(i * temp * ((int)DateTime.Now.Ticks));
                }
                int t = rand.Next(36);
                if (temp != -1 && temp == t)
                {
                    return CreateRandomCode(codeCount);
                }
                temp = t;
                randomCode += allCharArray[t];
            }
            return randomCode;
        }

        public string XSSFilter(string sValue)
        {
            string sTemp = "?=:/._-0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
            string sOut = "";
            for (int i = 0; i < sValue.Length; i++)
            {
                if (sTemp.IndexOf(sValue[i]) >= 0)
                {
                    sOut += sValue[i];
                }
            }

            return sOut;
        }

        public static String UCS2Convert(String sContent)
        {
            sContent = sContent.Trim();
            String sUTF8Lower =
                "a|á|à|ả|ã|ạ|ă|ắ|ằ|ẳ|ẵ|ặ|â|ấ|ầ|ẩ|ẫ|ậ|đ|e|é|è|ẻ|ẽ|ẹ|ê|ế|ề|ể|ễ|ệ|i|í|ì|ỉ|ĩ|ị|o|ó|ò|ỏ|õ|ọ|ô|ố|ồ|ổ|ỗ|ộ|ơ|ớ|ờ|ở|ỡ|ợ|u|ú|ù|ủ|ũ|ụ|ư|ứ|ừ|ử|ữ|ự|y|ý|ỳ|ỷ|ỹ|ỵ";

            String sUTF8Upper =
                "A|Á|À|Ả|Ã|Ạ|Ă|Ắ|Ằ|Ẳ|Ẵ|Ặ|Â|Ấ|Ầ|Ẩ|Ẫ|Ậ|Đ|E|É|È|Ẻ|Ẽ|Ẹ|Ê|Ế|Ề|Ể|Ễ|Ệ|I|Í|Ì|Ỉ|Ĩ|Ị|O|Ó|Ò|Ỏ|Õ|Ọ|Ô|Ố|Ồ|Ổ|Ỗ|Ộ|Ơ|Ớ|Ờ|Ở|Ỡ|Ợ|U|Ú|Ù|Ủ|Ũ|Ụ|Ư|Ứ|Ừ|Ử|Ữ|Ự|Y|Ý|Ỳ|Ỷ|Ỹ|Ỵ";

            String sUCS2Lower =
                "a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|a|d|e|e|e|e|e|e|e|e|e|e|e|e|i|i|i|i|i|i|o|o|o|o|o|o|o|o|o|o|o|o|o|o|o|o|o|o|u|u|u|u|u|u|u|u|u|u|u|u|y|y|y|y|y|y";

            String sUCS2Upper =
                "A|A|A|A|A|A|A|A|A|A|A|A|A|A|A|A|A|A|D|E|E|E|E|E|E|E|E|E|E|E|E|I|I|I|I|I|I|O|O|O|O|O|O|O|O|O|O|O|O|O|O|O|O|O|O|U|U|U|U|U|U|U|U|U|U|U|U|Y|Y|Y|Y|Y|Y";

            String[] aUTF8Lower = sUTF8Lower.Split(new[] { '|' });

            String[] aUTF8Upper = sUTF8Upper.Split(new[] { '|' });

            String[] aUCS2Lower = sUCS2Lower.Split(new[] { '|' });

            String[] aUCS2Upper = sUCS2Upper.Split(new[] { '|' });

            Int32 nLimitChar;

            nLimitChar = aUTF8Lower.GetUpperBound(0);

            for (int i = 1; i <= nLimitChar; i++)
            {
                sContent = sContent.Replace(aUTF8Lower[i], aUCS2Lower[i]);

                sContent = sContent.Replace(aUTF8Upper[i], aUCS2Upper[i]);
            }
            string sUCS2regex = @"[A-Za-z0-9- ]";
            string sEscaped =
                new Regex(sUCS2regex, RegexOptions.IgnoreCase | RegexOptions.Multiline | RegexOptions.ExplicitCapture).
                    Replace(sContent, string.Empty);
            if (string.IsNullOrEmpty(sEscaped))
                return sContent;
            sEscaped = sEscaped.Replace("[", "\\[");
            sEscaped = sEscaped.Replace("]", "\\]");
            sEscaped = sEscaped.Replace("^", "\\^");
            string sEscapedregex = @"[" + sEscaped + "]";
            return
                new Regex(sEscapedregex, RegexOptions.IgnoreCase | RegexOptions.Multiline | RegexOptions.ExplicitCapture)
                    .Replace(sContent, string.Empty);
        }

        
        public static string SubString(string sSource, int length)
        {
            if (string.IsNullOrEmpty(sSource))
                return string.Empty;
            if (sSource.Length <= length)
                return sSource;

            string mSource = sSource;
            int nLength = length;

            //int m = mSource.Length;
            while (nLength > 0 && mSource[nLength].ToString() != " ")
            {
                nLength--;
            }
            mSource = mSource.Substring(0, nLength);
            return mSource + "...";
        }

        /// <summary>
        /// Đọc 1 stream và ghi ra 1 stream
        /// </summary>
        /// <param name="readStream">the stream you need to read</param>
        /// <param name="writeStream">the stream you want to write to</param>
        /// Author: HoangNN
        public static void ReadWriteStream(Stream readStream, Stream writeStream)
        {
            try
            {
                int Length = 256;
                var buffer = new Byte[Length];
                int bytesRead = readStream.Read(buffer, 0, Length);
                // write the required bytes
                while (bytesRead > 0)
                {
                    writeStream.Write(buffer, 0, bytesRead);
                    bytesRead = readStream.Read(buffer, 0, Length);
                }
            }
            catch (Exception e)
            {
                //do nothing
            }
            finally
            {
                readStream.Close();
                writeStream.Close();
            }
        }

        /// <summary>
        /// Đọc file video theo 1 công cụ đọc file truyền vào
        /// </summary>
        /// <param name="toolFile"></param>
        /// <param name="videoFile"></param>
        /// <returns>chuỗ thông tin video đọc được</returns>
        public static string ReadMediaFile(string toolFile, string videoFile)
        {
            var ffmpeg = new Process();

            String result; // temp variable holding a string representation of our video's duration
            StreamReader errorreader; // StringWriter to hold output from ffmpeg

            // we want to execute the process without opening a shell
            ffmpeg.StartInfo.UseShellExecute = false;
            ffmpeg.StartInfo.ErrorDialog = false;

            // redirect StandardError so we can parse it
            // for some reason the output comes through over StandardError
            ffmpeg.StartInfo.RedirectStandardError = true;

            // set the file name of our process, including the full path
            // (as well as quotes, as if you were calling it from the command-line)
            ffmpeg.StartInfo.FileName = toolFile;

            // set the command-line arguments of our process, including full paths of any files
            // (as well as quotes, as if you were passing these arguments on the command-line)
            ffmpeg.StartInfo.Arguments = @"-i " + videoFile;

            // start the process
            ffmpeg.Start();

            // now that the process is started, we can redirect output to the StreamReader we defined
            errorreader = ffmpeg.StandardError;

            // wait until ffmpeg comes back
            ffmpeg.WaitForExit(); //[time_to_wait_in_milliseconds]

            // read the output from ffmpeg, which for some reason is found in Process.StandardError
            result = errorreader.ReadToEnd();

            // a little convoluded, this string manipulation...
            // working from the inside out, it:
            // takes a substring of result, starting from the end of the "Duration: " label contained within,
            // (execute "ffmpeg.exe -i somevideofile" on the command-line to verify for yourself that it is there)
            // and going the full length of the timestamp.
            // The resulting substring is of the form "HH:MM:SS.UU"

            return result;
        }

        /// <summary>
        /// Lấy thời gian của file video theo định dạng HH:MM:SS.UU
        /// </summary>
        /// <param name="toolFile"></param>
        /// <param name="videoFile"></param>
        /// <returns></returns>
        public static string GetDurationStringOfMediaFile(string toolFile, string videoFile)
        {
            String duration; // soon will hold our video's duration in the form "HH:MM:SS.UU"
            // a little convoluded, this string manipulation...
            // working from the inside out, it:
            // takes a substring of result, starting from the end of the "Duration: " label contained within,
            // (execute "ffmpeg.exe -i somevideofile" on the command-line to verify for yourself that it is there)
            // and going the full length of the timestamp.
            // The resulting substring is of the form "HH:MM:SS.UU"
            string result = ReadMediaFile(toolFile, videoFile);
            duration = result.Substring(result.IndexOf("Duration: ") + ("Duration: ").Length, 11);
            //("00:00:00.00").Length

            return duration;
        }


        /// <summary>
        /// Lấy thời gian tính bằng giây của file video 
        /// </summary>
        /// <param name="toolFile"></param>
        /// <param name="videoFile"></param>
        /// <returns></returns>
        public static long GetDurationInSecondOfMediaFile(string toolFile, string videoFile)
        {
            long secondsOfMediFile = 0;
            String duration = GetDurationStringOfMediaFile(toolFile, videoFile);
            //Log.Debug("GetDurationInSecondOfMediaFile.duration=" + duration);
            try
            {
                int h = Convert.ToInt32(duration.Substring(0, 2));
                int m = Convert.ToInt32(duration.Substring(3, 2));
                int s = Convert.ToInt32(duration.Substring(6, 2));
                secondsOfMediFile = h * 3600 + m * 60 + s;
            }
            catch (Exception ex)
            {
                secondsOfMediFile = 0;
            }
            return secondsOfMediFile;
        }

        public static string EndcryptData(string data, string privateKey)
        {
            try
            {
                RSACryptoServiceProvider rsaCryptoIPT = new RSACryptoServiceProvider(1024);
                rsaCryptoIPT.FromXmlString("<RSAKeyValue><Modulus>1l2/9k2/91P3OHYNRpgfcD3G1b7jcGDBupo8Pu5TwY/wDNjDEyJm6xm+AZ90cLipO8Cj/vMWZhr4wZepBcruCC68fe21E00GgakdbrrTt7a7Xa/9VJd7vtMW0tu6Hz/xZaZHktCNKyoFGL95RT1N1veDaqkYNJcXvsYHYlOaky8=</Modulus><Exponent>AQAB</Exponent><P>7+PpK4lfxddKAdCzA/+wTKkM5EbEkhGJ+ohfWpJ5tch4C0ASUpDXkJwzsBQxGOVk2AFMHfqb3Mp7GueV5Sc1TQ==</P><Q>5MMKV4Ydp7Jy2uPflPaAGunYzvpqyHJFyqDmpMuks/8d+bDBgKCxBRtZA87McRUhEKHYrwe1sGppj7BmXP58aw==</Q><DP>ABlM8EqnMnKrQiLu3/KMBQwQyEtLK3A8aVEDEQt8Z1nEyuRk3YnXvOSDlO/9MTBvATPG70A6LjYbJOCxjB2fBQ==</DP><DQ>Qei32BO6A5D0aoBw8Hg83IQ3hRq9HVdfKExHZ3+MypdcSY5Vkfu6ROBmOySf3ozZ4/LdfUBZZqSiGVYXh/+CVQ==</DQ><InverseQ>FyAJwqvWBPeSyicaVogpQVnNLrPoyc3eF6z9ScNAaO0WqzRMoofDnLe2nV7esiWgjhjebO5gg5lJGP80Hs1edA==</InverseQ><D>L16UFsdjjjHdxXpAwMLI37KnB4ChHaoj5SpD+dwMYg9+ijg0Ezxc5cLQe+dSgb4sl2mgU6w/3NxE7/KlhQQsyPaLIAUlBhNWrN5Gpa5OF6JkXO9aXBg26Xp4bdIb+otYver3EklGQIzo/fNph/qWhKj24jkaFQuQN4Ysfa+J1nE=</D></RSAKeyValue>");
                return Convert.ToBase64String(rsaCryptoIPT.SignData(new ASCIIEncoding().GetBytes(data), new SHA1CryptoServiceProvider()));
            }
            catch (Exception ex)
            {
                return string.Empty;
            }
        }

        /// <summary>
        /// Convert String to URL Format
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static string ConvertToUrlString(string str)
        {
            str = (new Regex(@"[-]{2}")).Replace((new Regex(@"[^\w]")).Replace(UCS2Convert(str.ToLower()), "-"), "-");

            return str;
        }

        public static string Encrypt(string id, string value)
        {
            return new RijndaelEnhanced(id, "@1B2c3D4e5F6g7H8").Encrypt(value);
        }

        public static string Decrypt(string id, string value)
        {
            return new RijndaelEnhanced(id, "@1B2c3D4e5F6g7H8").Decrypt(value);
        }
    }
}