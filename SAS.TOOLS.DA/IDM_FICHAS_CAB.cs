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
    
    public partial class IDM_FICHAS_CAB
    {
        public IDM_FICHAS_CAB()
        {
            this.IDM_FICHAS_REG = new HashSet<IDM_FICHAS_REG>();
        }
    
        public decimal FICHA_ID { get; set; }
        public decimal USUARIO_ID { get; set; }
        public string TIPO_OPERACION { get; set; }
        public System.DateTime FECHA_ELABORACION { get; set; }
        public short GESTION { get; set; }
        public string GLOSA { get; set; }
        public string API_ESTADO { get; set; }
        public string API_TRANSACCION { get; set; }
        public string USU_CRE { get; set; }
        public System.DateTime FEC_CRE { get; set; }
        public string USU_MOD { get; set; }
        public Nullable<System.DateTime> FEC_MOD { get; set; }
    
        public virtual ICollection<IDM_FICHAS_REG> IDM_FICHAS_REG { get; set; }
    }
}