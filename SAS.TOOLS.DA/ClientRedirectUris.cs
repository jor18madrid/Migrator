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
    
    public partial class ClientRedirectUris
    {
        public int Id { get; set; }
        public string Uri { get; set; }
        public int Client_Id { get; set; }
    
        public virtual Clients Clients { get; set; }
    }
}
