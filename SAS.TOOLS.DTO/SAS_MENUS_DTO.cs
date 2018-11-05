using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SAS.TOOLS.DTO
{
   public class SAS_MENUS_DTO
    {

        public int ID_MENU { get; set; }
        public int ID_SISTEMA { get; set; }
        public string NOMBRE_MENU { get; set; }
        public int ID_MENU_PADRE { get; set; }
        public short ORDEN { get; set; }
        public string JERARQUIA { get; set; }
        public string METODO { get; set; }
        public string DESC_MENU { get; set; }
        public string TIPO_MENU { get; set; }
        public string ICO_MENU { get; set; }
        public string TOOLTIP { get; set; }
        public string VIGENTE { get; set; }
        public string HABILITADO { get; set; }
        public string API_ESTADO { get; set; }
        public string API_TRANSACCION { get; set; }
        public string USU_CRE { get; set; }
        public System.DateTime FEC_CRE { get; set; }
        public string USU_MOD { get; set; }
        public Nullable<System.DateTime> FEC_MOD { get; set; }

    }
}
