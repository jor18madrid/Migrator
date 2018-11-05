using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PAMEH.Helpers;
using PAMEH.Models;
using PAMEH.Security;
using PAM_DTO;
using PAM_INTERFACES;
using Sefin.Email;

namespace PAMEH.Controllers
{
    [Authorize]
    public class BeneficiarioNaturalController : Controller
    {
        private readonly HelperCorreoMasivos _helperCorreoMasivos = new HelperCorreoMasivos();
        public ICatalogoService CatalogoService { get; set; }
        public IBeneficiarioService BeneficiarioService { get; set; }
        public ISenderEmail SenderEmail { get; set; }
        public IEncryptionAdapter Encryption { get; set; }
        public IPAM_Services PamServices { get; set; }
        // GET: BeneficiarioNatural

        public BeneficiarioNaturalController(ICatalogoService catalogoService, IBeneficiarioService beneficiarioService, ISenderEmail senderEmail, IPAM_Services pamServices )
        {
            CatalogoService = catalogoService;
            BeneficiarioService = beneficiarioService;
            SenderEmail = senderEmail;
            PamServices = pamServices;
        }

       

        [HttpGet]
        public virtual  ActionResult ingresoDeInformacion()
        {
            //Eliminar cookie
            
            if (Request.Cookies.Get("modoEdicionNatural") != null)
            {
                Response.Cookies["modoEdicionNatural"].Expires = DateTime.Now.AddDays(-1);    
            }
            
            Response.Cookies.Add(new HttpCookie("ajuste", "false"));
            Response.Cookies.Add(new HttpCookie("tipo", "N"));
            return View("../Wizard/Wizard");
        }



        [HttpGet]
        [EncryptedParameter]
        public virtual ActionResult edicionDeInformacion(ParametroRegistro parametro)
        {
            var Beneficiario = Encryption.encrypt(parametro.idBeneficiario);
            Response.Cookies.Add(new HttpCookie("modoEdicionNatural","edicion"));
            Response.Cookies.Add(new HttpCookie("idBeneficiario", parametro.idBeneficiario));
            Response.Cookies.Add(new HttpCookie("Beneficiario", Beneficiario));
            Response.Cookies.Add(new HttpCookie("ajuste", "false"));
            Response.Cookies.Add(new HttpCookie("tipo", "N"));
            return View("../Wizard/Wizard");
            //   return View("ingresoDeInformacion");
        }

        [HttpPost]
        public virtual JsonResult cargarDataParaEdicion(int idBeneficiario)
        {
            
            var beneficiarioNatural = BeneficiarioService.obtenerBeneficiarioNatural(idBeneficiario);
            return beneficiarioNatural.json();
        }


        public virtual ActionResult Autorizado( )
        {
            gestiones();

            ViewBag._estado = "AUTORIZADO";
            ViewBag.descripcion = "Correspondencia de Solicitudes";

            return View("../Beneficiarios/ListaBeneficiarios");
        }
        public virtual ActionResult Solicitado( )
        {
            gestiones();
           ViewBag._estado = "SOLICITADO";
            ViewBag.descripcion = "Asignadas en transito";
            return View("../Beneficiarios/ListaBeneficiarios");
        }
        public virtual ActionResult Entregado( )
        {
            gestiones();
            ViewBag._estado = "ENTREGADO";
            ViewBag.descripcion = "Beneficiarios en estado Entregado";
            return View("../Beneficiarios/ListaBeneficiarios");
        }
        public virtual ActionResult Requerido( )
        {
              gestiones();
            ViewBag._estado = "REQUERIDO";
            ViewBag.descripcion = "Beneficiarios en Estado Requerido";
            return View("../Beneficiarios/ListaBeneficiarios");
        }
        public virtual ActionResult Revisado( )
        {
            gestiones();
             ViewBag._estado = "REVISADO";
             ViewBag.descripcion = "Pendiente de Autorizar";
             return View("../Beneficiarios/ListaBeneficiarios");
        }

        private void gestiones()
        {
            ViewBag._tipo = "N";
            ViewBag._item = DateTime.Now.Year;
             List<PAM_CATALAGO_GENERICO_DTO> lista = null;
            lista = PamServices.qry_CATALAGO_filtrado(new PAM_DTO.PAM_CATALAGO_GENERICO_DTO { NOMBRE_TABLA = "GESTIONES", VALOR = null });
            ViewBag._ddlGestiones = new SelectList(lista, "VALOR", "SIGNIFICADO");
        }

        
        
