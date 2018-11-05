using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace SAS.TOOLS.DTO.IDM_DTO
{
    public class IDM_PERSONAS_DTO
    {
        public IDM_PERSONAS_DTO() { }

        [Display(Name = "Persona ID")]
        public decimal PERSONA_ID { get; set; }
        [Display(Name = "Primer Nombre")]
        public string PRIMER_NOMBRE { get; set; }
        [Display(Name = "Segundo Nombre")]
        public string SEGUNDO_NOMBRE { get; set; }
        [Display(Name = "Primer Apellido")]
        public string PRIMER_APELLIDO { get; set; }
        [Display(Name = "Segundo Apellido")]
        public string SEGUNDO_APELLIDO { get; set; }
        [Display(Name = "Fecha de Nacimiento")]
        public System.DateTime FECHA_NACIMIENTO { get; set; }
        [Display(Name = "Fecha de Elaboracion")]
        public System.DateTime FECHA_ELABORACION { get; set; }
        [Display(Name = "Sexo")]
        public string SEXO { get; set; }
        [Display(Name = "Pais Id")]
        public string PAIS_ID { get; set; }
        [Display(Name = "Tipo Id")]
        public string TIPO_ID { get; set; }
        [Display(Name = "Numero ID")]
        public string NRO_ID { get; set; }
        [Display(Name = "Direccion")]
        public string DIRECCION { get; set; }
        [Display(Name = "Correo")]
        public string CORREO { get; set; }
        [Display(Name = "Telefono")]
        public string TELEFONO { get; set; }
        [Display(Name = "Celular")]
        public string CELULAR { get; set; }
        public string GLOSA { get; set; }
        [Display(Name = "Vigente")]
        public string VIGENTE { get; set; }
        public string API_ESTADO { get; set; }
        public string API_TRANSACCION { get; set; }
        public string USU_CRE { get; set; }
        public System.DateTime FEC_CRE { get; set; }
        public string USU_MOD { get; set; }
        [Display(Name = "Puesto")]
        public string PUESTO { get; set; }
        public int optAction { get; set; }
        public string nombreArchivo { get; set; } 
        public int ID_GRUPO_CAB { get; set; }
        public Nullable<System.DateTime> FEC_MOD { get; set; }
        public IDM_USUARIOS_DTO Usuario { get; set; }
        //public Usu Usuario { get; set; }

        public List<AUX_LOV_PERFILES_GRUPOS_DTO> Perfiles_Grupos { get; set; }
        public Sys Sistema { get; set; }
    }

    public class Usu
    {
        private string TIPO_USUARIO_ID;
        private Nullable<decimal> NIVEL_USUARIO_ID;

        public string TIPO_USUARIO_ID_
        {
            get
            {
                return TIPO_USUARIO_ID;
            }

            set
            {
                TIPO_USUARIO_ID = value;
            }
        }

        public decimal? NIVEL_USUARIO_ID_
        {
            get
            {
                return NIVEL_USUARIO_ID;
            }

            set
            {
                NIVEL_USUARIO_ID = value;
            }
        }
    }



    public class Sys
    {
        private int _ID_SISTEMA;
        private string _DESCRIPCION_SISTEMA;

        public int ID_SISTEMA
        {
            get
            {
                return _ID_SISTEMA;
            }
            set
            {
                _ID_SISTEMA = value;
            }
        }
        public string DESCRIPCION_SISTEMA
        {
            get
            {
                return _DESCRIPCION_SISTEMA;
            }
            set
            {
                _DESCRIPCION_SISTEMA = value;
            }
        }
    }
}
