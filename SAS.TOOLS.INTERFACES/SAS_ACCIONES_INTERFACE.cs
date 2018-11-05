using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using SAS.TOOLS.DTO;

namespace SAS.TOOLS.INTERFACES
{
    
    [ServiceContract(Namespace = "http://sas.tools.sefin.gob.hn")]

    public interface ISAS_ACCIONES_INTERFACE
    {


        [OperationContract]
        SAS_ACCIONES_DTO qry_SAS_ACCIONES_Filtrado(int idAcciones);



        [OperationContract]
        List<SAS_ACCIONES_DTO> qry_SAS_ACCIONES_Filtrado_X_Sistemas(int pa_Ssistema);

        [OperationContract]
        List<SAS_PERFIL_FLUJO_OPE_DTO> qry_SAS_PFO_Filtrado_X_Sistema(int etc);





    }







}
