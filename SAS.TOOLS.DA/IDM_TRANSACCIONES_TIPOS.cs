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
    
    public partial class IDM_TRANSACCIONES_TIPOS
    {
        public IDM_TRANSACCIONES_TIPOS()
        {
            this.IDM_TIPO_TRANSACCION_STMT = new HashSet<IDM_TIPO_TRANSACCION_STMT>();
            this.IDM_TRANSACCIONES_CAB = new HashSet<IDM_TRANSACCIONES_CAB>();
            this.IDM_TRANSACCIONES_DET = new HashSet<IDM_TRANSACCIONES_DET>();
        }
    
        public decimal TIPO_TRANSACCION_ID { get; set; }
        public string DESC_TIPO_TRANSACCION { get; set; }
        public string SIGLAS_TIPO_TRANSACCION { get; set; }
        public System.DateTime FECHA_ELABORACION { get; set; }
        public string VIGENTE { get; set; }
        public string API_ESTADO { get; set; }
        public string API_TRANSACCION { get; set; }
        public string USU_CRE { get; set; }
        public System.DateTime FEC_CRE { get; set; }
        public string USU_MOD { get; set; }
        public Nullable<System.DateTime> FEC_MOD { get; set; }
    
        public virtual ICollection<IDM_TIPO_TRANSACCION_STMT> IDM_TIPO_TRANSACCION_STMT { get; set; }
        public virtual ICollection<IDM_TRANSACCIONES_CAB> IDM_TRANSACCIONES_CAB { get; set; }
        public virtual ICollection<IDM_TRANSACCIONES_DET> IDM_TRANSACCIONES_DET { get; set; }
    }
}
