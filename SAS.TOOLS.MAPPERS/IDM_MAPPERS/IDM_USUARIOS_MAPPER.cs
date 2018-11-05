using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SAS.TOOLS.DA;
using SAS.TOOLS.DTO.IDM_DTO;

namespace SAS.TOOLS.MAPPERS.IDM_MAPPERS
{

    public static class IDM_USUARIOS_MAPPER
    {
        public static IDM_USUARIOS_DTO ToDTO(this IDM_USUARIOS Entity)
        {
            var dto = new IDM_USUARIOS_DTO()
            {
                USUARIO_ID = Entity.USUARIO_ID,
                FECHA_ELABORACION = Entity.FECHA_ELABORACION,
                NOMBRE_USUARIO = Entity.NOMBRE_USUARIO,
                NICK_USUARIO = Entity.NICK_USUARIO,
                TIPO_USUARIO_ID = Entity.TIPO_USUARIO_ID,
                NIVEL_USUARIO_ID = Entity.NIVEL_USUARIO_ID,
                PERSONA_ID = Entity.PERSONA_ID,
                PUESTO = Entity.PUESTO,
                VIGENTE = Entity.VIGENTE
            };
            return dto;
        }

        public static IDM_USUARIOS ToEntity(this IDM_USUARIOS_DTO dto)
        {
            var entity = new IDM_USUARIOS()
            {
                USUARIO_ID = dto.USUARIO_ID,
                FECHA_ELABORACION = dto.FECHA_ELABORACION,
                NOMBRE_USUARIO = dto.NOMBRE_USUARIO,
                NICK_USUARIO = dto.NICK_USUARIO,
                TIPO_USUARIO_ID = dto.TIPO_USUARIO_ID,
                NIVEL_USUARIO_ID = dto.NIVEL_USUARIO_ID,
                PERSONA_ID = dto.PERSONA_ID,
                PUESTO = dto.PUESTO,
                VIGENTE = dto.VIGENTE
            };
            return entity;
        }
    }

}
