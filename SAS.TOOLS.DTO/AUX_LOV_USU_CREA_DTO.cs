using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SAS.TOOLS.DTO
{
    public class AUX_LOV_USU_CREA_DTO
    {
        public AUX_LOV_USU_CREA_DTO() { }

        public int ID { get; set; }
        public string PRIMER_NOMBRE { get; set; }
        public string SEGUNDO_NOMBRE { get; set; }
        public string PRIMER_APELLIDO { get; set; }
        public string SEGUNDO_APELLIDO { get; set; }
        public System.DateTime FECHA_NACIMIENTO { get; set; }
        //public System.DateTime FECHA_ELABORACION { get; set; }
        public string SEXO { get; set; }
        public string PAIS_ID { get; set; }
        public string TIPO_ID { get; set; }
        public string NRO_ID { get; set; }
        public string DIRECCION { get; set; }
        public string CORREO { get; set; }
        public string TELEFONO { get; set; }
        public string CELULAR { get; set; }
        public string VIGENTE { get; set; }
        public string NOMBRE_USUARIO { get; set; }
        public string TIPO_USUARIO_ID { get; set; }
        public int NIVEL_USUARIO_ID { get; set; }
        public string PUESTO { get; set; }
        public int SISTEMA_ID { get; set; }
        public int SECUENCIA { get; set; }
        public int ID_ACCESO { get; set; }
        public int ID_GRUPO_CAB { get; set; }
        public List<AUX_LOV_PERFILES_GRUPOS_DTO> Perfil_Grupo { get; set; }

    }
}
