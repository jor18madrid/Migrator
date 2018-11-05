using SAS.TOOLS.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SAS.TOOLS.WCF.IDM_MACRO
{
    public class IDM_MACRO_ASIGNAR_PERFILES_GRUPOS_A_USUARIOS_TEST
    {

        public List<IDM_MACRO_ASIGNAR_PERFILES_GRUPOS_DTO> MACRO_Listado()
        {
            return source_macros();
        }
        public IDM_MACRO_ASIGNAR_PERFILES_GRUPOS_DTO MACRO_Filtro(string name)
        {
            return source_macros().Where(x => x.NOMBRE == name).FirstOrDefault();
        }
        public List<IDM_MACRO_ASIGNAR_PERFILES_GRUPOS_DTO> MACRO_Filtro_X_Orden(int id)
        {
            return source_macros().Where(x => x.ORDNEN == id).ToList();
        }
        public int MACRO_Max_Orden()
        {
            return source_macros().Select(x => x.ORDNEN).Max();
        }




        private List<IDM_MACRO_ASIGNAR_PERFILES_GRUPOS_DTO> source_macros()
        {
            List<IDM_MACRO_ASIGNAR_PERFILES_GRUPOS_DTO> idmMacro = new List<IDM_MACRO_ASIGNAR_PERFILES_GRUPOS_DTO>();


            idmMacro.Add(new IDM_MACRO_ASIGNAR_PERFILES_GRUPOS_DTO()
            {

                ID = 1,
                NOMBRE = "DISABLE_ALL_TRIGGERS",
                STATEMENT = @"  alter table MDSAS.SAS_USUARIOS disable all triggers;
                                alter table MDSAS.SAS_ACCESOS_PERFILES disable all triggers;
                                alter table MDSAS.SAS_ACCESOS_GRUPOS disable all triggers;"+ "\n",
                ORDNEN = 1
             });

            idmMacro.Add(new IDM_MACRO_ASIGNAR_PERFILES_GRUPOS_DTO()
            {

                ID = 2,
                NOMBRE = "Insert_into_MDSAS.SAS_USUARIOS",
                STATEMENT = @"Insert into MDSAS.SAS_USUARIOS(ID_SISTEMA, USUARIO, ID_GRUPO, RESTRICCION, VIGENTE,API_ESTADO, API_TRANSACCION, USU_CRE, FEC_CRE, USU_MOD,FEC_MOD) Values ('{||SISTEMA_ID||}', '{||NRO_ID||}', '{||ID_GRUPO_CAB||}', 'N', '{||VIGENTE||}','ELABORADO', 'CREAR', user, sysdate, NULL, NULL);" + "\n",
                ORDNEN = 2
            });

            idmMacro.Add(new IDM_MACRO_ASIGNAR_PERFILES_GRUPOS_DTO()
            {

                ID = 3,
                NOMBRE = "Insert_into_MDSAS.SAS_ACCESOS_PERFILES",
                STATEMENT = @"Insert into MDSAS.SAS_ACCESOS_PERFILES(ID_ACCESO, ID_SISTEMA, ID_PERFIL, USUARIO, POR_DEFECTO,RESTRICCION, VIGENTE, API_ESTADO, API_TRANSACCION, USU_CRE, FEC_CRE, USU_MOD, FEC_MOD) Values ('{||ID_ACCESO||}', '{||SISTEMA_ID||}', '{||ID_PERFIL||}', '{||NRO_ID||}', 'S', 'N', '{||VIGENTE||}', 'ELABORADO', 'CREAR', user, sysdate, NULL, NULL);" + "\n",
                ORDNEN = 3
            });

            idmMacro.Add(new IDM_MACRO_ASIGNAR_PERFILES_GRUPOS_DTO()
            {

                ID = 4,
                NOMBRE = "Insert_into_MDSAS.SAS_ACCESOS_GRUPOS",
                STATEMENT = @"Insert into MDSAS.SAS_ACCESOS_GRUPOS(ID_ACCESO, ID_GRUPO, VIGENTE, API_ESTADO, API_TRANSACCION,USU_CRE, FEC_CRE, USU_MOD, FEC_MOD) Values ('{||ID_ACCESO||}','{||ID_GRUPO||}','{||VIGENTE||}', 'ELABORADO', 'CREAR', 'MDSAS', sysdate, NULL, NULL);" + "\n",
                ORDNEN = 3
            });
            idmMacro.Add(new IDM_MACRO_ASIGNAR_PERFILES_GRUPOS_DTO()
            {

                ID = 5,
                NOMBRE = "ENABLE_ALL_TRIGGERS",
                STATEMENT = @"  
                                alter table MDSAS.SAS_USUARIOS enable all triggers;
                                alter table MDSAS.SAS_ACCESOS_PERFILES enable all triggers;
                                alter table MDSAS.SAS_ACCESOS_GRUPOS enable all triggers;",
                                //COMMIT;" + "\n"  ,
                ORDNEN = 4
            });
            return idmMacro;
        }
    }
}