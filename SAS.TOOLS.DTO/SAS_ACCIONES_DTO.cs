
using System;

namespace SAS.TOOLS.DTO
{
    public class SAS_ACCIONES_DTO
    {
        public int ID_ACCION { get; set; }
        public string ACCION { get; set; }
        public string NOMBRE_ACCION { get; set; }
        public string DESC_ACCION { get; set; }
        public int ID_SISTEMA { get; set; }
        public string APLICACION { get; set; }
        public string CAPA { get; set; }
        public string VIGENTE { get; set; }
        public string API_ESTADO { get; set; }
        public string API_TRANSACCION { get; set; }
        public string USU_CRE { get; set; }
        public System.DateTime FEC_CRE { get; set; }
        public string USU_MOD { get; set; }
        public Nullable<System.DateTime> FEC_MOD { get; set; }

    }
}
