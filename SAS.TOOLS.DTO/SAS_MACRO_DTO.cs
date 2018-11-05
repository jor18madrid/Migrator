using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SAS.TOOLS.DTO
{
   public class SAS_MACRO_DTO
    {
        public int ID_MACRO { get; set; }
        public string MACRO { get; set; }
        public string DESC { get; set; }
        public string ORIGEN { get; set; }
        public string STATEMENT { get; set; }
        //public int ORDEN { get; set; }
        public int  PRIORIDAD { get; set; }
        //public string REQUERIDO { get; set; }
        public string DTO { get; set; }
        public string ENTITY { get; set; }
        public string LAMBDAPROPNAME { get; set; }
        public int IDENTJ { get; set; }
        public int TIPEM { get; set; }
    }
}
