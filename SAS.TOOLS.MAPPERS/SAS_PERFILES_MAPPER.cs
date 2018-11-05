using SAS.TOOLS.DTO;
using SAS.TOOLS.DA;
using System.Collections.Generic;

namespace SAS.TOOLS.MAPPERS
{
    public static class SAS_PERFILES_MAPPER
    {



        public static SAS_PERFILES_DTO ToDto(this SAS_PERFILES Entity)
        {


            var dto = new SAS_PERFILES_DTO();

            dto.ID_PERFIL = Entity.ID_PERFIL;
            dto.ID_SISTEMA = Entity.ID_SISTEMA;
            dto.NOMBRE_PERFIL = Entity.NOMBRE_PERFIL;
            dto.DESC_PERFIL = Entity.DESC_PERFIL;
            dto.TIPO_PERFIL = Entity.TIPO_PERFIL;
            dto.VIGENTE = Entity.VIGENTE;
            dto.API_ESTADO = Entity.API_ESTADO;
            dto.API_TRANSACCION = Entity.API_TRANSACCION;
            dto.USU_CRE = Entity.USU_CRE;
            dto.FEC_CRE = Entity.FEC_CRE;
            dto.USU_MOD = Entity.USU_MOD;
            dto.FEC_MOD = Entity.FEC_MOD;




        return dto;
    }

        public static List<SAS_PERFILES_DTO> ToDtoList(this List<SAS_PERFILES> ListEntity)
        {
            List<SAS_PERFILES_DTO> dtos = new List<SAS_PERFILES_DTO>();
            foreach (var item in ListEntity)
            {
                dtos.Add(item.ToDto());
            }
            return dtos;
        }



    }
}
