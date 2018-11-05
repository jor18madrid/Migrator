using SAS.TOOLS.DTO;
using SAS.TOOLS.INTERFACES;
using SAS.TOOLS.WCF.RDN;
using System.Collections.Generic;
using SAS.TOOLS.WCF.OrigenDestino;
using SAS.TOOLS.DTO.IDM_DTO;
using SAS.TOOLS.WCF.RDN.IDM_RDN;

namespace SAS.TOOLS.WCF.SVC
{
    public class SAS_SISTEMAS_Service : ISAS_SISTEMAS_INTERFACE
    {


        public List<SAS_SISTEMAS_DTO> qry_SAS_SISTEMAS_Listado()
        {
            return new SAS_SISTEMAS_RDN().SAS_SISTEMAS_Listado();
        }
        
        public List<string> qry_SAS_Origen_Destino_Listado()
        {
            return new SAS_Origen_Destino().SAS_Origen_Destino_Listado();
        }

        public List<string> qry_SAS_Formato_Listado()
        {
            return new SAS_Formato().SAS_Formato_Listado();
        }

        public string qry_Generador(int idSistema, string dbName)
        {
            return new SAS_GENERADOR().Generador(idSistema: idSistema, dbName: dbName);
        }

        public List<SAS_PERFIL_FLUJO_OPE_DTO> qry_SAS_PERFIL_FLUJO_OPE_Filtrado_IDPERFIL_X_Sistema(int ID_SISTEMA,string dName)
        {
            return new SAS_PERFIL_FLUJO_OPE_RDN().SAS_PERFIL_FLUJO_OPE_Filtrado_IDPERFIL_X_Sistema(ID_SISTEMA: ID_SISTEMA,dName:dName);
        }

        public List<SAS_PERFILES_DTO> qry_SAS_PERFILES_Listado()
        {
            return new SAS_PERFILES_RDN().SAS_PERFILES_Listado();
        }

        public List<SAS_GRUPO_FILTRO_DTO> qry_SAS_GRUPOS_Listado()
        {
            return new SAS_GRUPO_FILTRO_RDN().SAS_GRUPOS_Listado();
        }

        public List<IDM_USUARIOS_TIPOS_DTO> qry_IDM_USUARIOS_TIPOS_Listado()
        {
            return new IDM_USUARIOS_TIPOS_RDN().SAS_GRUPOS_Listado();
        }

        public List<IDM_USUARIOS_NIV_DTO> qry_IDM_USUARIOS_NIV_Listado()
        {
            return new IDM_USUARIOS_NIV_RDN().SAS_GRUPOS_Listado();
        }

        public List<AUX_LOVS_DTO> dic_IDM_AUX_LOVS(string claVal)
        {
            return new AUX_LOVS_RDN.API_LISTA_VALORES_RDN().AUX_LOVS_listado(claVal:claVal);
        }
    }
    }
