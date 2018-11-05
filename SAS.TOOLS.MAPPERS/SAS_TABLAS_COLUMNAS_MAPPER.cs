using SAS.TOOLS.DA;
using SAS.TOOLS.DTO;
using System.Collections.Generic;

namespace SAS.TOOLS.MAPPERS
{
    public static class SAS_TABLAS_COLUMNAS_MAPPER
    {

        public static SAS_TABLAS_COLUMNAS_DTO ToDto(this SAS_TABLAS_COLUMNAS Entity)
        {

            var dto = new SAS_TABLAS_COLUMNAS_DTO();


            dto.ID_SISTEMA = Entity.ID_SISTEMA;
            dto.ID_TABLA = Entity.ID_TABLA;
            dto.ID_COLUMNA = Entity.ID_COLUMNA;
            dto.NOMBRE_COLUMNA = Entity.NOMBRE_COLUMNA;
            dto.COMENTARIO = Entity.COMENTARIO;
            dto.VIGENTE = Entity.VIGENTE;
            dto.API_ESTADO = Entity.API_ESTADO;
            dto.API_TRANSACCION = Entity.API_TRANSACCION;
            dto.USU_CRE = Entity.USU_CRE;
            dto.FEC_CRE = Entity.FEC_CRE;
            dto.USU_MOD = Entity.USU_MOD;
            dto.FEC_MOD = Entity.FEC_MOD;
            

            return dto;
        }



        public static List<SAS_TABLAS_COLUMNAS_DTO> ToDtoList(this List<SAS_TABLAS_COLUMNAS> ListEntity)
        {
            List<SAS_TABLAS_COLUMNAS_DTO> dtos = new List<SAS_TABLAS_COLUMNAS_DTO>();
            foreach (var item in ListEntity)
            {
                dtos.Add(item.ToDto());
            }
            return dtos;
        }




    }
}
