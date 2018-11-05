using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using SAS.TOOLS.DTO.IDM_DTO;
using SAS.TOOLS.INTERFACES.IDM_INTERFACE;
using SAS.TOOLS.WCF.RDN.IDM_RDN;

namespace SAS.TOOLS.WCF.SVC.IDM_SVC
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de clase "IDM_PERSONAS_Service" en el código, en svc y en el archivo de configuración a la vez.
    // NOTA: para iniciar el Cliente de prueba WCF para probar este servicio, seleccione IDM_PERSONAS_Service.svc o IDM_PERSONAS_Service.svc.cs en el Explorador de soluciones e inicie la depuración.
    public class IDM_PERSONAS_Service : IIDM_PERSONAS_INTERFACE
    {
        public IDM_PERSONAS_RDN _RDN { get; set; }
        public IDM_PERSONAS_Service(IDM_PERSONAS_RDN rdn)
        {
            _RDN = rdn;
        }

        public IDM_PERSONAS_DTO del_IDM_PERSONAS_elimina(decimal IdPersona)
        {
            throw new NotImplementedException();
        }

        public IDM_PERSONAS_DTO ins_IDM_PERSONAS_inserta(IDM_PERSONAS_DTO Inserta)
        {
            throw new NotImplementedException();
        }

        public IDM_PERSONAS_DTO qry_IDM_PERSONAS_filtrado(decimal IdPersona)
        {
            throw new NotImplementedException();
        }

        public List<IDM_PERSONAS_DTO> qry_IDM_PERSONAS_Listado()
        {
            throw new NotImplementedException();
        }

        public int qry_PersonaID()
        {
            return _RDN.PersonaID();
        }
        public int qry_Secuencia()
        {
            return _RDN.Secuencia();
        }
        public IDM_PERSONAS_DTO upd_IDM_PERSONAS_actualiza(IDM_PERSONAS_DTO Actualiza)
        {
            throw new NotImplementedException();
        }

        public int qry_IdAcceso()
        {
            return _RDN.IdAcceso();
        }
    }
}
