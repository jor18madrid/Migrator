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
    
    public partial class IDM_TRANSACCIONES_DET
    {
        public decimal TRANSACCION_ID { get; set; }
        public decimal PROPIEDAD_ID { get; set; }
        public decimal TIPO_TRANSACCION_ID { get; set; }
        public string VALOR_ANTERIOR { get; set; }
        public string VALOR_NUEVO { get; set; }
        public string API_ESTADO { get; set; }
        public string API_TRANSACCION { get; set; }
        public string USU_CRE { get; set; }
        public System.DateTime FEC_CRE { get; set; }
        public string USU_MOD { get; set; }
        public Nullable<System.DateTime> FEC_MOD { get; set; }
        public long SECUENCIA { get; set; }
        public string TIPO_SENTENCIA { get; set; }
    
        public virtual IDM_PROPIEDADES IDM_PROPIEDADES { get; set; }
        public virtual IDM_TRANSACCIONES_CAB IDM_TRANSACCIONES_CAB { get; set; }
        public virtual IDM_TRANSACCIONES_TIPOS IDM_TRANSACCIONES_TIPOS { get; set; }
    }
}