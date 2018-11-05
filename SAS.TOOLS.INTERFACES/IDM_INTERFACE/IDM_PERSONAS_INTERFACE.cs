using SAS.TOOLS.DTO.IDM_DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace SAS.TOOLS.INTERFACES.IDM_INTERFACE
{

    [ServiceContract(Namespace = "http://sefin.gob.hn")]
    public interface IIDM_PERSONAS_INTERFACE
    {
        [OperationContract]
        List<IDM_PERSONAS_DTO> qry_IDM_PERSONAS_Listado();

        [OperationContract]
        IDM_PERSONAS_DTO qry_IDM_PERSONAS_filtrado(decimal IdPersona);

        [OperationContract]
        IDM_PERSONAS_DTO ins_IDM_PERSONAS_inserta(IDM_PERSONAS_DTO Inserta);

        [OperationContract]
        IDM_PERSONAS_DTO upd_IDM_PERSONAS_actualiza(IDM_PERSONAS_DTO Actualiza);

        [OperationContract]
        IDM_PERSONAS_DTO del_IDM_PERSONAS_elimina(decimal IdPersona);

        [OperationContract]
        int qry_PersonaID();
        [OperationContract]
        int qry_Secuencia();

        [OperationContract]
        int qry_IdAcceso();

    }

}
