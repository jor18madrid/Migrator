using SAS.TOOLS.DA;
using SAS.TOOLS.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SAS.TOOLS.MAPPERS
{
   public static class SAS_SISTEMAS_MAPPER
    {
        public static SAS_SISTEMAS_DTO ToDto(this SAS_SISTEMAS Entity)
        {
            var dto = new SAS_SISTEMAS_DTO();

            dto.DESCRIPCION_SISTEMA = Entity.DESCRIPCION_SISTEMA;
            dto.ID_SISTEMA = Entity.ID_SISTEMA;

            return dto;
               
        }


        public static List<SAS_SISTEMAS_DTO> ToDtoList(this List<SAS_SISTEMAS> Lista)
        {
            var todtolist = new List<SAS_SISTEMAS_DTO>();
            foreach (var item in Lista)
            {
                todtolist.Add(item.ToDto());
            }
            return todtolist;
        }
    }
}