        public virtual ActionResult cargarlistas(string estado, int? anio = 0)
        {
            var lista = new List< PAM_BENEFICIARIOS_DTO>();
            switch (estado)
            {
                case "ENTREGADO":
                    lista =
                        BeneficiarioService.beneficiariosAnalista(
                            new PAM_BENEFICIARIOS_DTO()
                            { ESTADO = estado, GESTION = anio },
                            User.Identity.Name);
                    break;
                case "AUTORIZADO":
                    lista =
                        BeneficiarioService.beneficiariosAnalista(
                            new PAM_BENEFICIARIOS_DTO() { ESTADO = estado, GESTION = anio },
                            User.Identity.Name);
                    break;
                case "REVISADO":
                    lista =
                            BeneficiarioService.beneficiariosAnalista(
                                new PAM_BENEFICIARIOS_DTO() { ESTADO = estado, GESTION = anio },
                                User.Identity.Name);
                    break;
                case "SOLICITADO":
                    lista =
                             BeneficiarioService.beneficiariosAnalista(
                                 new PAM_BENEFICIARIOS_DTO() { ESTADO = estado, GESTION = anio },
                                 User.Identity.Name);
                    break;
                case "REQUERIDO":
                    lista =
                         BeneficiarioService.beneficiariosAnalista(
                             new PAM_BENEFICIARIOS_DTO() { ESTADO = estado, GESTION = anio },
                             User.Identity.Name);
                    break;

            }
            ViewBag.tipo = "N";
            return PartialView("../Beneficiarios/_ListaBeneficiarios", lista);
        }

        [HttpPost]
        public virtual JsonResult cargarData(string  ajuste)
        {
             
              var rubros = CatalogoService.obtenerTablaPorTipo("RUBROS", "N");
            if (ajuste == "false" )
            { 
              var departamentos = CatalogoService.departamentos();
              var gestion = DateTime.Now.Year;
              var oficinas = CatalogoService.obtenerTabla("OFICINA");
                    return new { departamentos, oficinas, rubros, gestion }.json();
            }
            else
            {
                
               return new {  rubros }.json();
                 
                
            }
         
        }

        [HttpPost]
        public virtual JsonResult guardar(RegistroBeneficiarioNatural registro)
        {
            new TextWizardHelper().rtn = registro.rtn;
            registro.estado = "EN_REGISTRO";
            registro.penalizacion = 0;
            registro.omitirTracking = true;
             var result = BeneficiarioService.GuardarRegistroBeneficiarioNatural(registro);
              if (result.isValid  )
            {
                sendEmail(registro, result);
                
            }
            var formatoMensaje = "";
            foreach (var mensaje in result.mensajes)
            {
                formatoMensaje = mensaje + "\n";
            }


        //    return Json(new ResultAnalisis("Los datos se guadaron correctamente \n" + mensaje, "Beneficiarios/Consulta_Beneficiario?idBeneficiario=" + beneficiario, true, null));

            return new { isValid = result.isValid, mensaje = formatoMensaje, numeroSolicitud = result.data, estado =  registro.estado , idBeneficiario = result.id    }.json();

        }

       


        [HttpPost]
        public virtual JsonResult modificar(RegistroBeneficiarioNatural registro)
        {
            new TextWizardHelper().rtn = registro.rtn;
          
            var result = BeneficiarioService.modificarRegistroBeneficiarioNatural(registro);
            var formatoMensaje = "";
            foreach (var mensaje in result.mensajes)
            {
                formatoMensaje = mensaje + "\n";
            }
            return new { isValid = result.isValid, mensaje = formatoMensaje, numeroSolicitud = result.data }.json();

        
        }

        [HttpPost]
        public virtual JsonResult eliminarRubros(RubrosSubrubros dato, string numsol, string justific)
        {
            var rub =dato.rubro.key;
            var subrub = dato.subrubro.key;

            var result = BeneficiarioService.eliminarRub(new PAM_RUB_PERS_NAT_DTO() { RUBRO = rub , SUB_RUBRO = subrub}, new PAM_BENEFICIARIOS_DTO() {NUMERO_SOLICITUD = numsol , justificacion = justific });
            var formatoMensaje = "";
            foreach (var mensaje in result.mensajes)
            {
                formatoMensaje = mensaje + "\n";
            }
            return new { isValid = result.isValid, mensaje = formatoMensaje, numeroSolicitud = result.data }.json();


        }

        [HttpGet]
        [EncryptedParameter]
        public virtual  ActionResult BeneficiariosReporte(ParametroRegistro parametro)
          {
              return PartialView("BenNaturalReporte", new RegistroBeneficiarioNatural() { idBeneficiario  = parametro.obtenerIdBenficiario()  });
    
        }

        [HttpGet]
       
        public ActionResult BenefNaturalReporte(int idBeneficiario)
        {
            return PartialView("BenNaturalReporte", new RegistroBeneficiarioNatural() { idBeneficiario = idBeneficiario  });

        }

        private void sendEmail(RegistroBeneficiarioNatural registro, PAM_Validacion result)
        {
            var correo = new Email();
            correo.From("AdminPAMEH@sefin.gob.hn");
            correo.Subject("SOLICITUD DE PERSONA NATURAL : " + result.data);
            correo.Body(
                string.Format(
                    @"<div><h2>Sr(a). Beneficiario </h2><p>La solicitud {0} se encuentra en estado {1} con fecha de registro {2}</p></div>",
                    result.data, registro.estado, DateTime.Now.ToString("dd/MM/yyyy")));

            var correos = registro.actores.Select(x => x.CORREO_ELECTRONICO).ToList();
            correos.Add(registro.correo);
            correo.To(correos.ToArray());
            SenderEmail.send(correo);
        }
    }
}