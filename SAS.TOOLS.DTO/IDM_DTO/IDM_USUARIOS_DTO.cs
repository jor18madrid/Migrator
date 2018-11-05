using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SAS.TOOLS.DTO.IDM_DTO
{
    public class IDM_USUARIOS_DTO
    {
        //public IDM_USUARIOS_DTO() { }

        //private decimal _USUARIO_ID;
        [Display(Name = "ID Usuario")]
        public decimal USUARIO_ID { get; set; }
        [Display(Name = "FEcha Elaboracion")]
        public System.DateTime FECHA_ELABORACION { get; set; }
        [Display(Name = "Nombre de Usuario")]
        public string NOMBRE_USUARIO { get; set; }
        [Display(Name = "Nickname Usuario")]
        public string NICK_USUARIO { get; set; }




        [Display(Name = "Tipo Usuario")]
        public string TIPO_USUARIO_ID { get; set; }




        [Display(Name = "Nivel de Usuario")]
        public Nullable<decimal> NIVEL_USUARIO_ID { get; set; }




        [Display(Name = "ID Persona")]
        public Nullable<decimal> PERSONA_ID { get; set; }
        [Display(Name = "Puesto")]
        public string PUESTO { get; set; }
        [Display(Name = "Vigente")]
        public string VIGENTE { get; set; }
        public string API_ESTADO { get; set; }
        public string API_TRANSACCION { get; set; }
        public string USU_CRE { get; set; }
        public System.DateTime FEC_CRE { get; set; }
        public string USU_MOD { get; set; }
        public Nullable<System.DateTime> FEC_MOD { get; set; }
    }
}
