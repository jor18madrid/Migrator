using SAS.TOOLS.INTERFACES;
using SAS.TOOLS.INTERFACES.IDM_INTERFACE;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SAS.TOOLS.DTO.IDM_DTO;
using SAS.TOOLS.WCF.Util.IDM_Util;
using System.Text;
using System.IO;
using Newtonsoft.Json;
using SAS.TOOLS.DTO;
using SAS.TOOLS.MAPPERS;
using System.Globalization;

namespace SAS.TOOLS.WEB.USUARIOS.TEST.Controllers
{
    public class HomeUtController : Controller
    {

        public ISAS_SISTEMAS_INTERFACE _wRefAcciones { get; set; }
        public IIDM_PERSONAS_INTERFACE _wRefPers { get; set; }
        public HomeUtController(ISAS_SISTEMAS_INTERFACE wRefAcciones, IIDM_PERSONAS_INTERFACE wRefPers)
        {
            _wRefAcciones = wRefAcciones;
            _wRefPers = wRefPers;
        }

        [HttpGet]
        public ActionResult Index()
        {
            //ViewBag.Title = "Creación Usuarios Para Pruebas IDM-SAS";
            //var test = _wRefAcciones.qry_SAS_PERFILES_Listado();
            //var dicPerfilesLst = new Dictionary<int, string>();
            //foreach (var item in test)
            //{
            //    var id = item;
            //    dicPerfilesLst.Add(item.ID_PERFIL, item.NOMBRE_PERFIL.ToString());
            //}
            //ViewBag.Opciones = dicPerfilesLst.Select(x => new SelectListItem { Value = x.Key.ToString(), Text = x.Value });
            //////////////////////////////////////////////////////////////
            //var grupos = _wRefAcciones.qry_SAS_GRUPOS_Listado();
            //var dicGrpsLst = new Dictionary<int, string>();
            //foreach (var item in grupos)
            //{
            //    var id = item;
            //    dicGrpsLst.Add(item.ID_GRUPO, item.NOMBRE_GRUPO.ToString());
            //}
            //ViewBag.Grupos = dicGrpsLst.Select(x => new SelectListItem { Value = x.Key.ToString(), Text = x.Value });

            //////////////////////////////////////////////////////////////

            //var sistemas = _wRefAcciones.qry_SAS_SISTEMAS_Listado();
            //var dicStmsLst = new Dictionary<int, string>();
            //foreach (var item in sistemas)
            //{
            //    var id = item;
            //    dicStmsLst.Add(item.ID_SISTEMA, item.DESCRIPCION_SISTEMA.ToString());
            //}
            //ViewBag.Sistemas = dicStmsLst.Select(x => new SelectListItem { Value = x.Key.ToString(), Text = x.Value });
            //////////////////////////////////////////////////////////////
            //var tipoUsuarios = _wRefAcciones.qry_IDM_USUARIOS_TIPOS_Listado();
            //var dicTipoUsuarios = new Dictionary<int, string>();
            //foreach (var item in tipoUsuarios)
            //{
            //    int i = 0;
            //    var id = item.TIPO_USUARIO_ID;
            //    bool canConvert;
            //    if (canConvert = int.TryParse(id, out i))
            //    {
            //        var num = id;
            //        dicTipoUsuarios.Add(Convert.ToInt32(id), item.DESC_TIPO_USUARIO);
            //    }
            //}
            //ViewBag.Tipo = dicTipoUsuarios.Select(x => new SelectListItem { Value = x.Key.ToString(), Text = x.Value });
            //////////////////////////////////////////////////////////////
            //var tipoUsuarioNiv = _wRefAcciones.qry_IDM_USUARIOS_NIV_Listado();
            //var dicNivUsuarios = new Dictionary<int, string>();
            //foreach (var item in tipoUsuarioNiv)
            //{
            //    {
            //        dicNivUsuarios.Add(Convert.ToInt32(item.NIVEL_ID), item.DESC_NIVEL);
            //    }
            //}
            //ViewBag.Nivel = dicNivUsuarios.Select(x => new SelectListItem { Value = x.Key.ToString(), Text = x.Value });
            //////////////////////////////////////////////////////////////////////////////////////////////////
            //var pais = _wRefAcciones.dic_IDM_AUX_LOVS("LOV_PAISES");
            //ViewBag.Pais = pais.Select(x => new SelectListItem { Value = x.CODIGO.ToString(), Text = x.DESCRIPCION.ToString() });
            //////////////////////////////////////////////////////////////////////////////////////////////////
            //var tipoID = _wRefAcciones.dic_IDM_AUX_LOVS("LOV_TIPOS_IDENTIFICACION");
            //ViewBag.TipoID = tipoID.Select(x => new SelectListItem { Value = x.CODIGO.ToString(), Text = x.DESCRIPCION.ToString() });
            /////////////////////////////////////////////////////////////////////////////////////////////////











            /////////////////////////////////////////////////////////////////////////////////////////////////////////
            var pais = new List<AUX_LOVS_DTO>();
            pais.Add(new AUX_LOVS_DTO() { CODIGO = "JP", DESCRIPCION = "JAPON" });
            ViewBag.Pais = pais.Select(x => new SelectListItem { Value = x.CODIGO.ToString(), Text = x.DESCRIPCION.ToString() });




            var tipoUsuarios = new List<IDM_USUARIOS_TIPOS_DTO>();
            tipoUsuarios.Add(new IDM_USUARIOS_TIPOS_DTO() { TIPO_USUARIO_ID = 1.ToString(), DESC_TIPO_USUARIO = "TIPO 1" });
            ViewBag.Tipo = tipoUsuarios.Select(x => new SelectListItem
            {
                Value = x.TIPO_USUARIO_ID,
                Text = x.DESC_TIPO_USUARIO
            });







            var dicPerfilesLst = new List<SAS_PERFILES_DTO>();
            dicPerfilesLst.Add(new SAS_PERFILES_DTO() { ID_PERFIL = 1, NOMBRE_PERFIL = "Perfil 1" });
            dicPerfilesLst.Add(new SAS_PERFILES_DTO() { ID_PERFIL = 2, NOMBRE_PERFIL = "Perfil 2" });
            ViewBag.Opciones = dicPerfilesLst.Select(x => new SelectListItem { Value = x.ID_PERFIL.ToString(), Text = x.NOMBRE_PERFIL });





            var dicGrpsLst = new List<SAS_GRUPO_FILTRO_DTO>();

            dicGrpsLst.Add(new SAS_GRUPO_FILTRO_DTO() { ID_GRUPO = 1, NOMBRE_GRUPO = "Grupo 1" });
            dicGrpsLst.Add(new SAS_GRUPO_FILTRO_DTO() { ID_GRUPO = 2, NOMBRE_GRUPO = "Grupo 2" });

            ViewBag.Grupos = dicGrpsLst.Select(x => new SelectListItem { Value = x.ID_GRUPO.ToString(), Text = x.NOMBRE_GRUPO });





            var dicStmsLst = new List<SAS_SISTEMAS_DTO>();

            dicStmsLst.Add(new SAS_SISTEMAS_DTO() { ID_SISTEMA = 1, DESCRIPCION_SISTEMA = "Sistema 1" });
            dicStmsLst.Add(new SAS_SISTEMAS_DTO() { ID_SISTEMA = 2, DESCRIPCION_SISTEMA = "Sistema 2" });

            ViewBag.Sistemas = dicStmsLst.Select(x => new SelectListItem { Value = x.ID_SISTEMA.ToString(), Text = x.DESCRIPCION_SISTEMA });


            var tipoID = new List<AUX_LOVS_DTO>();

            tipoID.Add(new AUX_LOVS_DTO() { CODIGO = "A1", DESCRIPCION = "PAIS 1" });
            tipoID.Add(new AUX_LOVS_DTO() { CODIGO = "A2", DESCRIPCION = "PAIS 2" });
            tipoID.Add(new AUX_LOVS_DTO() { CODIGO = "A3", DESCRIPCION = "PAIS 3" });
            ViewBag.TipoID = tipoID.Select(x => new SelectListItem { Value = x.CODIGO.ToString(), Text = x.DESCRIPCION.ToString() });




            var Nivel = new List<IDM_USUARIOS_NIV_DTO>();

            Nivel.Add(new IDM_USUARIOS_NIV_DTO() { NIVEL_ID = 1, DESC_NIVEL = "A1" });
            Nivel.Add(new IDM_USUARIOS_NIV_DTO() { NIVEL_ID = 2, DESC_NIVEL = "A2" });
            Nivel.Add(new IDM_USUARIOS_NIV_DTO() { NIVEL_ID = 3, DESC_NIVEL = "A#" });
            ViewBag.Nivel = tipoID.Select(x => new SelectListItem { Value = x.CODIGO.ToString(), Text = x.DESCRIPCION.ToString() });






            /////////////////////////////////////////////////////////////////////////////////////////////////////////

            //if (string.IsNullOrEmpty(jsonString.jsonToString))
            //{
            return View();
            //}
            //else
            //{
            //    var dataToView = new GenerarJson().getDataToViewPersonas(jsonString.jsonToString);
            //    return View(dataToView);
            //}
        }



