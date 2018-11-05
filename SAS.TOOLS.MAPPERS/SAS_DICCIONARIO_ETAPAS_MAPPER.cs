using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SAS.TOOLS.DA;
using SAS.TOOLS.DTO;

namespace SAS.TOOLS.MAPPERS
{
    public static class SAS_DICCIONARIO_ETAPAS_MAPPER
    {

        public static SAS_DICCIONARIO_ETAPAS_DTO ToDto(this SAS_DICCIONARIO_ETAPAS Entity)
        {
            var dto = new SAS_DICCIONARIO_ETAPAS_DTO();
            
            dto.ID_ETAPA = Entity.ID_ETAPA ;
            dto.ID_SISTEMA = Entity.ID_SISTEMA;
            dto.NOMBRE_ETAPA = Entity.NOMBRE_ETAPA;
            dto.DESC_ETAPA = Entity.DESC_ETAPA;
            dto.VIGENTE = Entity.VIGENTE;
            dto.API_ESTADO = Entity.API_ESTADO;
            dto.API_TRANSACCION = Entity.API_TRANSACCION;
            dto.USU_CRE = Entity.USU_CRE;
            dto.FEC_CRE = Entity.FEC_CRE;
            dto.USU_MOD = Entity.USU_MOD;
            

            return dto;
        }


        public static List<SAS_DICCIONARIO_ETAPAS_DTO> ToDtoList(this List<SAS_DICCIONARIO_ETAPAS> ListEntity)
        {
            List<SAS_DICCIONARIO_ETAPAS_DTO> dtos = new List<SAS_DICCIONARIO_ETAPAS_DTO>();
            foreach (var item in ListEntity)
            {
                dtos.Add( item.ToDto());
            }
            return dtos;
        }


    }
}
