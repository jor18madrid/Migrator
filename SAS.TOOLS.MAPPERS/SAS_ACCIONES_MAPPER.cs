using SAS.TOOLS.DA;
using SAS.TOOLS.DTO;
using System.Collections.Generic;

namespace SAS.TOOLS.MAPPERS
{
    public static class SAS_ACCIONES_MAPPER
    {

        public static SAS_ACCIONES_DTO ToDto (this SAS_ACCIONES Entity)
        {

            var dto = new SAS_ACCIONES_DTO();
            dto.ID_ACCION = Entity.ID_ACCION;
            dto.ACCION = Entity.ACCION;
            dto.NOMBRE_ACCION = Entity.NOMBRE_ACCION;
            dto.DESC_ACCION = Entity.DESC_ACCION;
            dto.ID_SISTEMA = Entity.ID_SISTEMA;
            dto.APLICACION = Entity.APLICACION;
            dto.CAPA = Entity.CAPA;
            dto.VIGENTE = Entity.VIGENTE;
            dto.API_ESTADO = Entity.API_ESTADO;
            dto.API_TRANSACCION = Entity.API_TRANSACCION;
            dto.USU_CRE = Entity.USU_CRE;
            dto.FEC_CRE = Entity.FEC_CRE ;
            dto.USU_MOD = Entity.USU_MOD;
            dto.FEC_MOD = Entity.FEC_CRE;
            return dto;
        }

        public static List<SAS_ACCIONES_DTO> ToDtoList(this List<SAS_ACCIONES> ListEntity)
        {
            List<SAS_ACCIONES_DTO> dtos = new List<SAS_ACCIONES_DTO>();
            foreach (var item in ListEntity)
            {
                dtos.Add(item.ToDto());
            }
            return dtos;
        }


    }
}