        [HttpPost]
        public ActionResult Cargar(HttpPostedFileBase file)
        {
            file = Request.Files[0];
            jsonString.jsonToString = Upload(file);
            return RedirectToAction("SetData");
        }


        //[HttpGet]
        public ActionResult SetData()
        {
            //var test = _wRefAcciones.qry_SAS_PERFILES_Listado();
            //var dicPerfilesLst = new Dictionary<int, string>();
            //foreach (var item in test)
            //{
            //    var id = item;
            //    dicPerfilesLst.Add(item.ID_PERFIL, item.NOMBRE_PERFIL.ToString());
            //}
            //ViewBag.Opciones = dicPerfilesLst.Select(x => new SelectListItem { Value = x.Key.ToString(), Text = x.Value });
            ////////////////////////////////////////////////////////////////
            //var grupos = _wRefAcciones.qry_SAS_GRUPOS_Listado();
            //var dicGrpsLst = new Dictionary<int, string>();
            //foreach (var item in grupos)
            //{
            //    var id = item;
            //    dicGrpsLst.Add(item.ID_GRUPO, item.NOMBRE_GRUPO.ToString());
            //}
            //ViewBag.Grupos = dicGrpsLst.Select(x => new SelectListItem { Value = x.Key.ToString(), Text = x.Value });

            ////////////////////////////////////////////////////////////////

            //var sistemas = _wRefAcciones.qry_SAS_SISTEMAS_Listado();
            //var dicStmsLst = new Dictionary<int, string>();
            //foreach (var item in sistemas)
            //{
            //    var id = item;
            //    dicStmsLst.Add(item.ID_SISTEMA, item.DESCRIPCION_SISTEMA.ToString());
            //}
            //ViewBag.Sistemas = dicStmsLst.Select(x => new SelectListItem { Value = x.Key.ToString(), Text = x.Value });
            ////////////////////////////////////////////////////////////////
            //var tipoUsuarios = _wRefAcciones.qry_IDM_USUARIOS_TIPOS_Listado();
            //var dicTipoUsuarios = new Dictionary<int, string>();
            //foreach (var item in tipoUsuarios)
            //{
            //    int i = 0;
            //    var id = item.TIPO_USUARIO_ID;
            //    bool canConvert;
            //    if (canConvert = int.TryParse(id, out i))
            //    {
            //        var num = id;
            //        dicTipoUsuarios.Add(Convert.ToInt32(id), item.DESC_TIPO_USUARIO);
            //    }
            //}
            //ViewBag.Tipo = dicTipoUsuarios.Select(x => new SelectListItem { Value = x.Key.ToString(), Text = x.Value });
            ////////////////////////////////////////////////////////////////
            //var tipoUsuarioNiv = _wRefAcciones.qry_IDM_USUARIOS_NIV_Listado();
            //var dicNivUsuarios = new Dictionary<int, string>();
            //foreach (var item in tipoUsuarioNiv)
            //{
            //    {
            //        dicNivUsuarios.Add(Convert.ToInt32(item.NIVEL_ID), item.DESC_NIVEL);
            //    }
            //}
            //ViewBag.Nivel = dicNivUsuarios.Select(x => new SelectListItem { Value = x.Key.ToString(), Text = x.Value });
            ////////////////////////////////////////////////////////////////////////////////////////////////////
            //var pais = _wRefAcciones.dic_IDM_AUX_LOVS("LOV_PAISES");
            //ViewBag.Pais = pais.Select(x => new SelectListItem { Value = x.CODIGO.ToString(), Text = x.DESCRIPCION.ToString() });
            ////////////////////////////////////////////////////////////////////////////////////////////////////
            //var tipoID = _wRefAcciones.dic_IDM_AUX_LOVS("LOV_TIPOS_IDENTIFICACION");
            //ViewBag.TipoID = tipoID.Select(x => new SelectListItem { Value = x.CODIGO.ToString(), Text = x.DESCRIPCION.ToString() });




















            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////




            var pais = new List<AUX_LOVS_DTO>();
            pais.Add(new AUX_LOVS_DTO() { CODIGO = "JP", DESCRIPCION = "JAPON" });
            ViewBag.Pais = pais.Select(x => new SelectListItem { Value = x.CODIGO.ToString(), Text = x.DESCRIPCION.ToString() });



            var tipoUsuarios = new List<IDM_USUARIOS_TIPOS_DTO>();
            tipoUsuarios.Add(new IDM_USUARIOS_TIPOS_DTO() { TIPO_USUARIO_ID = 1.ToString(), DESC_TIPO_USUARIO = "TIPO 1" });
            ViewBag.Tipo = tipoUsuarios.Select(x => new SelectListItem { Value = x.TIPO_USUARIO_ID, Text = x.DESC_TIPO_USUARIO });



            var dicPerfilesLst = new List<SAS_PERFILES_DTO>();
            dicPerfilesLst.Add(new SAS_PERFILES_DTO() { ID_PERFIL = 1, NOMBRE_PERFIL = "Perfil 1" });
            dicPerfilesLst.Add(new SAS_PERFILES_DTO() { ID_PERFIL = 2, NOMBRE_PERFIL = "Perfil 2" });
            ViewBag.Opciones = dicPerfilesLst.Select(x => new SelectListItem { Value = x.ID_PERFIL.ToString(), Text = x.NOMBRE_PERFIL });





            var dicGrpsLst = new List<SAS_GRUPO_FILTRO_DTO>();

            dicGrpsLst.Add(new SAS_GRUPO_FILTRO_DTO() { ID_GRUPO = 1, NOMBRE_GRUPO = "Grupo 1" });
            dicGrpsLst.Add(new SAS_GRUPO_FILTRO_DTO() { ID_GRUPO = 2, NOMBRE_GRUPO = "Grupo 2" });

            ViewBag.Grupos = dicGrpsLst.Select(x => new SelectListItem { Value = x.ID_GRUPO.ToString(), Text = x.NOMBRE_GRUPO });





            var dicStmsLst = new List<SAS_SISTEMAS_DTO>();

            dicStmsLst.Add(new SAS_SISTEMAS_DTO() { ID_SISTEMA = 1, DESCRIPCION_SISTEMA = "Sistema 1" });
            dicStmsLst.Add(new SAS_SISTEMAS_DTO() { ID_SISTEMA = 2, DESCRIPCION_SISTEMA = "Sistema 2" });

            ViewBag.Sistemas = dicStmsLst.Select(x => new SelectListItem { Value = x.ID_SISTEMA.ToString(), Text = x.DESCRIPCION_SISTEMA });


            var tipoID = new List<AUX_LOVS_DTO>();

            tipoID.Add(new AUX_LOVS_DTO() { CODIGO = "A1", DESCRIPCION = "PAIS 1" });
            tipoID.Add(new AUX_LOVS_DTO() { CODIGO = "A2", DESCRIPCION = "PAIS 2" });
            tipoID.Add(new AUX_LOVS_DTO() { CODIGO = "A3", DESCRIPCION = "PAIS 3" });
            ViewBag.TipoID = tipoID.Select(x => new SelectListItem { Value = x.CODIGO.ToString(), Text = x.DESCRIPCION.ToString() });




            var Nivel = new List<IDM_USUARIOS_NIV_DTO>();

            Nivel.Add(new IDM_USUARIOS_NIV_DTO() { NIVEL_ID = 1, DESC_NIVEL = "A1" });
            Nivel.Add(new IDM_USUARIOS_NIV_DTO() { NIVEL_ID = 2, DESC_NIVEL = "A2" });
            Nivel.Add(new IDM_USUARIOS_NIV_DTO() { NIVEL_ID = 3, DESC_NIVEL = "A#" });
            ViewBag.Nivel = tipoID.Select(x => new SelectListItem { Value = x.CODIGO.ToString(), Text = x.DESCRIPCION.ToString() });









            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////









            if (jsonString.jsonToString != "")
            {
                var dataToView = new GenerarJson().getDataToViewPersonas(jsonString.jsonToString);
                jsonString.jsonToString = "";
                return View(dataToView);
            }
            else
            {
                return View("Index");
            }



            
        }


