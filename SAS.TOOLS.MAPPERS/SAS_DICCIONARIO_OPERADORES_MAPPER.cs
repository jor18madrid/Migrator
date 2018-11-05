using SAS.TOOLS.DTO;
using SAS.TOOLS.DA;
using System.Collections.Generic;

namespace SAS.TOOLS.MAPPERS
{
    public static class SAS_DICCIONARIO_OPERADORES_MAPPER
    {


        public static SAS_DICCIONARIO_OPERADORES_DTO  ToDto(SAS_DICCIONARIO_OPERADORES Entity )
        {
            var dto = new SAS_DICCIONARIO_OPERADORES_DTO();


            dto.ID_OPERADOR = Entity.ID_OPERADOR;
            dto.ID_SISTEMA = Entity.ID_SISTEMA;
            dto.NOMBRE_OPERADOR= Entity.NOMBRE_OPERADOR;
            dto.SIMBOLO = Entity.SIMBOLO;
            dto.DESCRIPCION = Entity.DESCRIPCION;
            dto.STATEMENT = Entity.STATEMENT;
            dto.VIGENTE = Entity.VIGENTE;
            dto.API_ESTADO = Entity.API_ESTADO;
            dto.API_TRANSACCION = Entity.API_TRANSACCION;
            dto.USU_CRE = Entity.USU_CRE;
            dto.FEC_CRE = Entity.FEC_CRE;
            dto.USU_MOD = Entity.USU_MOD;

            return dto;
        }



        public static List<SAS_DICCIONARIO_OPERADORES_DTO> ToDtoList(this List<SAS_DICCIONARIO_OPERADORES> ListEntity)
        {
            List<SAS_DICCIONARIO_OPERADORES_DTO> dtos = new List<SAS_DICCIONARIO_OPERADORES_DTO>();
            foreach (var item in ListEntity)
            {

                //dtos.Add(item.ToDto());

            }
            return dtos;
        }




    }
}
