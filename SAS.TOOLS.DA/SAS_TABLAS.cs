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
    
    public partial class SAS_TABLAS
    {
        public SAS_TABLAS()
        {
            this.SAS_TABLAS_COLUMNAS = new HashSet<SAS_TABLAS_COLUMNAS>();
            this.SAS_FLUJOS_TABLAS = new HashSet<SAS_FLUJOS_TABLAS>();
        }
    
        public int ID_SISTEMA { get; set; }
        public int ID_TABLA { get; set; }
        public string NOMBRE_TABLA { get; set; }
        public string ALIAS_TABLA { get; set; }
        public string DESC_TABLA { get; set; }
        public string OWNER { get; set; }
        public string VIGENTE { get; set; }
        public string API_ESTADO { get; set; }
        public string API_TRANSACCION { get; set; }
        public string USU_CRE { get; set; }
        public System.DateTime FEC_CRE { get; set; }
        public string USU_MOD { get; set; }
        public Nullable<System.DateTime> FEC_MOD { get; set; }
    
        public virtual ICollection<SAS_TABLAS_COLUMNAS> SAS_TABLAS_COLUMNAS { get; set; }
        public virtual SAS_SISTEMAS SAS_SISTEMAS { get; set; }
        public virtual ICollection<SAS_FLUJOS_TABLAS> SAS_FLUJOS_TABLAS { get; set; }
    }
}