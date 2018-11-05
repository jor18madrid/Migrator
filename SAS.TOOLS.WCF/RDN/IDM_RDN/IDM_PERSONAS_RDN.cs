using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SAS.TOOLS.DA;
using SAS.TOOLS.DTO;
using System.Data.Entity;

namespace SAS.TOOLS.WCF.RDN.IDM_RDN
{
    public class IDM_PERSONAS_RDN
    {
        public int PersonaID()
        {
            using (var context = new IDM_Entities ())
            {
                var query = from r in context.IDM_PERSONAS
                            select r.PERSONA_ID;
                var PersonaID = Convert.ToInt32(query.Max());
                return PersonaID + 1;
            }
        }
        public int Secuencia()
        {
            using (var context = new IDM_Entities())
            {
                var query = from r in context.IDM_USUARIOS_PASSWORD
                            select r.SECUENCIA;
                var Secuencia = Convert.ToInt32(query.Max());
                return Secuencia + 1;
            }
        }
        public int IdAcceso()
        {
            using (var context = new Entities("DESARROLLO"))
            {
                var query = from r in context.SAS_ACCESOS_PERFILES
                            select r.ID_ACCESO;
                int IA = Convert.ToInt32(query.Max());
                return IA + 1;
            }
            //throw new NotImplementedException();
        }
    }
}