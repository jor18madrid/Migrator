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
    
    public partial class SAS_ACCIONES
    {
        public SAS_ACCIONES()
        {
            this.SAS_FLUJOS_OPE_ACCIONES = new HashSet<SAS_FLUJOS_OPE_ACCIONES>();
        }
    
        public int ID_ACCION { get; set; }
        public string ACCION { get; set; }
        public string NOMBRE_ACCION { get; set; }
        public string DESC_ACCION { get; set; }
        public int ID_SISTEMA { get; set; }
        public string APLICACION { get; set; }
        public string CAPA { get; set; }
        public string VIGENTE { get; set; }
        public string API_ESTADO { get; set; }
        public string API_TRANSACCION { get; set; }
        public string USU_CRE { get; set; }
        public System.DateTime FEC_CRE { get; set; }
        public string USU_MOD { get; set; }
        public Nullable<System.DateTime> FEC_MOD { get; set; }
    
        public virtual ICollection<SAS_FLUJOS_OPE_ACCIONES> SAS_FLUJOS_OPE_ACCIONES { get; set; }
        public virtual SAS_SISTEMAS SAS_SISTEMAS { get; set; }
    }
}