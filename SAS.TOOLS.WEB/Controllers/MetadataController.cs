using SAS.TOOLS.INTERFACES;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using SAS.TOOLS.WCF.Util;
using System.IO;
using System.Text;
using System;
using SAS.TOOLS.DTO;

namespace SAS.TOOLS.WEB.Controllers
{
    public class MetadataController : Controller
    {
        int i = 1;
        public ISAS_SISTEMAS_INTERFACE _wRefAcciones { get; set; }
        public MetadataController(ISAS_SISTEMAS_INTERFACE wRefAcciones)
        {
            _wRefAcciones = wRefAcciones;
        }
        [HttpGet]
        public ActionResult Index()
        {


            Execute_Query.deleteFiles();

            var test = _wRefAcciones.qry_SAS_SISTEMAS_Listado();
            var dicSstmLst = new Dictionary<int, string>();
            foreach (var item in test)
            {
                dicSstmLst.Add(item.ID_SISTEMA, item.DESCRIPCION_SISTEMA.ToString());
            }
            ViewBag.Opciones = dicSstmLst.Select(x => new SelectListItem { Value = x.Key.ToString(), Text = x.Value });

            var dbsList = _wRefAcciones.qry_SAS_Origen_Destino_Listado();

            var dbsDicList = new Dictionary<int, string>();
            foreach (var item in dbsList)
            {
                dbsDicList.Add(i, item.ToString());
                i++;
            }
            i = 1;

            ViewBag.Origen = dbsDicList.Select(x => new SelectListItem { Value = x.Key.ToString(), Text = x.Value });
            ViewBag.Destino = dbsDicList.Select(x => new SelectListItem { Value = x.Key.ToString(), Text = x.Value });

            var formatList = _wRefAcciones.qry_SAS_Formato_Listado();

            var dicFormats = new Dictionary<int, string>();
            foreach (var item in formatList)
            {
                dicFormats.Add(i, item.ToString());
                i++;
            }
            i = 1;
            ViewBag.Formato = dicFormats.Select(x => new SelectListItem { Value = x.Key.ToString(), Text = x.Value });



            ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

            //var dicStmsLst = new List<SAS_SISTEMAS_DTO>();

            //dicStmsLst.Add(new SAS_SISTEMAS_DTO() { ID_SISTEMA = 1, DESCRIPCION_SISTEMA = "Sistema 1" });
            //dicStmsLst.Add(new SAS_SISTEMAS_DTO() { ID_SISTEMA = 2, DESCRIPCION_SISTEMA = "Sistema 2" });

            //ViewBag.Opciones = dicStmsLst.Select(x => new SelectListItem { Value = x.ID_SISTEMA.ToString(), Text = x.DESCRIPCION_SISTEMA });


            ViewBag.Result = Execute_Query.result;
            Execute_Query.result = "";
            return View();
            
        }
        
        public FileResult Download()
        {
            string fileName = "MetadataScript-IdSis["+Execute_Query.sistemSelected.ToString()+"]-"+DateTime.Now.ToString("yyyyMMdd_hhmmss")+"-.sql";
            var filePath = HttpContext.Server.MapPath("~/");
            var fullFilePath = Path.Combine(filePath, "ScriptMigracion\\" + fileName);
            if (System.IO.File.Exists(fullFilePath))
            {
                System.IO.File.Delete(fullFilePath);
            }
            if (!System.IO.File.Exists(fullFilePath))
            {
                using (FileStream fs = System.IO.File.Create(fullFilePath))
                {
                    byte[] info = new UTF8Encoding(true).GetBytes(Execute_Query.stmt);
                    fs.Write(info, 0, info.Length);
                }
            }
            byte[] fileBytes = System.IO.File.ReadAllBytes(fullFilePath);
            Execute_Query.fileName = fullFilePath;
            return File(fileBytes, System.Net.Mime.MediaTypeNames.Application.Octet,fileName);
        }
        [HttpPost]
        public ActionResult DownloadFile(DTO.SAS_DDL_VIEW_DTO Sis)
        {
            Execute_Query.dbOrigen = Sis.ID_ORIGEN;
            Execute_Query.sistemSelected = Sis.ID_SISTEMA;

            if (Sis.ID_FORMATO == 1)
            {               
               Execute_Query.stmt = _wRefAcciones.qry_Generador(Sis.ID_SISTEMA,Execute_Query.returnOrStringConn());
                return RedirectToAction("Download");
            }
            else
            {
                Execute_Query.dbDestino = Sis.ID_DESTINO;
                Execute_Query.stmt = _wRefAcciones.qry_Generador(Sis.ID_SISTEMA,Execute_Query.returnOrStringConn());
                Execute_Query.result = Execute_Query.Execute(Execute_Query.returnOrStringConn());
                return RedirectToAction("Index");
            }
        }
    }
}