        [HttpPost]
        public ActionResult CrearUsuario(IDM_PERSONAS_DTO Personas)
        {


            //var s = Personas.FECHA_NACIMIENTO.ToString("MM/dd/yyyy HH:mm:ss");
            ////var a = DateTime.ParseExact(s, "MM/dd/yyyy HH:mm:ss", CultureInfo.CurrentCulture);

            ////var a = s.ToString("");
            //var ss = Convert.ToDateTime(s, new CultureInfo("en-CA"));

            if (Personas.optAction == 1)
            {
                return Descargar(Personas);
            }
            else 
            {
                //Personas.PERSONA_ID = _wRefPers.qry_PersonaID();

                //prueba
                Personas.PERSONA_ID = 800;

                AUX_LOV_USU_CREA_DTO Datos = Personas.ToAux();
                
                //Datos.SECUENCIA = _wRefPers.qry_Secuencia();

                ////Prueba
                Datos.SECUENCIA = 2000;

                //Datos.ID_ACCESO = _wRefPers.qry_IdAcceso();

                //prueba
                Datos.ID_ACCESO = 122;

                ExecuteQueryUserTest.CrearUsuarioStmt = GenerarScripts.Generador(JsonConvert.SerializeObject(Datos));
                if (Personas.Perfiles_Grupos.Count > 0 ) 
                {
                    ExecuteQueryUserTest.AsignarPerfilesGrupos = GenerarScriptsPerfGrup.Generador(JsonConvert.SerializeObject(Datos));
                }
                else
                {
                    ExecuteQueryUserTest.NumPerfGrup = Personas.Perfiles_Grupos.Count;
                }
                ExecuteQueryUserTest.Execute();
                return RedirectToAction("Index");
            }
        }

