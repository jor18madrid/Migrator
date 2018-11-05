using SAS.TOOLS.DA;
using SAS.TOOLS.DTO.IDM_DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SAS.TOOLS.MAPPERS.IDM_MAPPERS
{
    public static class IDM_USUARIOS_TIPOS_MAPPER
    {

        public static IDM_USUARIOS_TIPOS_DTO ToDto(this IDM_USUARIOS_TIPOS Entity)
        {

            var dto = new IDM_USUARIOS_TIPOS_DTO();

            dto.TIPO_USUARIO_ID = Entity.TIPO_USUARIO_ID;
            dto.DESC_TIPO_USUARIO = Entity.DESC_TIPO_USUARIO;
            dto.SIGLAS_TIPO_USUARIO = Entity.SIGLAS_TIPO_USUARIO;
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

        public static List<IDM_USUARIOS_TIPOS_DTO> ToDtoList(this List<IDM_USUARIOS_TIPOS> ListEntity)
        {
            List<IDM_USUARIOS_TIPOS_DTO> dtos = new List<IDM_USUARIOS_TIPOS_DTO>();
            foreach (var item in ListEntity)
            {
                dtos.Add(item.ToDto());
            }
            return dtos;
        }

    }
}
