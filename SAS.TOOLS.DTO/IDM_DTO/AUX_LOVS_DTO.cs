using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SAS.TOOLS.DTO.IDM_DTO
{
    
        public class AUX_LOVS_DTO
        {
        
        public string PK { get; set; }
        public Nullable<decimal> LLAVE { get; set; }
        public string CODIGO { get; set; }
        public string DESCRIPCION { get; set; }
        public string ESTADO { get; set; }
        public string CLASIFICADOR { get; set; }
    }
    
    
}

