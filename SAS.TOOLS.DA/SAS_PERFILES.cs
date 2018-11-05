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
    
    public partial class SAS_PERFILES
    {
        public SAS_PERFILES()
        {
            this.SAS_ACCESOS_PERFILES = new HashSet<SAS_ACCESOS_PERFILES>();
            this.SAS_SOLUSR_PERFIL = new HashSet<SAS_SOLUSR_PERFIL>();
        }
    
        public int ID_PERFIL { get; set; }
        public int ID_SISTEMA { get; set; }
        public string NOMBRE_PERFIL { get; set; }
        public string DESC_PERFIL { get; set; }
        public string TIPO_PERFIL { get; set; }
        public string VIGENTE { get; set; }
        public string API_ESTADO { get; set; }
        public string API_TRANSACCION { get; set; }
        public string USU_CRE { get; set; }
        public System.DateTime FEC_CRE { get; set; }
        public string USU_MOD { get; set; }
        public Nullable<System.DateTime> FEC_MOD { get; set; }
    
        public virtual SAS_SISTEMAS SAS_SISTEMAS { get; set; }
        public virtual ICollection<SAS_ACCESOS_PERFILES> SAS_ACCESOS_PERFILES { get; set; }
        public virtual ICollection<SAS_SOLUSR_PERFIL> SAS_SOLUSR_PERFIL { get; set; }
    }
}
