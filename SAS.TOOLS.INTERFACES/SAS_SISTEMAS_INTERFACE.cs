using SAS.TOOLS.DTO;
using SAS.TOOLS.DTO.IDM_DTO;
using System.Collections.Generic;
using System.ServiceModel;

namespace SAS.TOOLS.INTERFACES
{

    [ServiceContract(Namespace = "http://sas.tools.sefin.gob.hn")]

    public interface ISAS_SISTEMAS_INTERFACE
    {
        [OperationContract]
        List<SAS_SISTEMAS_DTO> qry_SAS_SISTEMAS_Listado();

        //IDM_RDN

        [OperationContract]
        List<IDM_USUARIOS_TIPOS_DTO> qry_IDM_USUARIOS_TIPOS_Listado();

        [OperationContract]
        List<IDM_USUARIOS_NIV_DTO> qry_IDM_USUARIOS_NIV_Listado();
        //
        [OperationContract]
        List<AUX_LOVS_DTO> dic_IDM_AUX_LOVS(string claVal);
 
        [OperationContract]
        List<SAS_PERFILES_DTO> qry_SAS_PERFILES_Listado();

        [OperationContract]
        List<SAS_GRUPO_FILTRO_DTO> qry_SAS_GRUPOS_Listado();

        [OperationContract]
        List<string> qry_SAS_Origen_Destino_Listado();

        [OperationContract]
        List<string> qry_SAS_Formato_Listado();

        [OperationContract]
        string qry_Generador(int ID_SISTEMA,string dbName);

        [OperationContract]
        List<SAS_PERFIL_FLUJO_OPE_DTO> qry_SAS_PERFIL_FLUJO_OPE_Filtrado_IDPERFIL_X_Sistema(int ID_SISTEMA,string dName);

    }
}