using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SAS.TOOLS.DTO
{
  public  class SAS_DDL_VIEW_DTO
    {
        [Display(Name = "ID Sistema")]
        public int ID_SISTEMA { get; set; }
        public int ID_FORMATO { get; set; }
        public int ID_ORIGEN { get; set; }
        public int ID_DESTINO { get; set; }
        
    }
}
