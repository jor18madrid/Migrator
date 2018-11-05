using SAS.TOOLS.DTO;
using System.Collections.Generic;
using System.Linq;

namespace SAS.TOOLS.WCF.RDN
{
    public class SAS_MACRO
    {
        public List<SAS_MACRO_DTO> SAS_MACRO_Listado()
        {
            return source_macros();
        }
        public SAS_MACRO_DTO SAS_MACRO_Filtro(string pa_Macro)
        {
            return source_macros().Where(x => x.MACRO == pa_Macro).FirstOrDefault();  
        }
        public  List<SAS_MACRO_DTO> SAS_MACRO_Filtro_X_Prioridad(int id)
        {
            return source_macros().Where(x => x.PRIORIDAD == id).ToList();
        }

        public int SAS_MACRO_Max_Prioridad()
        {
            return source_macros().Select(x => x.PRIORIDAD).Max();
        }
        private List<SAS_MACRO_DTO> source_macros()
        {
            List<SAS_MACRO_DTO> macros = new List<SAS_MACRO_DTO>();

            macros.Add(new SAS_MACRO_DTO()
            {

                ID_MACRO = 1,
                MACRO = "DIS_ALL_TRIGGERS",
                DESC = "DESC",
                ORIGEN = "ORCL",
                STATEMENT = "alter table MDSAS2.SAS_ACCIONES disable all triggers; \n" +
                            "alter table MDSAS2.SAS_FLUJOS disable all triggers; \n" +
                            "alter table MDSAS2.SAS_FLUJOS_OPERACION disable all triggers; \n" +
                            "alter table MDSAS2.SAS_FLUJOS_OPE_ACCIONES disable all triggers; \n" +
                            "alter table MDSAS2.SAS_FLUJOS_OPE_GRUPO disable all triggers; \n" +
                            "alter table MDSAS2.SAS_FLUJOS_TABLAS disable all triggers; \n" +
                            "alter table MDSAS2.SAS_PERFILES disable all triggers; \n" +
                            "alter table MDSAS2.SAS_PERFIL_FLUJO_OPE disable all triggers; \n" +
                            "alter table MDSAS2.SAS_TABLAS disable all triggers; \n" +
                            "alter table MDSAS2.SAS_TABLAS_COLUMNAS disable all triggers; \n" +
                            "alter table MDSAS2.SAS_TABLAS_FILTROS disable all triggers; \n" +
                            "alter table MDSAS2.SAS_DICCIONARIO_OPERADORES disable all triggers; \n" +
                            "alter table MDSAS2.SAS_DICCIONARIO_FILTROS disable all triggers; \n" +
                            "alter table MDSAS2.SAS_DICCIONARIO_ETAPAS disable all triggers; \n" +
                            "alter table MDSAS2.SAS_PERFIL_MENU disable all triggers; \n" +
                            "alter table MDSAS2.SAS_MENUS disable all triggers; \n",
                PRIORIDAD = 1,
                TIPEM = 0
            });
            macros.Add(new SAS_MACRO_DTO()
            {
                ID_MACRO = 2,
                MACRO = "ENA_ALL_TRIGGERS",
                DESC = "DESC",
                ORIGEN = "ORCL",
                STATEMENT = "alter table MDSAS2.SAS_ACCIONES enable all triggers; \n" +
                            "alter table MDSAS2.SAS_FLUJOS enable all triggers; \n" +
                            "alter table MDSAS2.SAS_FLUJOS_OPERACION enable all triggers; \n" +
                            "alter table MDSAS2.SAS_FLUJOS_OPE_ACCIONES enable all triggers; \n" +
                            "alter table MDSAS2.SAS_FLUJOS_OPE_GRUPO enable all triggers; \n" +
                            "alter table MDSAS2.SAS_FLUJOS_TABLAS enable all triggers; \n" +
                            "alter table MDSAS2.SAS_PERFILES enable all triggers; \n" +
                            "alter table MDSAS2.SAS_PERFIL_FLUJO_OPE enable all triggers; \n" +
                            "alter table MDSAS2.SAS_TABLAS enable all triggers; \n" +
                            "alter table MDSAS2.SAS_TABLAS_COLUMNAS enable all triggers; \n" +
                            "alter table MDSAS2.SAS_TABLAS_FILTROS enable all triggers; \n" +
                            "alter table MDSAS2.SAS_DICCIONARIO_OPERADORES enable all triggers; \n" +
                            "alter table MDSAS2.SAS_DICCIONARIO_FILTROS enable all triggers; \n" +
                            "alter table MDSAS2.SAS_DICCIONARIO_ETAPAS enable all triggers; \n" +
                            "alter table MDSAS2.SAS_PERFIL_MENU enable all triggers; \n" +
                            "alter table MDSAS2.SAS_MENUS enable all triggers; \n",
                            //+ "commit;",
                PRIORIDAD = 6,
                TIPEM = 0
            });
            macros.Add(new SAS_MACRO_DTO()
            {
                ID_MACRO = 3,
                MACRO = "DEL_ALL_TABLES",
                DESC = "LIMPIA TODAS LAS TABLAS CON UN ID SISTEMA ESPECIFICO",
                ORIGEN = "ORCL",
                STATEMENT =
                           "delete MDSAS2.sas_perfil_flujo_ope where id_operacion in (select id_operacion from MDSAS2.sas_flujos_operacion where id_flujo in (select id_flujo from MDSAS2.sas_flujos where id_sistema = '{||vl_sistema||}')); \n" +
                           "delete MDSAS2.sas_perfil_menu where id_menu in (select id_menu from MDSAS2.sas_menus where id_sistema = '{||vl_sistema||}'); \n" +
                           "delete MDSAS2.sas_flujos_ope_acciones where id_accion in (select id_accion from MDSAS2.sas_acciones where id_sistema = '{||vl_sistema||}'); \n" +
                           "delete MDSAS2.sas_flujos_ope_acciones where id_operacion in (select id_operacion from MDSAS2.sas_flujos_operacion where id_flujo in (select id_flujo from MDSAS2.sas_flujos where id_sistema = '{||vl_sistema||}')); \n" +
                           "delete MDSAS2.sas_flujos_ope_grupo where id_operacion in (select id_operacion from MDSAS2.sas_flujos_operacion where id_flujo in (select id_flujo from MDSAS2.sas_flujos where id_sistema = '{||vl_sistema||}')); \n" +
                           "delete MDSAS2.sas_flujos_operacion where id_flujo in (select id_flujo from MDSAS2.sas_flujos where id_sistema = '{||vl_sistema||}'); \n" +
                           "delete MDSAS2.sas_acciones where id_sistema = '{||vl_sistema||}'; \n" +
                           "delete MDSAS2.sas_perfiles where id_sistema = '{||vl_sistema||}'; \n" +
                           "delete MDSAS2.sas_menus where id_sistema = '{||vl_sistema||}'; \n" +
                           "delete MDSAS2.sas_flujos where id_sistema = '{||vl_sistema||}';\n" +
                           "delete MDSAS2.sas_tablas_filtros where id_sistema = '{||vl_sistema||}'; \n" +
                           "delete MDSAS2.sas_tablas_columnas where id_sistema = '{||vl_sistema||}'; \n" +
                           "delete MDSAS2.sas_tablas where id_sistema = '{||vl_sistema||}'; \n" +
                           "delete MDSAS2.sas_diccionario_operadores where id_sistema = '{||vl_sistema||}'; \n" +
                           "delete MDSAS2.sas_diccionario_filtros where id_sistema = '{||vl_sistema||}'; \n" +
                           "delete MDSAS2.sas_diccionario_etapas where id_sistema = '{||vl_sistema||}'; \n",
                PRIORIDAD = 3,
                TIPEM = -1
            });



            //////Disable all cons
            macros.Add(new SAS_MACRO_DTO()
            {
                ID_MACRO = 4,
                MACRO = "DISABLE_ALL_CONSTRAINTS",
                DESC = "DESHABILITA TODAS LAS CONSTRAINTS",
                ORIGEN = "ORCL",
                STATEMENT =
                         @"alter table MDSAS2.SAS_ACCESOS_PERFILES disable constraint SACPER_SASSIS_FK;
alter table MDSAS2.SAS_ACCESOS_PERFILES disable constraint ACCPER_SASPER_FK;
alter table MDSAS2.SAS_ACCESOS_PERFILES disable constraint ACCPER_SASUSR_FK;
alter table MDSAS2.SAS_GRUPO_PREDICADO disable constraint GRPPRE_GRPFIL_FK;
alter table MDSAS2.SAS_GRUPO_PREDICADO disable constraint GRPPRE_DICFIL_FK;
alter table MDSAS2.SAS_GRUPO_PREDICADO disable constraint GRPPRE_DICOPE_FK;
alter table MDSAS2.SAS_GRUPO_PREDICADO disable constraint GRPPRE_UK;
alter table MDSAS2.SAS_DOCPER_PERFIL_FLUOPE disable constraint SASDPFO_SASDPER_FK;
alter table MDSAS2.SAS_DOCPER_PERFIL_FLUOPE disable constraint SASDPFO_FLUOPE_FK;
alter table MDSAS2.SAS_SOLUSR_PERFIL disable constraint SASOLPER_SASSUSR_FK;
alter table MDSAS2.SAS_SOLUSR_PERFIL disable constraint SASOLPER_SASSIS_FK;
alter table MDSAS2.SAS_SOLUSR_PERFIL disable constraint SASOLPER_SASPER_FK;
alter table MDSAS2.SAS_DOCPER_PERFIL_MENU disable constraint SASDPME_SASMENU_FK;
alter table MDSAS2.SAS_DOCPER_PERFIL_MENU disable constraint SASDPME_SASDPER_FK;
alter table MDSAS2.SAS_DOCGRP_PREDICADO disable constraint SASDPRE_UK;
alter table MDSAS2.SAS_DOCGRP_PREDICADO disable constraint SASDPRE_SASDGRP_FK;
alter table MDSAS2.SAS_DOCGRP_PREDICADO disable constraint SASDPRE_DICOPE_FK;
alter table MDSAS2.SAS_DOCGRP_PREDICADO disable constraint SASDPRE_DICFIL_FK;
alter table MDSAS2.SAS_FLUJOS_OPE_REGLA disable constraint FLUOPERGL_FLUOPE_FK;
alter table MDSAS2.SAS_FLUJOS_OPE_REGLA disable constraint FLUOPERGL_SASRGL_FK;
alter table MDSAS2.SAS_FLUJOS_TABLAS disable constraint FLUTAB_SASTAB_FK;
alter table MDSAS2.SAS_FLUJOS_TABLAS disable constraint FLUTAB_SASFLU_FK;
alter table MDSAS2.SAS_FLUJOS_OPERACION disable constraint FLUOPE_SASFLU_FK;
alter table MDSAS2.SAS_FLUJOS_OPE_ACCIONES disable constraint FLUOPEACC_SASACC_FK;
alter table MDSAS2.SAS_FLUJOS_OPE_ACCIONES disable constraint FLUOPEACC_FLUOPE_FK;
alter table MDSAS2.SAS_FLUJOS_OPE_GRUPO disable constraint FLUOPEGRP_GRPFIL_FK;
alter table MDSAS2.SAS_FLUJOS_OPE_GRUPO disable constraint FLUOPEGRP_FLUOPE_FK;
alter table MDSAS2.SAS_PERFIL_FLUJO_OPE disable constraint SASPFO_FLUOPE_FK;
alter table MDSAS2.SAS_PERFIL_MENU disable constraint SASPME_SASMENU_FK;
alter table MDSAS2.SAS_TABLAS_FILTROS disable constraint TABFIL_SASSIS_FK;
alter table MDSAS2.SAS_TABLAS_FILTROS disable constraint TABFIL_TABCOL_FK;
alter table MDSAS2.SAS_TABLAS_FILTROS disable constraint TABFIL_DICFIL_FK;
alter table MDSAS2.SAS_TABLAS_COLUMNAS disable constraint TABCOL_SASTAB_FK;
alter table MDSAS2.SAS_TABLAS_COLUMNAS disable constraint TABCOL_UK;
alter table MDSAS2.SAS_TABLAS disable constraint SASTAB_SASSIS_FK;
alter table MDSAS2.SAS_TABLAS disable constraint SASTAB_UK;
alter table MDSAS2.SAS_PERFILES disable constraint SASPER_SASSIS_FK;
alter table MDSAS2.SAS_MENUS disable constraint SASMENU_UK;
alter table MDSAS2.SAS_MENUS disable constraint SASMENU_SASSIS_FK;
alter table MDSAS2.SAS_ACCIONES disable constraint SASACC_SASSIS_FK;
alter table MDSAS2.SAS_ACCIONES disable constraint SASACC_UK;
alter table MDSAS2.SAS_DICCIONARIO_ETAPAS disable constraint DICETP_SASSIS_FK;
alter table MDSAS2.SAS_DICCIONARIO_ETAPAS disable constraint DICETP_UK;
alter table MDSAS2.SAS_DICCIONARIO_FILTROS disable constraint DICFIL_SASSIS_FK;
alter table MDSAS2.SAS_DICCIONARIO_OPERADORES disable constraint DICOPE_SASSIS_FK;
alter table MDSAS2.SAS_FLUJOS disable constraint SASFLU_SASSIS_FK;
alter table MDSAS2.SAS_FLUJOS disable constraint SASFLU_UK;"+ "\n",
                PRIORIDAD = 2,
                TIPEM = 0
            });
            ///// enable all cons
            macros.Add(new SAS_MACRO_DTO()
            {
                ID_MACRO = 5,
                MACRO = "ENABLE_ALL_CONSTRAINTS",
                DESC = "HABILITA TODAS LAS CONSTRAINTS",
                ORIGEN = "ORCL",
                STATEMENT =
                            @"alter table MDSAS2.SAS_FLUJOS enable constraint SASFLU_SASSIS_FK;
alter table MDSAS2.SAS_FLUJOS enable constraint SASFLU_UK;
alter table MDSAS2.SAS_DICCIONARIO_OPERADORES enable constraint DICOPE_SASSIS_FK;
alter table MDSAS2.SAS_DICCIONARIO_FILTROS enable constraint DICFIL_SASSIS_FK;
alter table MDSAS2.SAS_DICCIONARIO_ETAPAS enable constraint DICETP_SASSIS_FK;
alter table MDSAS2.SAS_DICCIONARIO_ETAPAS enable constraint DICETP_UK;
alter table MDSAS2.SAS_ACCIONES  enable constraint SASACC_SASSIS_FK;
alter table MDSAS2.SAS_ACCIONES enable constraint SASACC_UK;
alter table MDSAS2.SAS_MENUS enable constraint SASMENU_UK;
alter table MDSAS2.SAS_MENUS enable constraint SASMENU_SASSIS_FK;
alter table MDSAS2.SAS_PERFILES enable constraint SASPER_SASSIS_FK;
alter table MDSAS2.SAS_TABLAS enable constraint SASTAB_SASSIS_FK;
alter table MDSAS2.SAS_TABLAS enable constraint SASTAB_UK;
alter table MDSAS2.SAS_TABLAS_COLUMNAS enable constraint TABCOL_SASTAB_FK;
alter table MDSAS2.SAS_TABLAS_COLUMNAS enable constraint TABCOL_UK;
alter table MDSAS2.SAS_TABLAS_FILTROS enable constraint TABFIL_SASSIS_FK;
alter table MDSAS2.SAS_TABLAS_FILTROS enable constraint TABFIL_TABCOL_FK;
alter table MDSAS2.SAS_TABLAS_FILTROS enable constraint TABFIL_DICFIL_FK;
alter table MDSAS2.SAS_PERFIL_MENU enable constraint SASPME_SASMENU_FK;
alter table MDSAS2.SAS_PERFIL_FLUJO_OPE enable constraint SASPFO_FLUOPE_FK;
alter table MDSAS2.SAS_FLUJOS_OPE_GRUPO enable constraint FLUOPEGRP_GRPFIL_FK;
alter table MDSAS2.SAS_FLUJOS_OPE_GRUPO enable constraint FLUOPEGRP_FLUOPE_FK;
alter table MDSAS2.SAS_FLUJOS_OPE_ACCIONES enable constraint FLUOPEACC_SASACC_FK;
alter table MDSAS2.SAS_FLUJOS_OPE_ACCIONES enable constraint FLUOPEACC_FLUOPE_FK;
alter table MDSAS2.SAS_FLUJOS_OPERACION enable constraint FLUOPE_SASFLU_FK;
alter table MDSAS2.SAS_FLUJOS_TABLAS enable constraint FLUTAB_SASTAB_FK;
alter table MDSAS2.SAS_FLUJOS_TABLAS enable constraint FLUTAB_SASFLU_FK;
alter table MDSAS2.SAS_FLUJOS_OPE_REGLA enable constraint FLUOPERGL_FLUOPE_FK;
alter table MDSAS2.SAS_FLUJOS_OPE_REGLA enable constraint FLUOPERGL_SASRGL_FK;
alter table MDSAS2.SAS_DOCGRP_PREDICADO enable constraint SASDPRE_UK;
alter table MDSAS2.SAS_DOCGRP_PREDICADO enable constraint SASDPRE_SASDGRP_FK;
alter table MDSAS2.SAS_DOCGRP_PREDICADO enable constraint SASDPRE_DICOPE_FK;
alter table MDSAS2.SAS_DOCGRP_PREDICADO enable constraint SASDPRE_DICFIL_FK;
alter table MDSAS2.SAS_DOCPER_PERFIL_MENU enable constraint SASDPME_SASMENU_FK;
alter table MDSAS2.SAS_DOCPER_PERFIL_MENU enable constraint SASDPME_SASDPER_FK;
alter table MDSAS2.SAS_SOLUSR_PERFIL enable constraint SASOLPER_SASSUSR_FK;
alter table MDSAS2.SAS_SOLUSR_PERFIL enable constraint SASOLPER_SASSIS_FK;
alter table MDSAS2.SAS_SOLUSR_PERFIL enable constraint SASOLPER_SASPER_FK;
alter table MDSAS2.SAS_DOCPER_PERFIL_FLUOPE enable constraint SASDPFO_SASDPER_FK;
alter table MDSAS2.SAS_DOCPER_PERFIL_FLUOPE enable constraint SASDPFO_FLUOPE_FK;
alter table MDSAS2.SAS_GRUPO_PREDICADO enable constraint GRPPRE_GRPFIL_FK;
alter table MDSAS2.SAS_GRUPO_PREDICADO enable constraint GRPPRE_DICFIL_FK;
alter table MDSAS2.SAS_GRUPO_PREDICADO enable constraint GRPPRE_DICOPE_FK;
alter table MDSAS2.SAS_GRUPO_PREDICADO enable constraint GRPPRE_UK;
alter table MDSAS2.SAS_ACCESOS_PERFILES enable constraint SACPER_SASSIS_FK;
alter table MDSAS2.SAS_ACCESOS_PERFILES enable constraint ACCPER_SASPER_FK;
alter table MDSAS2.SAS_ACCESOS_PERFILES enable constraint ACCPER_SASUSR_FK;"+"\n",                              

                PRIORIDAD = 5,
                TIPEM = 0
            });
            
            //SAS ACCIONES
            macros.Add(new SAS_MACRO_DTO()
            {
                ID_MACRO = 6,
                MACRO = "INSERT_SASACC",
                DESC = "INSERT SAS_ACCIONES",
                ORIGEN = "ORCL",
                STATEMENT = "insert into MDSAS2.sas_acciones ("+
                            "id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod)"+
                            " values("+
                            "'{||id_accion||}', '{||accion||}', '{||nombre_accion||}', '{||desc_accion||}', '{||id_sistema||}', '{||aplicacion||}', '{||capa||}', '{||vigente||}', '{||api_estado||}', '{||api_transaccion||}', '{||usu_cre||}',to_date(replace('{||fec_cre||}','.',''),'DD/MM/YYYY HH24:MI:SS'), null, sysdate);",
                PRIORIDAD = 4,
              
                DTO = "SAS_ACCIONES_DTO",
                ENTITY="SAS_ACCIONES",
                LAMBDAPROPNAME = "ID_SISTEMA",
                IDENTJ = 0,
                TIPEM = 1
            });

            //SAS PERFILES
            macros.Add(new SAS_MACRO_DTO()
            {
                ID_MACRO = 5,
                MACRO = "INSERT_SASPERFILES",
                DESC = "INSERT SAS_PERFILES",
                ORIGEN = "ORCL",
                STATEMENT = "insert into MDSAS2.sas_perfiles ("+ 
                            "id_perfil, id_sistema, nombre_perfil, desc_perfil, tipo_perfil, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod)"+
                            "values ("+
                            "'{||id_perfil||}', '{||id_sistema||}', '{||nombre_perfil||}', '{||desc_perfil||}', '{||tipo_perfil||}', '{||vigente||}', '{||api_estado||}', '{||api_transaccion||}', '{||usu_cre||}',to_date(replace('{||fec_cre||}','.',''),'DD/MM/YYYY HH24:MI:SS'), null, sysdate);",
                PRIORIDAD = 4,
                
                DTO = "SAS_PERFILES_DTO",
                ENTITY = "SAS_PERFILES",
                LAMBDAPROPNAME = "ID_SISTEMA",
                IDENTJ = 0,
                TIPEM = 1

            });

            //SAS MENUS
            macros.Add(new SAS_MACRO_DTO()
            {
                ID_MACRO = 6,
                MACRO = "INSERT_SASMENUS",
                DESC = "INSERT SAS_MENUS",
                ORIGEN = "ORCL",
                STATEMENT = "insert into MDSAS2.sas_menus ("+
                            "id_menu, id_sistema, nombre_menu, id_menu_padre, orden, jerarquia, metodo, desc_menu, tipo_menu, ico_menu, tooltip, vigente, habilitado, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) "+
                            "values ("+
                            "'{||id_menu||}', '{||id_sistema||}', '{||nombre_menu||}', '{||id_menu_padre||}', '{||orden||}','{||jerarquia||}', '{||metodo||}', '{||desc_menu||}', '{||tipo_menu||}', '{||ico_menu||}', '{||tooltip||}','{||vigente||}', '{||habilitado||}', '{||api_estado||}', '{||api_transaccion||}', '{||usu_cre||}',to_date(replace('{||fec_cre||}','.',''),'DD/MM/YYYY HH24:MI:SS'), null, sysdate);",
                PRIORIDAD = 4,
                
                DTO = "SAS_MENUS_DTO",
                ENTITY = "SAS_MENUS",
                LAMBDAPROPNAME = "ID_SISTEMA",
                IDENTJ = 0,
                TIPEM = 1

            });


            //SAS FLUJOS
            macros.Add(new SAS_MACRO_DTO()
            {
                ID_MACRO = 7,
                MACRO = "INSERT_SASFLUJOS",
                DESC = "INSERT SAS_FLUJOS",
                ORIGEN = "ORCL",
                STATEMENT = "insert into MDSAS2.sas_flujos ("+
                            "id_flujo, id_sistema, flujo, area, aplicacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod "+
                            ") values ("+
                            "'{||id_flujo||}', '{||id_sistema||}', '{||flujo||}', '{||area||}', '{||aplicacion||}', '{||vigente||}', '{||api_estado||}', '{||api_transaccion||}', '{||usu_cre||}',to_date(replace('{||fec_cre||}','.',''),'DD/MM/YYYY HH24:MI:SS'), null, sysdate);",
                PRIORIDAD = 4,
                
                DTO = "SAS_FLUJOS_DTO",
                ENTITY = "SAS_FLUJOS",
                LAMBDAPROPNAME = "ID_SISTEMA",
                IDENTJ = 0,
                TIPEM = 1

            });

            //SAS TABLAS
            macros.Add(new SAS_MACRO_DTO()
            {
                ID_MACRO = 8,
                MACRO = "INSERT_SASTABLAS",
                DESC = "INSERT SAS_TABLAS",
                ORIGEN = "ORCL",
                STATEMENT = "insert into MDSAS2.sas_tablas ("+
                            "id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod "+
                            ") values ("+
                            "'{||id_sistema||}', '{||id_tabla||}', '{||nombre_tabla||}', '{||alias_tabla||}', '{||desc_tabla||}', '{||owner||}', '{||vigente||}', '{||api_estado||}', '{||api_transaccion||}', '{||usu_cre||}',to_date(replace('{||fec_cre||}','.',''),'DD/MM/YYYY HH24:MI:SS'), null, sysdate);",
                PRIORIDAD = 4,
                
                DTO = "SAS_TABLAS_DTO",
                ENTITY = "SAS_TABLAS",
                LAMBDAPROPNAME = "ID_SISTEMA",
                IDENTJ = 0,
                TIPEM = 1

            });

            //SAS TABLAS COLUMNAS
            macros.Add(new SAS_MACRO_DTO()
            {
                ID_MACRO = 9,
                MACRO = "INSERT_SASTABLASCOLUMNAS",
                DESC = "INSERT SAS_TABLAS_COLUMNAS",
                ORIGEN = "ORCL",
                STATEMENT = " insert into MDSAS2.sas_tablas_columnas ("+
                            "id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod "+
                            ") values ("+
                            "'{||id_sistema||}','{||id_tabla||}','{||id_columna||}','{||nombre_columna||}','{||comentario||}','{||vigente||}','{||api_estado||}','{||api_transaccion||}','{||usu_cre||}',to_date(replace('{||fec_cre||}','.',''),'DD/MM/YYYY HH24:MI:SS'), null, sysdate);",
                PRIORIDAD = 4,
                
                DTO = "SAS_TABLAS_COLUMNAS_DTO",
                ENTITY = "SAS_TABLAS_COLUMNAS",
                LAMBDAPROPNAME = "ID_SISTEMA",
                IDENTJ = 0,
                TIPEM = 1

            });



            //SAS TABLAS FILTROS
            macros.Add(new SAS_MACRO_DTO()
            {
                ID_MACRO = 10,
                MACRO = "INSERT_SASTABLASFILTROS",
                DESC = "INSERT SAS_TABLAS_FILTROS",
                ORIGEN = "ORCL",
                STATEMENT = "insert into MDSAS2.sas_tablas_filtros ("+
                            "id_sistema, id_columna, id_filtro, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod "+ 
                            ") values ("+
                            " '{||id_sistema||}', '{||id_columna||}', '{||id_filtro||}', '{||vigente||}', '{||api_estado||}', '{||api_transaccion||}', '{||usu_cre||}',to_date(replace('{||fec_cre||}','.',''),'DD/MM/YYYY HH24:MI:SS'), null, sysdate); ",
                PRIORIDAD = 4,
                
                DTO = "SAS_TABLAS_FILTROS_DTO",
                ENTITY = "SAS_TABLAS_FILTROS",
                LAMBDAPROPNAME = "ID_SISTEMA",
                IDENTJ = 0,
                TIPEM = 1
            });

            //SAS DICCIONARIO OPERADORES
            macros.Add(new SAS_MACRO_DTO()
            {
                ID_MACRO = 11,
                MACRO = "INSERT_SASDICCIONARIOOPERADORES",
                DESC = "INSERT SAS_DICCIONARIO_OPERADORES",
                ORIGEN = "ORCL",
                STATEMENT = " insert into MDSAS2.sas_diccionario_operadores ("+
                            "id_operador, id_sistema, nombre_operador, simbolo, descripcion, statement, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod "+
                            ") values ("+
                            "'{||id_operador||}', '{||id_sistema||}', '{||nombre_operador||}', '{||simbolo||}', '{||descripcion||}', '{||statement||}', '{||vigente||}', '{||api_estado||}', '{||api_transaccion||}', '{||usu_cre||}', to_date(replace('{||fec_cre||}','.',''),'DD/MM/YYYY HH24:MI:SS') , null, sysdate); ",
                PRIORIDAD = 4,
                
                DTO = "SAS_DICCIONARIO_OPERADORES_DTO",
                ENTITY = "SAS_DICCIONARIO_OPERADORES",
                LAMBDAPROPNAME = "ID_SISTEMA",
                IDENTJ = 0,
                TIPEM = 1
            });

            //SAS DICCIONARIO FILTROS
            macros.Add(new SAS_MACRO_DTO()
            {
                ID_MACRO = 12,
                MACRO = "INSERT_SASDICCIONARIOFILTROS",
                DESC = "INSERT SAS_DICCIONARIO_FILTROS",
                ORIGEN = "ORCL",
                STATEMENT = " insert into MDSAS2.sas_diccionario_filtros ("+
                            " id_filtro, id_sistema, nombre_filtro, desc_filtro, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod " +
                            ") values ("+
                            " '{||id_filtro||}', '{||id_sistema||}', '{||nombre_filtro||}', '{||desc_filtro||}', '{||vigente||}', '{||api_estado||}', '{||api_transaccion||}', '{||usu_cre||}',to_date(replace('{||fec_cre||}','.',''),'DD/MM/YYYY HH24:MI:SS'), null, sysdate); ",
                PRIORIDAD = 4,
                
                DTO = "SAS_DICCIONARIO_FILTROS_DTO",
                ENTITY = "SAS_DICCIONARIO_FILTROS",
                LAMBDAPROPNAME = "ID_SISTEMA",
                IDENTJ = 0,
                TIPEM = 1
            });

            //SAS DICCIONARIO ETAPAS
            macros.Add(new SAS_MACRO_DTO()
            {
                ID_MACRO = 13,
                MACRO = "INSERT_SASDICCIONARIOETAPAS",
                DESC = "INSERT SAS_DICCIONARIO_ETAPAS",
                ORIGEN = "ORCL",
                STATEMENT = " insert into MDSAS2.sas_diccionario_etapas ("+
                            " id_etapa, id_sistema, nombre_etapa, desc_etapa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod "+
                            ") values ("+
                            "'{||id_etapa||}', '{||id_sistema||}', '{||nombre_etapa||}', '{||desc_etapa||}', '{||vigente||}', '{||api_estado||}', '{||api_transaccion||}', '{||usu_cre||}',to_date(replace('{||fec_cre||}','.',''),'DD/MM/YYYY HH24:MI:SS'), null, sysdate); ",
                PRIORIDAD = 4,
                
                DTO = "SAS_DICCIONARIO_ETAPAS_DTO",
                ENTITY = "SAS_DICCIONARIO_ETAPAS",
                LAMBDAPROPNAME = "ID_SISTEMA",
                IDENTJ = 0,
                TIPEM = 1
            });
            //JOIN
            //SAS PERFIL MENU
            macros.Add(new SAS_MACRO_DTO()
            {
                ID_MACRO = 14,
                MACRO = "INSERT_SASPERFILMENU",
                DESC = "INSERT SAS_PERFIL_MENU",
                ORIGEN = "ORCL",
                STATEMENT = " insert into MDSAS2.sas_perfil_menu ("+
                            "id_perfil, id_menu, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod "+
                            " ) values ("+
                            "'{||id_perfil||}', '{||id_menu||}', '{||vigente||}', '{||api_estado||}', '{||api_transaccion||}', '{||usu_cre||}', to_date(replace('{||fec_cre||}','.',''),'DD/MM/YYYY HH24:MI:SS'), null, sysdate);",
                PRIORIDAD = 4,
                
                DTO = "SAS_PERFIL_MENU_DTO",
                ENTITY = "SAS_PERFIL_MENU",
                LAMBDAPROPNAME = "SAS_MENUS.ID_SISTEMA",
                IDENTJ = 1,
                TIPEM = 1
            });
            //
            //JOIN
            //SAS FLUJOS OPERACION
            macros.Add(new SAS_MACRO_DTO()
            {
                ID_MACRO = 15,
                MACRO = "INSERT_SASFLUJOSOPERACION",
                DESC = "INSERT SAS_FLUJOS_OPERACION",
                ORIGEN = "ORCL",
                STATEMENT = "insert into MDSAS2.sas_flujos_operacion ("+
                            "id_flujo, id_operacion, desc_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod "+
                            ") values ( "+
                            " '{||id_flujo||}', '{||id_operacion||}', '{||desc_operacion||}', '{||vigente||}', '{||api_estado||}', '{||api_transaccion||}', '{||usu_cre||}', to_date(replace('{||fec_cre||}','.',''),'DD/MM/YYYY HH24:MI:SS'), null, sysdate); ",
                PRIORIDAD = 4,
                
                DTO = "SAS_FLUJOS_OPERACION_DTO",
                ENTITY = "SAS_FLUJOS_OPERACION",
                LAMBDAPROPNAME = "SAS_FLUJOS.ID_SISTEMA",
                IDENTJ = 1,
                TIPEM = 1
            });
            //

            //JOIN
            //SAS FLUJOS OPERACION ACCIONES
            macros.Add(new SAS_MACRO_DTO()
            {
                ID_MACRO = 16,
                MACRO = "INSERT_SASFLUJOSOPEACCIONES",
                DESC = "INSERT SAS_FLUJOS_OPE_ACCIONES",
                ORIGEN = "ORCL",
                STATEMENT = " insert into MDSAS2.sas_flujos_ope_acciones ("+
                            "id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod "+
                            ") values ("+
                            "'{||id_accion||}', '{||id_operacion||}', '{||vigente||}', '{||api_estado||}', '{||api_transaccion||}', '{||usu_cre||}',to_date(replace('{||fec_cre||}','.',''),'DD/MM/YYYY HH24:MI:SS'), null, sysdate); ",
                PRIORIDAD = 4,                
                DTO = "SAS_FLUJOS_OPE_ACCIONES_DTO",
                ENTITY = "SAS_FLUJOS_OPE_ACCIONES",
                LAMBDAPROPNAME = "SAS_ACCIONES.ID_SISTEMA",
                IDENTJ = 1,
                TIPEM = 1
            });

            //JOIN
            //SAS PERFIL FLUJO OPE
            macros.Add(new SAS_MACRO_DTO()
            {
                ID_MACRO = 17,
                MACRO = "INSERT_SASPERFILFLUJOOPE",
                DESC = "INSERT SAS_PERFIL_FLUJO_OPE",
                ORIGEN = "ORCL",
                STATEMENT = " insert into MDSAS2.sas_perfil_flujo_ope ("+
                            "id_perfil, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod "+
                            ") values ("+
                            "'{||id_perfil||}', '{||id_operacion||}', '{||vigente||}', '{||api_estado||}', '{||api_transaccion||}', '{||usu_cre||}',to_date(replace('{||fec_cre||}','.',''),'DD/MM/YYYY HH24:MI:SS'), null, sysdate); ",
                PRIORIDAD = 4,
                DTO = "SAS_PERFIL_FLUJO_OPE_DTO",
                ENTITY = "SAS_PERFIL_FLUJO_OPE",
                LAMBDAPROPNAME = "SAS_PERFILES.ID_SISTEMA",
                IDENTJ = 2,
                TIPEM = 1
            });
            //
            return macros;
        }
    }
}