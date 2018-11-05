using System;
using SAS.TOOLS.DTO;
using SAS.TOOLS.DA;
using System.Collections.Generic;

namespace SAS.TOOLS.MAPPERS
{
    public static class SAS_FLUJOS_OPERACION_MAPPER
    {


        public static SAS_FLUJOS_OPERACION_DTO ToDto(this SAS_FLUJOS_OPERACION Entity) 
            {

            var dto = new SAS_FLUJOS_OPERACION_DTO();


            dto.ID_FLUJO = Entity.ID_FLUJO;
            dto.ID_OPERACION = Entity.ID_OPERACION;
            dto.DESC_OPERACION = Entity.DESC_OPERACION;
            dto.VIGENTE = Entity.VIGENTE;
            dto.API_ESTADO = Entity.API_ESTADO;
            dto.API_TRANSACCION = Entity.API_TRANSACCION;
            dto.USU_CRE = Entity.USU_CRE;
            dto.FEC_CRE = Entity.FEC_CRE;
            dto.USU_MOD = Entity.USU_MOD;
            dto.FEC_MOD = Entity.FEC_MOD;


        return dto;

    }

        public static List<SAS_FLUJOS_OPERACION_DTO> ToDtoList(this List<SAS_FLUJOS_OPERACION> ListEntity)
        {
            List<SAS_FLUJOS_OPERACION_DTO> dtos = new List<SAS_FLUJOS_OPERACION_DTO>();
            foreach (var item in ListEntity)
            {
                dtos.Add(item.ToDto());
            }
            return dtos;
        }






    }

}