        public FileResult Descargar(IDM_PERSONAS_DTO Personas)
        {
            //GenerarScripts.Generador(JsonConvert.SerializeObject(Personas));
            string fileName = ""+Personas.nombreArchivo +"[" + DateTime.Now.ToString("yyyyMMdd_hhmmss") + "].json";
            var data = Personas;
            var jsonPath = HttpContext.Server.MapPath("~/");
            var currentDirectory = Path.Combine(jsonPath + "JsonUserTest\\" + fileName);
            if (System.IO.File.Exists(currentDirectory))
            {
                System.IO.File.Delete(currentDirectory);
            }
            if (!System.IO.File.Exists(currentDirectory))
            {
                string output = JsonConvert.SerializeObject(data);
                System.IO.File.WriteAllText(currentDirectory, output);
            }
            byte[] fileBytes = System.IO.File.ReadAllBytes(currentDirectory);
            return File(fileBytes, System.Net.Mime.MediaTypeNames.Application.Octet, fileName);
        }
        
        public string Upload(HttpPostedFileBase file)
        {
                string[] jsonString;
                int fileSize = file.ContentLength;
                string fileName = file.FileName;
                string mimeType = file.ContentType;
                System.IO.Stream fileContent = file.InputStream;
                var jsonPath = HttpContext.Server.MapPath("~/");
                var currentDirectory = Path.Combine(jsonPath + "JsonUserTest\\" + fileName);
                file.SaveAs(currentDirectory); 
                jsonString = System.IO.File.ReadAllLines(currentDirectory);
                return jsonString[0];
        }
    }
}