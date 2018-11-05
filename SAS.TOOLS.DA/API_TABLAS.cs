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
    
    public partial class API_TABLAS
    {
        public API_TABLAS()
        {
            this.API_ESTADOS = new HashSet<API_ESTADOS>();
            this.API_TABLAS_ATRIBUTOS = new HashSet<API_TABLAS_ATRIBUTOS>();
            this.API_TRANSICIONES = new HashSet<API_TRANSICIONES>();
            this.API_TRANSACCIONES = new HashSet<API_TRANSACCIONES>();
        }
    
        public string TABLA { get; set; }
        public string APLICACION { get; set; }
        public byte[] DIAGRAMA_DE_TRANSICION { get; set; }
        public string API_ESTADO { get; set; }
        public string API_TRANSACCION { get; set; }
        public string USU_CRE { get; set; }
        public System.DateTime FEC_CRE { get; set; }
        public string USU_MOD { get; set; }
        public Nullable<System.DateTime> FEC_MOD { get; set; }
    
        public virtual ICollection<API_ESTADOS> API_ESTADOS { get; set; }
        public virtual ICollection<API_TABLAS_ATRIBUTOS> API_TABLAS_ATRIBUTOS { get; set; }
        public virtual ICollection<API_TRANSICIONES> API_TRANSICIONES { get; set; }
        public virtual ICollection<API_TRANSACCIONES> API_TRANSACCIONES { get; set; }
    }
}
