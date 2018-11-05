using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SAS.TOOLS.DTO;


namespace SAS.TOOLS.WCF.IDM_MACRO
{
    public class IDM_MACRO_CREAR_USUARIO_TEST
    {

        public List<IDM_MACRO_CREAR_USUARIO_TEST_DTO> MACRO_Listado()
        {
            return source_macros();
        }
        public IDM_MACRO_CREAR_USUARIO_TEST_DTO MACRO_Filtro(string name)
        {
            return source_macros().Where(x => x.NOMBRE == name).FirstOrDefault();
        }
        public List<IDM_MACRO_CREAR_USUARIO_TEST_DTO> MACRO_Filtro_X_Orden(int id)
        {
            return source_macros().Where(x => x.ORDNEN == id).ToList();
        }
        public int MACRO_Max_Orden()
        {
            return source_macros().Select(x => x.ORDNEN).Max();
        }

        private List<IDM_MACRO_CREAR_USUARIO_TEST_DTO> source_macros()
        {
            List<IDM_MACRO_CREAR_USUARIO_TEST_DTO> idmMacro = new List<IDM_MACRO_CREAR_USUARIO_TEST_DTO>();

            idmMacro.Add(new IDM_MACRO_CREAR_USUARIO_TEST_DTO(){
                ID = 1,
                NOMBRE = "DISABLE_ALL_TRIGGERS",
                STATEMENT = @"alter table idmanager.idm_personas disable all triggers;
                              alter table idmanager.idm_usuarios disable all triggers;
                              alter table idmanager.idm_usuarios_rel disable all triggers;
                              alter table idmanager.idm_usuarios_password disable all triggers; "+"\n",
                ORDNEN = 1
            });
            idmMacro.Add(new IDM_MACRO_CREAR_USUARIO_TEST_DTO()
            {
                ID = 2,
                NOMBRE = "Insert_into_IDMANAGER_IDM_PERSONAS",
                STATEMENT = @"Insert into IDMANAGER.IDM_PERSONAS(PERSONA_ID, PRIMER_NOMBRE, SEGUNDO_NOMBRE, PRIMER_APELLIDO, SEGUNDO_APELLIDO,FECHA_NACIMIENTO, FECHA_ELABORACION, SEXO, PAIS_ID, TIPO_ID,NRO_ID, DIRECCION, CORREO, TELEFONO, CELULAR, GLOSA, VIGENTE, API_ESTADO, API_TRANSACCION, USU_CRE, FEC_CRE, USU_MOD, FEC_MOD) Values ('{||ID||}','{||PRIMER_NOMBRE||}','{||SEGUNDO_NOMBRE||}', '{||PRIMER_APELLIDO||}', '{||SEGUNDO_APELLIDO||}',TO_DATE('{||FECHA_NACIMIENTO||}', 'MM/DD/YYYY HH24:MI:SS'), sysdate, '{||SEXO||}','{||PAIS_ID||}','{||TIPO_ID||}', '{||NRO_ID||}', '{||DIRECCION||}', '{||CORREO||}', '{||TELEFONO||}', '{||CELULAR||}',NULL, '{||VIGENTE||}', 'ELABORADO', 'CREAR', 'IDMANAGER', sysdate, NULL, NULL);" + "\n", 
                ORDNEN = 2
            });
            idmMacro.Add(new IDM_MACRO_CREAR_USUARIO_TEST_DTO()
            {
                ID = 3,
                NOMBRE = "Insert_into_IDMANAGER_IDM_USUARIOS",
                STATEMENT = @"Insert into IDMANAGER.IDM_USUARIOS(USUARIO_ID, FECHA_ELABORACION,NOMBRE_USUARIO,NICK_USUARIO, TIPO_USUARIO_ID, NIVEL_USUARIO_ID,PERSONA_ID, PUESTO, VIGENTE, API_ESTADO, API_TRANSACCION, USU_CRE, FEC_CRE, USU_MOD, FEC_MOD) Values ('{||ID||}', sysdate, '{||NOMBRE_USUARIO||}','{||NRO_ID||}', '{||TIPO_USUARIO_ID||}', '{||NIVEL_USUARIO_ID||}','{||ID||}', '{||PUESTO||}', '{||VIGENTE||}', 'ELABORADO', 'CREAR','IDMANAGER', sysdate, NULL, NULL);" + "\n",
                ORDNEN = 2
            });
            idmMacro.Add(new IDM_MACRO_CREAR_USUARIO_TEST_DTO()
            {
                ID = 4,
                NOMBRE = "Insert_into_IDMANAGER_IDM_USUARIOS_REL",
                STATEMENT = @"Insert into IDMANAGER.IDM_USUARIOS_REL(USUARIO_ID, SISTEMA_ID, FECHA_ELABORACION, VIGENTE, API_ESTADO, API_TRANSACCION,USU_CRE, FEC_CRE, USU_MOD, FEC_MOD) Values ('{||ID||}', '{||SISTEMA_ID||}', sysdate, '{||VIGENTE||}', 'ELABORADO', 'CREAR','IDMANAGER', sysdate, NULL, NULL);" + "\n",
                ORDNEN = 2
            });
            idmMacro.Add(new IDM_MACRO_CREAR_USUARIO_TEST_DTO()
            {
                ID = 5,
                NOMBRE = "Insert into IDMANAGER.IDM_USUARIOS_PASSWORD",
                STATEMENT = @"Insert into IDMANAGER.IDM_USUARIOS_PASSWORD(SECUENCIA, USUARIO_ID, PASSWORD, FECHA_ELABORACION, VIGENTE, API_ESTADO, API_TRANSACCION,USU_CRE, FEC_CRE, USU_MOD, FEC_MOD) Values ('{||SECUENCIA||}', '{||ID||}', '1000:YzFKNT80NzM1MVg5PzhTN3E0PzduN1ox:nXjfO07aTOOZe1wsNDWwHmX9QduQcRtd/WFXPYQtDNE=', SYSDATE, '{||VIGENTE||}', 'ELABORADO', 'CREAR', 'IDMANAGER', sysdate, NULL, NULL);" + "\n",
                ORDNEN = 2
            });
            idmMacro.Add(new IDM_MACRO_CREAR_USUARIO_TEST_DTO()
            {
                ID = 6,
                NOMBRE = "ENABLE_ALL_TRIGGERS",
                STATEMENT = @"  
                                alter table idmanager.idm_personas enable all triggers;
                                alter table idmanager.idm_usuarios enable all triggers;
                                alter table idmanager.idm_usuarios_rel enable all triggers;
                                alter table idmanager.idm_usuarios_password enable all triggers;",
                                //COMMIT;" + "\n",

                ORDNEN = 3
            });
            return idmMacro;
        }
    }
}