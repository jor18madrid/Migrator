//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SAS.TOOLS.DA
{
    using System;
    using System.Collections.Generic;
    
    public partial class IDM_PERSONAS
    {
        public IDM_PERSONAS()
        {
            this.IDM_FICHAS_REG = new HashSet<IDM_FICHAS_REG>();
            this.IDM_FICHAS_REG1 = new HashSet<IDM_FICHAS_REG>();
            this.IDM_USUARIOS = new HashSet<IDM_USUARIOS>();
        }
    
        public decimal PERSONA_ID { get; set; }
        public string PRIMER_NOMBRE { get; set; }
        public string SEGUNDO_NOMBRE { get; set; }
        public string PRIMER_APELLIDO { get; set; }
        public string SEGUNDO_APELLIDO { get; set; }
        public System.DateTime FECHA_NACIMIENTO { get; set; }
        public System.DateTime FECHA_ELABORACION { get; set; }
        public string SEXO { get; set; }
        public string PAIS_ID { get; set; }
        public string TIPO_ID { get; set; }
        public string NRO_ID { get; set; }
        public string DIRECCION { get; set; }
        public string CORREO { get; set; }
        public string TELEFONO { get; set; }
        public string CELULAR { get; set; }
        public string GLOSA { get; set; }
        public string VIGENTE { get; set; }
        public string API_ESTADO { get; set; }
        public string API_TRANSACCION { get; set; }
        public string USU_CRE { get; set; }
        public System.DateTime FEC_CRE { get; set; }
        public string USU_MOD { get; set; }
        public Nullable<System.DateTime> FEC_MOD { get; set; }
    
        public virtual ICollection<IDM_FICHAS_REG> IDM_FICHAS_REG { get; set; }
        public virtual ICollection<IDM_FICHAS_REG> IDM_FICHAS_REG1 { get; set; }
        public virtual ICollection<IDM_USUARIOS> IDM_USUARIOS { get; set; }
    }
}