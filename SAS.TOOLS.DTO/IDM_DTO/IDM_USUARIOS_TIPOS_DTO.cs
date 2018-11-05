using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SAS.TOOLS.DTO.IDM_DTO
{
    public class IDM_USUARIOS_TIPOS_DTO
    {
        public string TIPO_USUARIO_ID { get; set; }
        public string DESC_TIPO_USUARIO { get; set; }
        public string SIGLAS_TIPO_USUARIO { get; set; }
        public System.DateTime FECHA_ELABORACION { get; set; }
        public string VIGENTE { get; set; }
        public string API_ESTADO { get; set; }
        public string API_TRANSACCION { get; set; }
        public string USU_CRE { get; set; }
        public System.DateTime FEC_CRE { get; set; }
        public string USU_MOD { get; set; }
        public Nullable<System.DateTime> FEC_MOD { get; set; }
    }
}
