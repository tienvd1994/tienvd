using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ATI.Web.Controllers
{
    public class UploadFileController : Controller
    {
        // GET: Upload
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Upload(HttpPostedFileBase FileData)
        {
            try
            {
                if (FileData != null)
                {
                    string extension = Path.GetExtension(FileData.FileName);

                    if (!ValidateExtension(extension))
                    {
                        return Json(-2);
                    }

                    string uploadDirectory = "/Uploads";
                    string path = Path.Combine(Server.MapPath(uploadDirectory));

                    if (!Directory.Exists(path))
                    {
                        Directory.CreateDirectory(path);
                    }

                    string fileName = FileData.FileName;
                    string imagePath = string.Empty;
                    string fileNameChangedNotExtension = string.Empty;
                    imagePath = Path.Combine(Server.MapPath(uploadDirectory), fileName);
                    string fileNameNotExtension = Path.GetFileNameWithoutExtension(fileName);
                    int i = 1;

                    while (System.IO.File.Exists(imagePath))
                    {
                        fileNameChangedNotExtension = string.Format("{0}-{1}", fileNameNotExtension, i);
                        i++;
                        imagePath = Path.Combine(Server.MapPath(uploadDirectory), string.Format("{0}{1}", fileNameChangedNotExtension, extension));
                    }

                    FileData.SaveAs(imagePath);

                    return Json(uploadDirectory + "/" + FileData.FileName);
                }
                else
                {
                    return Json(-10);
                }
            }
            catch
            {
                return Json(-10);
            }
        }

        public bool ValidateExtension(string extension)
        {
            extension = extension.ToLower();
            switch (extension)
            {
                case ".jpg":
                    return true;
                case ".png":
                    return true;
                case ".gif":
                    return true;
                case ".jpeg":
                    return true;
                default:
                    return false;
            }
        }
    }
}