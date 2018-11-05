using System.Collections.Generic;
using SAS.TOOLS.DA;
using SAS.TOOLS.DTO.IDM_DTO;

namespace SAS.TOOLS.MAPPERS.IDM_MAPPERS
{
    public static class IDM_USUARIOS_NIV_MAPPER
    {

        public static IDM_USUARIOS_NIV_DTO ToDto(this IDM_USUARIOS_NIV Entity)
        {
            var dto = new IDM_USUARIOS_NIV_DTO();
            dto.NIVEL_ID = Entity.NIVEL_ID;
            dto.DESC_NIVEL = Entity.DESC_NIVEL;
            dto.SIGLAS_NIVEL = Entity.SIGLAS_NIVEL;
            dto.FECHA_ELABORACION = Entity.FECHA_ELABORACION;
            dto.VIGENTE = Entity.VIGENTE;
            dto.API_ESTADO = Entity.API_ESTADO;
            dto.API_TRANSACCION = Entity.API_TRANSACCION;
            dto.USU_CRE = Entity.USU_CRE;
            dto.FEC_CRE = Entity.FEC_CRE;
            dto.USU_MOD = Entity.USU_MOD;
            dto.FEC_MOD = Entity.FEC_CRE;
            return dto;
        }

        public static List<IDM_USUARIOS_NIV_DTO> ToDtoList(this List<IDM_USUARIOS_NIV> ListEntity)
        {
            List<IDM_USUARIOS_NIV_DTO> dtos = new List<IDM_USUARIOS_NIV_DTO>();
            foreach (var item in ListEntity)
            {
                dtos.Add(item.ToDto());
            }
            return dtos;
        }


    }
}
