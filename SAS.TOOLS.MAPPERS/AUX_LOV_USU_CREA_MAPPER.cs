using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SAS.TOOLS.DTO.IDM_DTO;
using SAS.TOOLS.DTO;
using System.Runtime.Remoting.Contexts;

namespace SAS.TOOLS.MAPPERS
{
    public static class AUX_LOV_USU_CREA_MAPPER
    {
        public static AUX_LOV_USU_CREA_DTO ToAux (this IDM_PERSONAS_DTO Persona)
        {
            var AuxLov = new AUX_LOV_USU_CREA_DTO();
            //{
            AuxLov.PRIMER_NOMBRE = Persona.PRIMER_NOMBRE;
            AuxLov.SEGUNDO_NOMBRE = Persona.SEGUNDO_NOMBRE;
            AuxLov.PRIMER_APELLIDO = Persona.PRIMER_APELLIDO;
            AuxLov.SEGUNDO_APELLIDO = Persona.SEGUNDO_APELLIDO;
            AuxLov.FECHA_NACIMIENTO = Persona.FECHA_NACIMIENTO;
            //FECHA_ELABORACION = Persona.FECHA_ELABORACION,
            AuxLov.SEXO = Persona.SEXO;
            AuxLov.PAIS_ID = Persona.PAIS_ID;
            AuxLov.TIPO_ID = Persona.TIPO_ID;
            AuxLov.NRO_ID = Persona.NRO_ID;
            AuxLov.DIRECCION = Persona.DIRECCION;
            AuxLov.CORREO = Persona.CORREO;
            AuxLov.TELEFONO = Persona.TELEFONO;
            AuxLov.CELULAR = Persona.CELULAR;
            AuxLov.VIGENTE = (Persona.VIGENTE == "true" ? "S" : "N");
            AuxLov.NOMBRE_USUARIO = Persona.PRIMER_NOMBRE + " " + Persona.SEGUNDO_NOMBRE + " " + Persona.PRIMER_APELLIDO + " " + Persona.SEGUNDO_APELLIDO;
            AuxLov.PUESTO = Persona.PUESTO;
            AuxLov.NIVEL_USUARIO_ID = Convert.ToInt32( Persona.Usuario.NIVEL_USUARIO_ID);
            AuxLov.TIPO_USUARIO_ID = Persona.Usuario.TIPO_USUARIO_ID;
            AuxLov.SISTEMA_ID = Persona.Sistema.ID_SISTEMA;
            AuxLov.Perfil_Grupo = Persona.Perfiles_Grupos;
            AuxLov.ID = Convert.ToInt32(Persona.PERSONA_ID);
            AuxLov.ID_GRUPO_CAB = Persona.ID_GRUPO_CAB;
            //};
            return AuxLov;
        }
    }
}
