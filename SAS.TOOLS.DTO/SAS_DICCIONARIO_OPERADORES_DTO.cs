using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SAS.TOOLS.DTO
{
   public class SAS_DICCIONARIO_OPERADORES_DTO
    {

        public int ID_OPERADOR { get; set; }
        public int ID_SISTEMA { get; set; }
        public string NOMBRE_OPERADOR { get; set; }
        public string SIMBOLO { get; set; }
        public string DESCRIPCION { get; set; }
        public string STATEMENT { get; set; }
        public string VIGENTE { get; set; }
        public string API_ESTADO { get; set; }
        public string API_TRANSACCION { get; set; }
        public string USU_CRE { get; set; }
        public System.DateTime FEC_CRE { get; set; }
        public string USU_MOD { get; set; }


    }
}
