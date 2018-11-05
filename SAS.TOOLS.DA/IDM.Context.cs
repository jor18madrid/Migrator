
namespace SAS.TOOLS.DA
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class IDM_Entities : DbContext
    {
        public IDM_Entities()
            : base("name=IDM_Entities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<API_ESTADOS> API_ESTADOS { get; set; }
        public DbSet<API_TABLAS> API_TABLAS { get; set; }
        public DbSet<API_TABLAS_ATRIBUTOS> API_TABLAS_ATRIBUTOS { get; set; }
        public DbSet<API_TRANSACCIONES> API_TRANSACCIONES { get; set; }
        public DbSet<API_TRANSICIONES> API_TRANSICIONES { get; set; }
        public DbSet<BITACORAS_DE_ERROR> BITACORAS_DE_ERROR { get; set; }
        public DbSet<ClientClaims> ClientClaims { get; set; }
        public DbSet<ClientCorsOrigins> ClientCorsOrigins { get; set; }
        public DbSet<ClientCustomGrantTypes> ClientCustomGrantTypes { get; set; }
        public DbSet<ClientIdPRestrictions> ClientIdPRestrictions { get; set; }
        public DbSet<ClientPostLogoutRedirectUris> ClientPostLogoutRedirectUris { get; set; }
        public DbSet<ClientRedirectUris> ClientRedirectUris { get; set; }
        public DbSet<Clients> Clients { get; set; }
        public DbSet<ClientScopes> ClientScopes { get; set; }
        public DbSet<ClientSecrets> ClientSecrets { get; set; }
        public DbSet<Consents> Consents { get; set; }
        public DbSet<IDM_CORREO_ENVIOS> IDM_CORREO_ENVIOS { get; set; }
        public DbSet<IDM_CORREO_FORMATOS> IDM_CORREO_FORMATOS { get; set; }
        public DbSet<IDM_CORREO_REMITENTES> IDM_CORREO_REMITENTES { get; set; }
        public DbSet<IDM_CRIPTOGRAFIAS> IDM_CRIPTOGRAFIAS { get; set; }
        public DbSet<IDM_FICHAS_CAB> IDM_FICHAS_CAB { get; set; }
        public DbSet<IDM_FICHAS_REG> IDM_FICHAS_REG { get; set; }
        public DbSet<IDM_FICHAS_SIS> IDM_FICHAS_SIS { get; set; }
        public DbSet<IDM_PARAMETROS> IDM_PARAMETROS { get; set; }
        public DbSet<IDM_PERSONAS> IDM_PERSONAS { get; set; }
        public DbSet<IDM_PROPIEDADES> IDM_PROPIEDADES { get; set; }
        public DbSet<IDM_PROPIEDADES_REL> IDM_PROPIEDADES_REL { get; set; }
        public DbSet<IDM_SISTEMAS> IDM_SISTEMAS { get; set; }
        public DbSet<IDM_SISTEMAS_CLIENTESTS> IDM_SISTEMAS_CLIENTESTS { get; set; }
        public DbSet<IDM_TIPO_TRANSACCION_STMT> IDM_TIPO_TRANSACCION_STMT { get; set; }
        public DbSet<IDM_TRANSACCIONES_CAB> IDM_TRANSACCIONES_CAB { get; set; }
        public DbSet<IDM_TRANSACCIONES_DET> IDM_TRANSACCIONES_DET { get; set; }
        public DbSet<IDM_TRANSACCIONES_TIPOS> IDM_TRANSACCIONES_TIPOS { get; set; }
        public DbSet<IDM_USUARIOS> IDM_USUARIOS { get; set; }
        public DbSet<IDM_USUARIOS_NIV> IDM_USUARIOS_NIV { get; set; }
        public DbSet<IDM_USUARIOS_PASSWORD> IDM_USUARIOS_PASSWORD { get; set; }
        public DbSet<IDM_USUARIOS_REL> IDM_USUARIOS_REL { get; set; }
        public DbSet<IDM_USUARIOS_RESTRICCIONES> IDM_USUARIOS_RESTRICCIONES { get; set; }
        public DbSet<IDM_USUARIOS_TIPOS> IDM_USUARIOS_TIPOS { get; set; }
        public DbSet<MENSAJES_DE_ERROR> MENSAJES_DE_ERROR { get; set; }
        public DbSet<QFWK_NOTIFICACION_BUZON> QFWK_NOTIFICACION_BUZON { get; set; }
        public DbSet<QFWK_NOTIFICACION_GRUPO> QFWK_NOTIFICACION_GRUPO { get; set; }
        public DbSet<QFWK_NOTIFICACION_GRUPODET> QFWK_NOTIFICACION_GRUPODET { get; set; }
        public DbSet<SAS_USUARIOS_INFORMACION> SAS_USUARIOS_INFORMACION { get; set; }
        public DbSet<ScopeClaims> ScopeClaims { get; set; }
        public DbSet<Scopes> Scopes { get; set; }
        public DbSet<ScopeSecrets> ScopeSecrets { get; set; }
        public DbSet<SECUENCIAS> SECUENCIAS { get; set; }
        public DbSet<STS_URLS_ENCRIPTADAS> STS_URLS_ENCRIPTADAS { get; set; }
        public DbSet<Tokens> Tokens { get; set; }
        public DbSet<URLS_ENCRIPTADAS> URLS_ENCRIPTADAS { get; set; }
        public DbSet<CG_REF_CODES> CG_REF_CODES { get; set; }
        public DbSet<MENSAJES_DE_ERROR_X> MENSAJES_DE_ERROR_X { get; set; }
        public DbSet<TEMP_IDM_PERSONAS> TEMP_IDM_PERSONAS { get; set; }
        public DbSet<BEN_TIPOS_IDENTIFICACION> BEN_TIPOS_IDENTIFICACION { get; set; }
        public DbSet<PAISES> PAISES { get; set; }
        public DbSet<V_IDM_LOVGRAL> V_IDM_LOVGRAL { get; set; }
    }
}
