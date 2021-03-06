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
    
    public partial class SAS_SOLUSR_PERFIL
    {
        public SAS_SOLUSR_PERFIL()
        {
            this.SAS_SOLUSR_PERFIL_GRUPO = new HashSet<SAS_SOLUSR_PERFIL_GRUPO>();
        }
    
        public int NRO_DOCUMENTO { get; set; }
        public int ID_ACCESO { get; set; }
        public int ID_SISTEMA { get; set; }
        public int ID_PERFIL { get; set; }
        public string USUARIO { get; set; }
        public string POR_DEFECTO { get; set; }
        public string RESTRICCION { get; set; }
        public string VIGENTE { get; set; }
        public string API_ESTADO { get; set; }
        public string API_TRANSACCION { get; set; }
        public string USU_CRE { get; set; }
        public System.DateTime FEC_CRE { get; set; }
        public string USU_MOD { get; set; }
        public Nullable<System.DateTime> FEC_MOD { get; set; }
    
        public virtual SAS_PERFILES SAS_PERFILES { get; set; }
        public virtual SAS_SISTEMAS SAS_SISTEMAS { get; set; }
        public virtual SAS_SOLICITUD_USUARIO SAS_SOLICITUD_USUARIO { get; set; }
        public virtual ICollection<SAS_SOLUSR_PERFIL_GRUPO> SAS_SOLUSR_PERFIL_GRUPO { get; set; }
    }
}
