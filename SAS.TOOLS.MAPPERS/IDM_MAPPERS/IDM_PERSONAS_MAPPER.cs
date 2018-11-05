using SAS.TOOLS.DA;
using SAS.TOOLS.DTO.IDM_DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SAS.TOOLS.MAPPERS.IDM_MAPPERS
{
        public static class IDM_PERSONAS_DTO_MAPPER
        {
            public static IDM_PERSONAS_DTO ToDTO(this IDM_PERSONAS Entity)
            {
                var dto = new IDM_PERSONAS_DTO()
                {
                    PERSONA_ID = Entity.PERSONA_ID,
                    PRIMER_NOMBRE = Entity.PRIMER_NOMBRE,
                    SEGUNDO_NOMBRE = Entity.SEGUNDO_NOMBRE,
                    PRIMER_APELLIDO = Entity.PRIMER_APELLIDO,
                    SEGUNDO_APELLIDO = Entity.SEGUNDO_APELLIDO,
                    FECHA_NACIMIENTO = Entity.FECHA_NACIMIENTO,
                    SEXO = Entity.SEXO,
                    VIGENTE = Entity.VIGENTE,
                    PAIS_ID = Entity.PAIS_ID,
                    DIRECCION = Entity.DIRECCION,
                    CORREO = Entity.CORREO,
                    TELEFONO = Entity.TELEFONO,
                    CELULAR = Entity.CELULAR,
                };
                return dto;
            }

            public static IDM_PERSONAS ToEntity(this IDM_PERSONAS_DTO dto)
            {
                var entity = new IDM_PERSONAS()
                {
                    PERSONA_ID = dto.PERSONA_ID,
                    PRIMER_NOMBRE = dto.PRIMER_NOMBRE,
                    SEGUNDO_NOMBRE = dto.SEGUNDO_NOMBRE,
                    PRIMER_APELLIDO = dto.PRIMER_APELLIDO,
                    SEGUNDO_APELLIDO = dto.SEGUNDO_APELLIDO,
                    FECHA_NACIMIENTO = dto.FECHA_NACIMIENTO,
                    SEXO = dto.SEXO,
                    VIGENTE = dto.VIGENTE,
                    PAIS_ID = dto.PAIS_ID,
                    DIRECCION = dto.DIRECCION,
                    CORREO = dto.CORREO,
                    TELEFONO = dto.TELEFONO,
                    CELULAR = dto.CELULAR,
                };
                return entity;
            }
        }
}
