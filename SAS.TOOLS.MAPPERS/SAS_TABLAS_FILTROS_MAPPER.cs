using SAS.TOOLS.DTO;
using SAS.TOOLS.DA;
using System.Collections.Generic;

namespace SAS.TOOLS.MAPPERS
{
    public static class SAS_TABLAS_FILTROS_MAPPER
    {

        public static SAS_TABLAS_FILTROS_DTO ToDto(this SAS_TABLAS_FILTROS Entity)
        {

            var dto = new SAS_TABLAS_FILTROS_DTO();
            dto.ID_SISTEMA = Entity.ID_SISTEMA;
            dto.ID_COLUMNA = Entity.ID_COLUMNA;
            dto.ID_FILTRO = Entity.ID_FILTRO;
            dto.VIGENTE = Entity.VIGENTE;
            dto.API_ESTADO = Entity.API_ESTADO;
            dto.API_TRANSACCION = Entity.API_TRANSACCION;
            dto.USU_CRE = Entity.USU_CRE;
            dto.FEC_CRE = Entity.FEC_CRE;
            dto.USU_MOD = Entity.USU_MOD;
            dto.FEC_MOD = Entity.FEC_MOD;
            return dto;
        }


        public static List<SAS_TABLAS_FILTROS_DTO> ToDtoList(this List<SAS_TABLAS_FILTROS> ListEntity)
        {
            List<SAS_TABLAS_FILTROS_DTO> dtos = new List<SAS_TABLAS_FILTROS_DTO>();
            foreach (var item in ListEntity)
            {
                dtos.Add(item.ToDto());
            }
            return dtos;
        }



    }
}
