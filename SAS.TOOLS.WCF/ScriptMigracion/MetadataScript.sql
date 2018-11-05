alter table MDSAS.SAS_ACCIONES disable all triggers; 
alter table MDSAS.SAS_FLUJOS disable all triggers; 
alter table MDSAS.SAS_FLUJOS_OPERACION disable all triggers; 
alter table MDSAS.SAS_FLUJOS_OPE_ACCIONES disable all triggers; 
alter table MDSAS.SAS_FLUJOS_OPE_GRUPO disable all triggers; 
alter table MDSAS.SAS_FLUJOS_TABLAS disable all triggers; 
alter table MDSAS.SAS_PERFILES disable all triggers; 
alter table MDSAS.SAS_PERFIL_FLUJO_OPE disable all triggers; 
alter table MDSAS.SAS_TABLAS disable all triggers; 
alter table MDSAS.SAS_TABLAS_COLUMNAS disable all triggers; 
alter table MDSAS.SAS_TABLAS_FILTROS disable all triggers; 
alter table MDSAS.SAS_DICCIONARIO_OPERADORES disable all triggers; 
alter table MDSAS.SAS_DICCIONARIO_FILTROS disable all triggers; 
alter table MDSAS.SAS_DICCIONARIO_ETAPAS disable all triggers; 
alter table MDSAS.SAS_PERFIL_MENU disable all triggers; 
alter table MDSAS.SAS_MENUS disable all triggers; 

alter table MDSAS.SAS_ACCESOS_PERFILES disable constraint SACPER_SASSIS_FK;
alter table MDSAS.SAS_ACCESOS_PERFILES disable constraint ACCPER_SASPER_FK;
alter table MDSAS.SAS_ACCESOS_PERFILES disable constraint ACCPER_SASUSR_FK;
alter table MDSAS.SAS_GRUPO_PREDICADO disable constraint GRPPRE_GRPFIL_FK;
alter table MDSAS.SAS_GRUPO_PREDICADO disable constraint GRPPRE_DICFIL_FK;
alter table MDSAS.SAS_GRUPO_PREDICADO disable constraint GRPPRE_DICOPE_FK;
alter table MDSAS.SAS_GRUPO_PREDICADO disable constraint GRPPRE_UK;
alter table MDSAS.SAS_DOCPER_PERFIL_FLUOPE disable constraint SASDPFO_SASDPER_FK;
alter table MDSAS.SAS_DOCPER_PERFIL_FLUOPE disable constraint SASDPFO_FLUOPE_FK;
alter table MDSAS.SAS_SOLUSR_PERFIL disable constraint SASOLPER_SASSUSR_FK;
alter table MDSAS.SAS_SOLUSR_PERFIL disable constraint SASOLPER_SASSIS_FK;
alter table MDSAS.SAS_SOLUSR_PERFIL disable constraint SASOLPER_SASPER_FK;
alter table MDSAS.SAS_DOCPER_PERFIL_MENU disable constraint SASDPME_SASMENU_FK;
alter table MDSAS.SAS_DOCPER_PERFIL_MENU disable constraint SASDPME_SASDPER_FK;
alter table MDSAS.SAS_DOCGRP_PREDICADO disable constraint SASDPRE_UK;
alter table MDSAS.SAS_DOCGRP_PREDICADO disable constraint SASDPRE_SASDGRP_FK;
alter table MDSAS.SAS_DOCGRP_PREDICADO disable constraint SASDPRE_DICOPE_FK;
alter table MDSAS.SAS_DOCGRP_PREDICADO disable constraint SASDPRE_DICFIL_FK;
alter table MDSAS.SAS_FLUJOS_OPE_REGLA disable constraint FLUOPERGL_FLUOPE_FK;
alter table MDSAS.SAS_FLUJOS_OPE_REGLA disable constraint FLUOPERGL_SASRGL_FK;
alter table MDSAS.SAS_FLUJOS_TABLAS disable constraint FLUTAB_SASTAB_FK;
alter table MDSAS.SAS_FLUJOS_TABLAS disable constraint FLUTAB_SASFLU_FK;
alter table MDSAS.SAS_FLUJOS_OPERACION disable constraint FLUOPE_SASFLU_FK;
alter table MDSAS.SAS_FLUJOS_OPE_ACCIONES disable constraint FLUOPEACC_SASACC_FK;
alter table MDSAS.SAS_FLUJOS_OPE_ACCIONES disable constraint FLUOPEACC_FLUOPE_FK;
alter table MDSAS.SAS_FLUJOS_OPE_GRUPO disable constraint FLUOPEGRP_GRPFIL_FK;
alter table MDSAS.SAS_FLUJOS_OPE_GRUPO disable constraint FLUOPEGRP_FLUOPE_FK;
alter table MDSAS.SAS_PERFIL_FLUJO_OPE disable constraint SASPFO_FLUOPE_FK;
alter table MDSAS.SAS_PERFIL_MENU disable constraint SASPME_SASMENU_FK;
alter table MDSAS.SAS_TABLAS_FILTROS disable constraint TABFIL_SASSIS_FK;
alter table MDSAS.SAS_TABLAS_FILTROS disable constraint TABFIL_TABCOL_FK;
alter table MDSAS.SAS_TABLAS_FILTROS disable constraint TABFIL_DICFIL_FK;
alter table MDSAS.SAS_TABLAS_COLUMNAS disable constraint TABCOL_SASTAB_FK;
alter table MDSAS.SAS_TABLAS_COLUMNAS disable constraint TABCOL_UK;
alter table MDSAS.SAS_TABLAS disable constraint SASTAB_SASSIS_FK;
alter table MDSAS.SAS_TABLAS disable constraint SASTAB_UK;
alter table MDSAS.SAS_PERFILES disable constraint SASPER_SASSIS_FK;
alter table MDSAS.SAS_MENUS disable constraint SASMENU_UK;
alter table MDSAS.SAS_MENUS disable constraint SASMENU_SASSIS_FK;
alter table MDSAS.SAS_ACCIONES disable constraint SASACC_SASSIS_FK;
alter table MDSAS.SAS_ACCIONES disable constraint SASACC_UK;
alter table MDSAS.SAS_DICCIONARIO_ETAPAS disable constraint DICETP_SASSIS_FK;
alter table MDSAS.SAS_DICCIONARIO_ETAPAS disable constraint DICETP_UK;
alter table MDSAS.SAS_DICCIONARIO_FILTROS disable constraint DICFIL_SASSIS_FK;
alter table MDSAS.SAS_DICCIONARIO_OPERADORES disable constraint DICOPE_SASSIS_FK;
alter table MDSAS.SAS_FLUJOS disable constraint SASFLU_SASSIS_FK;
alter table MDSAS.SAS_FLUJOS disable constraint SASFLU_UK;

delete mdsas.sas_perfil_flujo_ope where id_operacion in (select id_operacion from mdsas.sas_flujos_operacion where id_flujo in (select id_flujo from mdsas.sas_flujos where id_sistema = 11)); 
delete mdsas.sas_perfil_menu where id_menu in (select id_menu from mdsas.sas_menus where id_sistema = 11); 
delete mdsas.sas_flujos_ope_acciones where id_accion in (select id_accion from mdsas.sas_acciones where id_sistema = 11); 
delete mdsas.sas_flujos_ope_acciones where id_operacion in (select id_operacion from mdsas.sas_flujos_operacion where id_flujo in (select id_flujo from mdsas.sas_flujos where id_sistema = 11)); 
delete mdsas.sas_flujos_ope_grupo where id_operacion in (select id_operacion from mdsas.sas_flujos_operacion where id_flujo in (select id_flujo from mdsas.sas_flujos where id_sistema = 11)); 
delete mdsas.sas_flujos_operacion where id_flujo in (select id_flujo from mdsas.sas_flujos where id_sistema = 11); 
delete mdsas.sas_acciones where id_sistema = 11; 
delete mdsas.sas_perfiles where id_sistema = 11; 
delete mdsas.sas_menus where id_sistema = 11; 
delete mdsas.sas_flujos where id_sistema = 11;
delete mdsas.sas_tablas_filtros where id_sistema = 11; 
delete mdsas.sas_tablas_columnas where id_sistema = 11; 
delete mdsas.sas_tablas where id_sistema = 11; 
delete mdsas.sas_diccionario_operadores where id_sistema = 11; 
delete mdsas.sas_diccionario_filtros where id_sistema = 11; 
delete mdsas.sas_diccionario_etapas where id_sistema = 11; 

insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2720, 'QRY_V_SRP_FUENTES_FILTRADO', 'QRY_V_SRP_FUENTES_FILTRADO', 'QRY_V_SRP_FUENTES_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:38','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2721, 'QRY_V_SRP_FUENTES_LISTADO', 'QRY_V_SRP_FUENTES_LISTADO', 'QRY_V_SRP_FUENTES_LISTADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:38','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2722, 'QRY_V_SRP_FUENTES_PPTO_FILTRADO', 'QRY_V_SRP_FUENTES_PPTO_FILTRADO', 'QRY_V_SRP_FUENTES_PPTO_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:38','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2723, 'QRY_V_SRP_GERENCIAS_FILTRADO', 'QRY_V_SRP_GERENCIAS_FILTRADO', 'QRY_V_SRP_GERENCIAS_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:38','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2724, 'QRY_V_SRP_GERENCIAS_LISTADO', 'QRY_V_SRP_GERENCIAS_LISTADO', 'QRY_V_SRP_GERENCIAS_LISTADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:38','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2725, 'QRY_V_SRP_GERENCIAS_ENTIDAD_LISTADO', 'QRY_V_SRP_GERENCIAS_ENTIDAD_LISTADO', 'QRY_V_SRP_GERENCIAS_ENTIDAD_LISTADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:38','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2726, 'QRY_V_SRP_MUNICIPIOS_FILTRADO', 'QRY_V_SRP_MUNICIPIOS_FILTRADO', 'QRY_V_SRP_MUNICIPIOS_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:38','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2727, 'QRY_V_SRP_MUNICIPIOS_LISTADO', 'QRY_V_SRP_MUNICIPIOS_LISTADO', 'QRY_V_SRP_MUNICIPIOS_LISTADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:39','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2728, 'QRY_V_SRP_ORGANISMOS_FILTRADO', 'QRY_V_SRP_ORGANISMOS_FILTRADO', 'QRY_V_SRP_ORGANISMOS_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:39','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2729, 'QRY_V_SRP_ORGANISMOS_LISTADO', 'QRY_V_SRP_ORGANISMOS_LISTADO', 'QRY_V_SRP_ORGANISMOS_LISTADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:39','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2730, 'QRY_V_SRP_ORGANISMOS_PPTO_FILTRADO', 'QRY_V_SRP_ORGANISMOS_PPTO_FILTRADO', 'QRY_V_SRP_ORGANISMOS_PPTO_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:39','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2731, 'QRY_V_SRP_PAISES_FILTRADO', 'QRY_V_SRP_PAISES_FILTRADO', 'QRY_V_SRP_PAISES_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:39','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2732, 'QRY_V_SRP_PAISES_LISTADO', 'QRY_V_SRP_PAISES_LISTADO', 'QRY_V_SRP_PAISES_LISTADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:39','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2733, 'QRY_V_SRP_TIPO_CARGA_FILTRADO', 'QRY_V_SRP_TIPO_CARGA_FILTRADO', 'QRY_V_SRP_TIPO_CARGA_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:39','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2734, 'QRY_V_SRP_TIPO_CARGA_LISTADO', 'QRY_V_SRP_TIPO_CARGA_LISTADO', 'QRY_V_SRP_TIPO_CARGA_LISTADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:39','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2735, 'QRY_V_SRP_TIPO_GA_FILTRADO', 'QRY_V_SRP_TIPO_GA_FILTRADO', 'QRY_V_SRP_TIPO_GA_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:40','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2736, 'QRY_V_SRP_TIPO_GA_LISTADO', 'QRY_V_SRP_TIPO_GA_LISTADO', 'QRY_V_SRP_TIPO_GA_LISTADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:40','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2737, 'QRY_V_SRP_TIPO_IDENTIDADES_FILTRADO', 'QRY_V_SRP_TIPO_IDENTIDADES_FILTRADO', 'QRY_V_SRP_TIPO_IDENTIDADES_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:40','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2738, 'QRY_V_SRP_TIPO_IDENTIDADES_LISTADO', 'QRY_V_SRP_TIPO_IDENTIDADES_LISTADO', 'QRY_V_SRP_TIPO_IDENTIDADES_LISTADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:40','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2739, 'QRY_V_SRP_TIPO_OPERACION_FILTRADO', 'QRY_V_SRP_TIPO_OPERACION_FILTRADO', 'QRY_V_SRP_TIPO_OPERACION_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:40','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2740, 'QRY_V_SRP_TIPO_OPERACION_LISTADO', 'QRY_V_SRP_TIPO_OPERACION_LISTADO', 'QRY_V_SRP_TIPO_OPERACION_LISTADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:40','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2741, 'QRY_V_SRP_UE_FILTRADO', 'QRY_V_SRP_UE_FILTRADO', 'QRY_V_SRP_UE_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:40','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2742, 'QRY_V_SRP_UE_LISTADO', 'QRY_V_SRP_UE_LISTADO', 'QRY_V_SRP_UE_LISTADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:41','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2743, 'QRY_V_SRP_BANCOS_FILTRADO', 'QRY_V_SRP_BANCOS_FILTRADO', 'QRY_V_SRP_BANCOS_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:41','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2744, 'QRY_V_SRP_BANCOS_LISTADO', 'QRY_V_SRP_BANCOS_LISTADO', 'QRY_V_SRP_BANCOS_LISTADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:41','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2745, 'QRY_SRP_ENTIDADES_INFO_LISTADO', 'QRY_SRP_ENTIDADES_INFO_LISTADO', 'QRY_SRP_ENTIDADES_INFO_LISTADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:41','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2746, 'QRY_SRP_ENTIDADES_INFO_FILTRADO', 'QRY_SRP_ENTIDADES_INFO_FILTRADO', 'QRY_SRP_ENTIDADES_INFO_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:41','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2747, 'INS_SRP_ENTIDADES_INFO_INSERTA', 'INS_SRP_ENTIDADES_INFO_INSERTA', 'INS_SRP_ENTIDADES_INFO_INSERTA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:41','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2748, 'UPD_SRP_ENTIDADES_INFO_ACTUALIZA', 'UPD_SRP_ENTIDADES_INFO_ACTUALIZA', 'UPD_SRP_ENTIDADES_INFO_ACTUALIZA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:41','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2749, 'DEL_SRP_ENTIDADES_INFO_ELIMINA', 'DEL_SRP_ENTIDADES_INFO_ELIMINA', 'DEL_SRP_ENTIDADES_INFO_ELIMINA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:41','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2750, 'QRY_SRP_DOC_CENSO_LISTADO', 'QRY_SRP_DOC_CENSO_LISTADO', 'QRY_SRP_DOC_CENSO_LISTADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:42','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2751, 'QRY_SRP_DOC_CENSO_SINGLE', 'QRY_SRP_DOC_CENSO_SINGLE', 'QRY_SRP_DOC_CENSO_SINGLE', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:42','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2752, 'QRY_SRP_DOC_CENSO_FILTRADOLAZY', 'QRY_SRP_DOC_CENSO_FILTRADOLAZY', 'QRY_SRP_DOC_CENSO_FILTRADOLAZY', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:42','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2753, 'INS_SRP_DOC_CENSO_INSERTA', 'INS_SRP_DOC_CENSO_INSERTA', 'INS_SRP_DOC_CENSO_INSERTA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:42','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2754, 'UPD_SRP_DOC_CENSO_ACTUALIZA', 'UPD_SRP_DOC_CENSO_ACTUALIZA', 'UPD_SRP_DOC_CENSO_ACTUALIZA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:42','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2755, 'DEL_SRP_DOC_CENSO_ELIMINA', 'DEL_SRP_DOC_CENSO_ELIMINA', 'DEL_SRP_DOC_CENSO_ELIMINA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:42','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2756, 'UPD_ID_PERSONA', 'UPD_ID_PERSONA', 'UPD_ID_PERSONA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:42','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2757, 'UPD_SRP_DOC_CENSO_APRUEBA', 'UPD_SRP_DOC_CENSO_APRUEBA', 'UPD_SRP_DOC_CENSO_APRUEBA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:42','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2758, 'UPD_BAJA_SRP_EMPLEO', 'UPD_BAJA_SRP_EMPLEO', 'UPD_BAJA_SRP_EMPLEO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:43','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2759, 'UPD_ALTA_SRP_EMPLEO', 'UPD_ALTA_SRP_EMPLEO', 'UPD_ALTA_SRP_EMPLEO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:43','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2760, 'UPD_SRP_DOC_CENSO_VERIFICA', 'UPD_SRP_DOC_CENSO_VERIFICA', 'UPD_SRP_DOC_CENSO_VERIFICA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:43','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2761, 'UPD_SRP_DOC_CENSO_RECHAZA', 'UPD_SRP_DOC_CENSO_RECHAZA', 'UPD_SRP_DOC_CENSO_RECHAZA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:43','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2762, 'QRY_SRP_ENTIDADES_LISTADO', 'QRY_SRP_ENTIDADES_LISTADO', 'QRY_SRP_ENTIDADES_LISTADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:43','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2477, 'SEFIN.SIREP.[GET]/CENSO/INDEX', 'INDEX', 'INDEX', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2478, 'SEFIN.SIREP.[GET]/CENSO/LISTALAZY', 'LISTALAZY', 'LISTALAZY', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2479, 'SEFIN.SIREP.[POST]/CENSO/GET', 'GET', 'GET', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2480, 'SEFIN.SIREP.[GET]/CENSO/GETFOTOPERSONA', 'GETFOTOPERSONA', 'GETFOTOPERSONA', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2481, 'SEFIN.SIREP.[GET]/DOCCENSO/INDEX', 'INDEX', 'INDEX', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2482, 'SEFIN.SIREP.[GET]/DOCCENSO/REGSERVIDORES', 'REGSERVIDORES', 'REGSERVIDORES', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2483, 'SEFIN.SIREP.[GET]/DOCCENSO/APRSERVIDORES', 'APRSERVIDORES', 'APRSERVIDORES', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:07','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2484, 'SEFIN.SIREP.[GET]/DOCCENSO/LISTALAZY', 'LISTALAZY', 'LISTALAZY', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:07','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2485, 'SEFIN.SIREP.[POST]/DOCCENSO/GET', 'GET', 'GET', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:07','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2486, 'SEFIN.SIREP.[POST]/DOCCENSO/GUARDAR', 'GUARDAR', 'GUARDAR', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:07','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2487, 'SEFIN.SIREP.[POST]/DOCCENSO/ELIMINAR', 'ELIMINAR', 'ELIMINAR', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:07','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2488, 'SEFIN.SIREP.[POST]/DOCCENSO/APROBAR', 'APROBAR', 'APROBAR', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:07','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2489, 'SEFIN.SIREP.[POST]/DOCCENSO/VERIFICAR', 'VERIFICAR', 'VERIFICAR', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:07','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2490, 'SEFIN.SIREP.[POST]/DOCCENSO/RECHAZAR', 'RECHAZAR', 'RECHAZAR', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:08','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2491, 'SEFIN.SIREP.[POST]/DOCCENSO/GETPERSONA', 'GETPERSONA', 'GETPERSONA', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:08','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2492, 'SEFIN.SIREP.[POST]/DOCCENSO/GUARDARPERSONA', 'GUARDARPERSONA', 'GUARDARPERSONA', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:08','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2493, 'SEFIN.SIREP.[POST]/DOCCENSO/GUARDARINFOPERSONAL', 'GUARDARINFOPERSONAL', 'GUARDARINFOPERSONAL', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:08','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2494, 'SEFIN.SIREP.[POST]/DOCCENSO/GUARDAREMPLEO', 'GUARDAREMPLEO', 'GUARDAREMPLEO', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:08','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2495, 'SEFIN.SIREP.[POST]/DOCCENSO/CARGAREMPLEOS', 'CARGAREMPLEOS', 'CARGAREMPLEOS', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:08','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2496, 'SEFIN.SIREP.[GET]/DOCCENSO/GETFOTOPERSONA', 'GETFOTOPERSONA', 'GETFOTOPERSONA', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:08','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2497, 'SEFIN.SIREP.[GET]/DOCCENSO/GETFOTODOCUMENTO', 'GETFOTODOCUMENTO', 'GETFOTODOCUMENTO', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:08','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2498, 'SEFIN.SIREP.[POST]/DOCCENSO/ISFOTODOCUMENTO', 'ISFOTODOCUMENTO', 'ISFOTODOCUMENTO', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:09','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2499, 'SEFIN.SIREP.[POST]/DOCCENSO/GUARDARFOTO', 'GUARDARFOTO', 'GUARDARFOTO', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:09','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2500, 'SEFIN.SIREP.[POST]/DOCCENSO/BORRARFOTO', 'BORRARFOTO', 'BORRARFOTO', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:09','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2501, 'SEFIN.SIREP.[POST]/DOCCENSO/GUARDAREMPLEOPPTO', 'GUARDAREMPLEOPPTO', 'GUARDAREMPLEOPPTO', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:09','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2502, 'SEFIN.SIREP.[POST]/DOCCENSO/BORRAREMPLEO', 'BORRAREMPLEO', 'BORRAREMPLEO', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:09','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2503, 'SEFIN.SIREP.[POST]/DOCCENSO/BORRAREMPLEOPPTO', 'BORRAREMPLEOPPTO', 'BORRAREMPLEOPPTO', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:09','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2504, 'SEFIN.SIREP.[POST]/DOCCENSO/CARGAREMPLEOSPPTO', 'CARGAREMPLEOSPPTO', 'CARGAREMPLEOSPPTO', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:09','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2505, 'SEFIN.SIREP.[POST]/DOCCENSO/GUARDARPAGPEND', 'GUARDARPAGPEND', 'GUARDARPAGPEND', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:10','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2506, 'SEFIN.SIREP.[POST]/DOCCENSO/BORRARPAGPEND', 'BORRARPAGPEND', 'BORRARPAGPEND', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:10','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2508, 'SEFIN.SIREP.[POST]/DOCCENSO/CARGARPUESTOS', 'CARGARPUESTOS', 'CARGARPUESTOS', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:10','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2509, 'SEFIN.SIREP.[GET]/ENTIDADES/INDEX', 'INDEX', 'INDEX', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:10','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2510, 'SEFIN.SIREP.[GET]/ENTIDADES/ENTIDADES', 'ENTIDADES', 'ENTIDADES', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:10','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2512, 'SEFIN.SIREP.[GET]/ENTIDADES/GETENTIDADES', 'GETENTIDADES', 'GETENTIDADES', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:11','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2513, 'SEFIN.SIREP.[GET]/ENTIDADES/GUARDARENTIDAD', 'GUARDARENTIDAD', 'GUARDARENTIDAD', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:11','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2514, 'SEFIN.SIREP.[GET]/ENTIDADES/ACTUALIZARENTIDAD', 'ACTUALIZARENTIDAD', 'ACTUALIZARENTIDAD', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:11','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2515, 'SEFIN.SIREP.[GET]/ENTIDADES/LISTATIPOENTSIAFIDROPDOWN', 'LISTATIPOENTSIAFIDROPDOWN', 'LISTATIPOENTSIAFIDROPDOWN', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:11','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2517, 'SEFIN.SIREP.[GET]/EXCEPCIONES/EXCEPCIONES', 'EXCEPCIONES', 'EXCEPCIONES', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:11','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2518, 'SEFIN.SIREP.[GET]/EXCEPCIONES/LISTAEXCEPCIONES', 'LISTAEXCEPCIONES', 'LISTAEXCEPCIONES', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:11','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2524, 'SEFIN.SIREP.[GET]/HOME/IMAGEUSER', 'IMAGEUSER', 'IMAGEUSER', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:12','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2525, 'SEFIN.SIREP.[GET]/HOME/GETMENU', 'GETMENU', 'GETMENU', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:12','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2528, 'SEFIN.SIREP.[POST]/HOME/KEEPSESSIONALIVE', 'KEEPSESSIONALIVE', 'KEEPSESSIONALIVE', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:13','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2529, 'SEFIN.SIREP.[GET]/LISTAVALORES/ENTIDADES', 'ENTIDADES', 'ENTIDADES', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:13','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2531, 'SEFIN.SIREP.[GET]/LISTAVALORES/BANCOS', 'BANCOS', 'BANCOS', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:13','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2532, 'SEFIN.SIREP.[GET]/LISTAVALORES/CLASESPLANILLA', 'CLASESPLANILLA', 'CLASESPLANILLA', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:13','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2534, 'SEFIN.SIREP.[GET]/LISTAVALORES/MUNICIPIOS', 'MUNICIPIOS', 'MUNICIPIOS', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:13','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2535, 'SEFIN.SIREP.[GET]/LISTAVALORES/FUENTES', 'FUENTES', 'FUENTES', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:14','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2536, 'SEFIN.SIREP.[GET]/LISTAVALORES/GESTION', 'GESTION', 'GESTION', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:14','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2537, 'SEFIN.SIREP.[GET]/LISTAVALORES/GESTIONES', 'GESTIONES', 'GESTIONES', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:14','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2539, 'SEFIN.SIREP.[GET]/LISTAVALORES/GERENCIASADMINISTRATIVAS', 'GERENCIASADMINISTRATIVAS', 'GERENCIASADMINISTRATIVAS', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:14','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2540, 'SEFIN.SIREP.[GET]/LISTAVALORES/ORGANISMOSFINANCIADORES', 'ORGANISMOSFINANCIADORES', 'ORGANISMOSFINANCIADORES', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:14','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2541, 'SEFIN.SIREP.[GET]/LISTAVALORES/PROGRAMAS', 'PROGRAMAS', 'PROGRAMAS', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:14','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2542, 'SEFIN.SIREP.[GET]/LISTAVALORES/SUBPROGRAMAS', 'SUBPROGRAMAS', 'SUBPROGRAMAS', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:15','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2543, 'SEFIN.SIREP.[GET]/LISTAVALORES/PROYECTOS', 'PROYECTOS', 'PROYECTOS', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:15','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2544, 'SEFIN.SIREP.[GET]/LISTAVALORES/ACTIVIDADESOBRAS', 'ACTIVIDADESOBRAS', 'ACTIVIDADESOBRAS', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:15','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2545, 'SEFIN.SIREP.[GET]/LISTAVALORES/OBJETOSGASTO', 'OBJETOSGASTO', 'OBJETOSGASTO', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:15','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2546, 'SEFIN.SIREP.[GET]/LISTAVALORES/PAISES', 'PAISES', 'PAISES', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:15','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2547, 'SEFIN.SIREP.[GET]/LISTAVALORES/TIPOCARGA', 'TIPOCARGA', 'TIPOCARGA', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:15','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2548, 'SEFIN.SIREP.[GET]/LISTAVALORES/TIPOGA', 'TIPOGA', 'TIPOGA', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:15','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2549, 'SEFIN.SIREP.[GET]/LISTAVALORES/TIPOSIDENTIDAD', 'TIPOSIDENTIDAD', 'TIPOSIDENTIDAD', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:16','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2550, 'SEFIN.SIREP.[GET]/LISTAVALORES/TIPOSOPERACION', 'TIPOSOPERACION', 'TIPOSOPERACION', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:16','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2551, 'SEFIN.SIREP.[GET]/LISTAVALORES/UNIDADESEJECUTORAS', 'UNIDADESEJECUTORAS', 'UNIDADESEJECUTORAS', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:16','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2552, 'SEFIN.SIREP.[GET]/LISTAVALORES/FUENTESPPTO', 'FUENTESPPTO', 'FUENTESPPTO', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:16','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2553, 'SEFIN.SIREP.[GET]/LISTAVALORES/ORGANISMOSPPTO', 'ORGANISMOSPPTO', 'ORGANISMOSPPTO', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:16','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2554, 'SEFIN.SIREP.[GET]/LISTAVALORES/OBJETOSGASTOPPTO', 'OBJETOSGASTOPPTO', 'OBJETOSGASTOPPTO', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:16','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2555, 'SEFIN.SIREP.[GET]/LISTAVALORES/OBJETOSGASTOPPTOSIREP', 'OBJETOSGASTOPPTOSIREP', 'OBJETOSGASTOPPTOSIREP', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:16','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2556, 'SEFIN.SIREP.[GET]/LISTAVALORES/TRFBENEFICIARIOPPTO', 'TRFBENEFICIARIOPPTO', 'TRFBENEFICIARIOPPTO', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:16','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2557, 'SEFIN.SIREP.[GET]/LISTAVALORES/SECUENCIALFTEESPECPPTO', 'SECUENCIALFTEESPECPPTO', 'SECUENCIALFTEESPECPPTO', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:17','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2558, 'SEFIN.SIREP.[GET]/LISTAVALORES/TIPO', 'TIPO', 'TIPO', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:17','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2559, 'SEFIN.SIREP.[GET]/LISTAVALORES/LIMPIARCACHE', 'LIMPIARCACHE', 'LIMPIARCACHE', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:17','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2560, 'SEFIN.SIREP.[GET]/LISTAVALORES/TIPOSPLANILLAS', 'TIPOSPLANILLAS', 'TIPOSPLANILLAS', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:17','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2561, 'SEFIN.SIREP.[GET]/LISTAVALORES/MODALIDADESCONTRATACION', 'MODALIDADESCONTRATACION', 'MODALIDADESCONTRATACION', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:17','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2562, 'SEFIN.SIREP.[GET]/LISTAVALORES/MODALIDADESFORMASTRABAJO', 'MODALIDADESFORMASTRABAJO', 'MODALIDADESFORMASTRABAJO', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:17','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2563, 'SEFIN.SIREP.[GET]/LISTAVALORES/MODALIDADESOBJETOSDELGASTO', 'MODALIDADESOBJETOSDELGASTO', 'MODALIDADESOBJETOSDELGASTO', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:17','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2564, 'SEFIN.SIREP.[GET]/MODALIDADES/INDEX', 'INDEX', 'INDEX', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:18','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2565, 'SEFIN.SIREP.[GET]/MODALIDADES/MODALIDADES', 'MODALIDADES', 'MODALIDADES', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:18','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2566, 'SEFIN.SIREP.[GET]/MODALIDADES/LISTAMODALIDADES', 'LISTAMODALIDADES', 'LISTAMODALIDADES', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:18','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2567, 'SEFIN.SIREP.[GET]/MODALIDADES/GETMODALIDADES', 'GETMODALIDADES', 'GETMODALIDADES', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:18','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2568, 'SEFIN.SIREP.[GET]/MODALIDADES/GUARDARMODALIDAD', 'GUARDARMODALIDAD', 'GUARDARMODALIDAD', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:18','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2569, 'SEFIN.SIREP.[GET]/MODALIDADES/ACTUALIZARMODALIDAD', 'ACTUALIZARMODALIDAD', 'ACTUALIZARMODALIDAD', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:18','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2570, 'SEFIN.SIREP.[GET]/MODALIDADES/LISTAMODSIAFIDROPDOWN', 'LISTAMODSIAFIDROPDOWN', 'LISTAMODSIAFIDROPDOWN', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:18','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2571, 'SEFIN.SIREP.[GET]/MODALIDADES/LISTATIPOMODSIAFIDROPDOWN', 'LISTATIPOMODSIAFIDROPDOWN', 'LISTATIPOMODSIAFIDROPDOWN', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:18','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2572, 'SEFIN.SIREP.[GET]/MODALIDADTIPOCLASE/INDEX', 'INDEX', 'INDEX', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:19','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2573, 'SEFIN.SIREP.[GET]/MODALIDADTIPOCLASE/MODALIDADTIPOCLASE', 'MODALIDADTIPOCLASE', 'MODALIDADTIPOCLASE', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:19','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2574, 'SEFIN.SIREP.[GET]/MODALIDADTIPOCLASE/LISTAMODALIDADTIPOCLASE', 'LISTAMODALIDADTIPOCLASE', 'LISTAMODALIDADTIPOCLASE', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:19','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2575, 'SEFIN.SIREP.[GET]/OBJETOS/INDEX', 'INDEX', 'INDEX', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:19','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2576, 'SEFIN.SIREP.[GET]/OBJETOS/OBJETOS', 'OBJETOS', 'OBJETOS', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:19','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2577, 'SEFIN.SIREP.[GET]/OBJETOS/LISTAOBJETOS', 'LISTAOBJETOS', 'LISTAOBJETOS', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:19','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2578, 'SEFIN.SIREP.[GET]/OBJETOS/GETOBJETOS', 'GETOBJETOS', 'GETOBJETOS', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:19','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2579, 'SEFIN.SIREP.[GET]/OBJETOS/LISTAOBJETOSSIAFIDROPDOWN', 'LISTAOBJETOSSIAFIDROPDOWN', 'LISTAOBJETOSSIAFIDROPDOWN', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:20','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2580, 'SEFIN.SIREP.[GET]/OBJETOS/GUARDAROBJETO', 'GUARDAROBJETO', 'GUARDAROBJETO', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:20','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2581, 'SEFIN.SIREP.[GET]/OBJETOS/ACTUALIZAROBJETOS', 'ACTUALIZAROBJETOS', 'ACTUALIZAROBJETOS', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:20','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2582, 'SEFIN.SIREP.[GET]/PLANILLA/INDEX', 'INDEX', 'INDEX', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:20','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2583, 'SEFIN.SIREP.[GET]/PLANILLA/REGISTRO', 'REGISTRO', 'REGISTRO', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:20','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2584, 'SEFIN.SIREP.[GET]/PLANILLA/LISTALAZY', 'LISTALAZY', 'LISTALAZY', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:20','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2585, 'SEFIN.SIREP.[POST]/PLANILLA/GET', 'GET', 'GET', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:20','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2586, 'SEFIN.SIREP.[POST]/PLANILLA/GUARDAR', 'GUARDAR', 'GUARDAR', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:20','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2587, 'SEFIN.SIREP.[POST]/PLANILLA/ELIMINAR', 'ELIMINAR', 'ELIMINAR', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:21','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2588, 'SEFIN.SIREP.[POST]/PLANILLA/VALIDAR', 'VALIDAR', 'VALIDAR', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:21','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2589, 'SEFIN.SIREP.[POST]/PLANILLA/GUARDARPLANILLADPLA', 'GUARDARPLANILLADPLA', 'GUARDARPLANILLADPLA', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:21','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2590, 'SEFIN.SIREP.[POST]/PLANILLA/GUARDARPLANILLAF01F07', 'GUARDARPLANILLAF01F07', 'GUARDARPLANILLAF01F07', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:21','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2591, 'SEFIN.SIREP.[GET]/PLANILLA/ELIMINARPLANILLAF01F07', 'ELIMINARPLANILLAF01F07', 'ELIMINARPLANILLAF01F07', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:21','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2592, 'SEFIN.SIREP.[POST]/PLANILLA/LISTAPLANILLASF01F07', 'LISTAPLANILLASF01F07', 'LISTAPLANILLASF01F07', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:21','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2593, 'SEFIN.SIREP.[GET]/PLANILLA/ELIMINARPLANILLADETALLE', 'ELIMINARPLANILLADETALLE', 'ELIMINARPLANILLADETALLE', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:21','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2594, 'SEFIN.SIREP.[GET]/UPLOADFILE/INDEX', 'INDEX', 'INDEX', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:22','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2595, 'SEFIN.SIREP.[GET]/UPLOADFILE/INSERTUPLOADFILE', 'INSERTUPLOADFILE', 'INSERTUPLOADFILE', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:22','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2596, 'SEFIN.SIREP.[GET]/UPLOADFILE/GETCARGAMASIVA', 'GETCARGAMASIVA', 'GETCARGAMASIVA', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:22','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2597, 'SEFIN.SIREP.[GET]/UPLOADFILE/GETCARGADETALLE', 'GETCARGADETALLE', 'GETCARGADETALLE', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:22','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2598, 'SRP_MODALIDADES_SIAFI_FILTRADO', 'SRP_MODALIDADES_SIAFI_FILTRADO', 'SRP_MODALIDADES_SIAFI_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:22','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2599, 'SRP_MODALIDADES_SIAFI_INSERTA', 'SRP_MODALIDADES_SIAFI_INSERTA', 'SRP_MODALIDADES_SIAFI_INSERTA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:22','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2600, 'SRP_MODALIDADES_SIAFI_ACTUALIZA', 'SRP_MODALIDADES_SIAFI_ACTUALIZA', 'SRP_MODALIDADES_SIAFI_ACTUALIZA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:22','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2601, 'SRP_MODALIDADES_SIAFI_ELIMINA', 'SRP_MODALIDADES_SIAFI_ELIMINA', 'SRP_MODALIDADES_SIAFI_ELIMINA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:22','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2602, 'SRP_MODALIDADES_LISTADO', 'SRP_MODALIDADES_LISTADO', 'SRP_MODALIDADES_LISTADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:23','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2603, 'SRP_MODALIDADES_FILTRADO', 'SRP_MODALIDADES_FILTRADO', 'SRP_MODALIDADES_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:23','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2604, 'SRP_MODALIDADES_INSERTA', 'SRP_MODALIDADES_INSERTA', 'SRP_MODALIDADES_INSERTA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:23','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2605, 'SRP_MODALIDADES_ACTUALIZA', 'SRP_MODALIDADES_ACTUALIZA', 'SRP_MODALIDADES_ACTUALIZA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:23','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2606, 'LISTAMODALIDADESSIAFI', 'LISTAMODALIDADESSIAFI', 'LISTAMODALIDADESSIAFI', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:23','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2607, 'LISTATIPOMODALIDADESSIAFI', 'LISTATIPOMODALIDADESSIAFI', 'LISTATIPOMODALIDADESSIAFI', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:23','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2608, 'SRP_MODALIDADES_ELIMINA', 'SRP_MODALIDADES_ELIMINA', 'SRP_MODALIDADES_ELIMINA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:23','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2609, 'SRP_MODALIDAD_TIPO_CLASE_LISTADO', 'SRP_MODALIDAD_TIPO_CLASE_LISTADO', 'SRP_MODALIDAD_TIPO_CLASE_LISTADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:24','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2610, 'SRP_MODALIDAD_TIPO_CLASE_FILTRADO', 'SRP_MODALIDAD_TIPO_CLASE_FILTRADO', 'SRP_MODALIDAD_TIPO_CLASE_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:24','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2611, 'SRP_MODALIDAD_TIPO_CLASE_INSERTA', 'SRP_MODALIDAD_TIPO_CLASE_INSERTA', 'SRP_MODALIDAD_TIPO_CLASE_INSERTA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:24','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2612, 'SRP_MODALIDAD_TIPO_CLASE_ACTUALIZA', 'SRP_MODALIDAD_TIPO_CLASE_ACTUALIZA', 'SRP_MODALIDAD_TIPO_CLASE_ACTUALIZA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:24','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2613, 'SRP_MODALIDAD_TIPO_CLASE_ELIMINA', 'SRP_MODALIDAD_TIPO_CLASE_ELIMINA', 'SRP_MODALIDAD_TIPO_CLASE_ELIMINA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:24','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2614, 'QRY_SRP_PLANILLAS_CAB_LISTADO', 'QRY_SRP_PLANILLAS_CAB_LISTADO', 'QRY_SRP_PLANILLAS_CAB_LISTADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:24','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2615, 'QRY_SRP_PLANILLAS_CAB_FILTRADO', 'QRY_SRP_PLANILLAS_CAB_FILTRADO', 'QRY_SRP_PLANILLAS_CAB_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:24','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2616, 'QRY_V_SRP_PLANILLAS_CAB_FILTRADO', 'QRY_V_SRP_PLANILLAS_CAB_FILTRADO', 'QRY_V_SRP_PLANILLAS_CAB_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:24','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2617, 'QRY_SRP_PLANILLAS_CAB_FILTRADOLAZY', 'QRY_SRP_PLANILLAS_CAB_FILTRADOLAZY', 'QRY_SRP_PLANILLAS_CAB_FILTRADOLAZY', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:25','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2618, 'INS_SRP_PLANILLAS_CAB_INSERTA', 'INS_SRP_PLANILLAS_CAB_INSERTA', 'INS_SRP_PLANILLAS_CAB_INSERTA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:25','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2619, 'UPD_SRP_PLANILLAS_CAB_ACTUALIZA', 'UPD_SRP_PLANILLAS_CAB_ACTUALIZA', 'UPD_SRP_PLANILLAS_CAB_ACTUALIZA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:25','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2620, 'DEL_SRP_PLANILLAS_CAB_ELIMINA', 'DEL_SRP_PLANILLAS_CAB_ELIMINA', 'DEL_SRP_PLANILLAS_CAB_ELIMINA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:25','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2621, 'UPD_SRP_PLANILLAS_CAB_VALIDA', 'UPD_SRP_PLANILLAS_CAB_VALIDA', 'UPD_SRP_PLANILLAS_CAB_VALIDA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:25','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2622, 'QRY_SRP_PLANILLAS_DET_LISTADO', 'QRY_SRP_PLANILLAS_DET_LISTADO', 'QRY_SRP_PLANILLAS_DET_LISTADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:25','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2623, 'QRY_SRP_PLANILLAS_DET_FILTRADO', 'QRY_SRP_PLANILLAS_DET_FILTRADO', 'QRY_SRP_PLANILLAS_DET_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:25','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2624, 'INS_SRP_PLANILLAS_DET_INSERTA', 'INS_SRP_PLANILLAS_DET_INSERTA', 'INS_SRP_PLANILLAS_DET_INSERTA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:26','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2625, 'UPD_SRP_PLANILLAS_DET_ACTUALIZA', 'UPD_SRP_PLANILLAS_DET_ACTUALIZA', 'UPD_SRP_PLANILLAS_DET_ACTUALIZA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:26','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2626, 'DEL_SRP_PLANILLAS_DET_ELIMINA', 'DEL_SRP_PLANILLAS_DET_ELIMINA', 'DEL_SRP_PLANILLAS_DET_ELIMINA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:26','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2627, 'QRY_SRP_PLANILLAS_DPLA_LISTADO', 'QRY_SRP_PLANILLAS_DPLA_LISTADO', 'QRY_SRP_PLANILLAS_DPLA_LISTADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:26','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2628, 'QRY_SRP_PLANILLAS_DPLA_FILTRADO', 'QRY_SRP_PLANILLAS_DPLA_FILTRADO', 'QRY_SRP_PLANILLAS_DPLA_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:26','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2629, 'INS_SRP_PLANILLAS_DPLA_INSERTA', 'INS_SRP_PLANILLAS_DPLA_INSERTA', 'INS_SRP_PLANILLAS_DPLA_INSERTA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:26','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2630, 'UPD_SRP_PLANILLAS_DPLA_ACTUALIZA', 'UPD_SRP_PLANILLAS_DPLA_ACTUALIZA', 'UPD_SRP_PLANILLAS_DPLA_ACTUALIZA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:27','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2631, 'DEL_SRP_PLANILLAS_DPLA_ELIMINA', 'DEL_SRP_PLANILLAS_DPLA_ELIMINA', 'DEL_SRP_PLANILLAS_DPLA_ELIMINA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:27','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2632, 'QRY_SRP_PLANILLAS_F01F07_LISTADO', 'QRY_SRP_PLANILLAS_F01F07_LISTADO', 'QRY_SRP_PLANILLAS_F01F07_LISTADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:27','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2633, 'QRY_SRP_PLANILLAS_F01F07_FILTRADO', 'QRY_SRP_PLANILLAS_F01F07_FILTRADO', 'QRY_SRP_PLANILLAS_F01F07_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:27','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2634, 'INS_SRP_PLANILLAS_F01F07_INSERTA', 'INS_SRP_PLANILLAS_F01F07_INSERTA', 'INS_SRP_PLANILLAS_F01F07_INSERTA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:27','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2635, 'UPD_SRP_PLANILLAS_F01F07_ACTUALIZA', 'UPD_SRP_PLANILLAS_F01F07_ACTUALIZA', 'UPD_SRP_PLANILLAS_F01F07_ACTUALIZA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:27','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2636, 'DEL_SRP_PLANILLAS_F01F07_ELIMINA', 'DEL_SRP_PLANILLAS_F01F07_ELIMINA', 'DEL_SRP_PLANILLAS_F01F07_ELIMINA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:27','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2637, 'QRY_SRP_TIPOS_PLANILLAS_LISTADO', 'QRY_SRP_TIPOS_PLANILLAS_LISTADO', 'QRY_SRP_TIPOS_PLANILLAS_LISTADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:27','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2638, 'QRY_SRP_TIPOS_PLANILLAS_FILTRADO', 'QRY_SRP_TIPOS_PLANILLAS_FILTRADO', 'QRY_SRP_TIPOS_PLANILLAS_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:28','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2639, 'INS_SRP_TIPOS_PLANILLAS_INSERTA', 'INS_SRP_TIPOS_PLANILLAS_INSERTA', 'INS_SRP_TIPOS_PLANILLAS_INSERTA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:28','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2640, 'UPD_SRP_TIPOS_PLANILLAS_ACTUALIZA', 'UPD_SRP_TIPOS_PLANILLAS_ACTUALIZA', 'UPD_SRP_TIPOS_PLANILLAS_ACTUALIZA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:28','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2641, 'DEL_SRP_TIPOS_PLANILLAS_ELIMINA', 'DEL_SRP_TIPOS_PLANILLAS_ELIMINA', 'DEL_SRP_TIPOS_PLANILLAS_ELIMINA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:28','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2642, 'RPT_RESUMEN_DE_CARGA', 'RPT_RESUMEN_DE_CARGA', 'RPT_RESUMEN_DE_CARGA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:28','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2643, 'RPT_DIFERENCIA_EN_SUELDO_NETO', 'RPT_DIFERENCIA_EN_SUELDO_NETO', 'RPT_DIFERENCIA_EN_SUELDO_NETO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:28','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2644, 'SRP_OBJETOS_LISTADO', 'SRP_OBJETOS_LISTADO', 'SRP_OBJETOS_LISTADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:28','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2645, 'SRP_OBJETOS_FILTRADO', 'SRP_OBJETOS_FILTRADO', 'SRP_OBJETOS_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:28','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2646, 'SRP_OBJETOS_INSERTA', 'SRP_OBJETOS_INSERTA', 'SRP_OBJETOS_INSERTA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:29','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2647, 'SRP_OBJETOS_ACTUALIZA', 'SRP_OBJETOS_ACTUALIZA', 'SRP_OBJETOS_ACTUALIZA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:29','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2648, 'LISTAOBJETOSSIAFI', 'LISTAOBJETOSSIAFI', 'LISTAOBJETOSSIAFI', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:29','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2649, 'SRP_OBJETOS_ELIMINA', 'SRP_OBJETOS_ELIMINA', 'SRP_OBJETOS_ELIMINA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:29','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2650, 'QRY_V_SRP_ACTIVIDADES_OBRAS_FILTRADO', 'QRY_V_SRP_ACTIVIDADES_OBRAS_FILTRADO', 'QRY_V_SRP_ACTIVIDADES_OBRAS_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:29','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2651, 'QRY_V_SRP_ACTIVIDADES_OBRAS_PPTO_FILTRADO', 'QRY_V_SRP_ACTIVIDADES_OBRAS_PPTO_FILTRADO', 'QRY_V_SRP_ACTIVIDADES_OBRAS_PPTO_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:29','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2652, 'QRY_V_SRP_OBJETOS_GASTO_FILTRADO', 'QRY_V_SRP_OBJETOS_GASTO_FILTRADO', 'QRY_V_SRP_OBJETOS_GASTO_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:29','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2653, 'QRY_V_SRP_OBJETOS_GASTO_PPTO_FILTRADO', 'QRY_V_SRP_OBJETOS_GASTO_PPTO_FILTRADO', 'QRY_V_SRP_OBJETOS_GASTO_PPTO_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:29','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2654, 'QRY_V_SRP_OBJETOS_GASTO_PPTO_FILTRADO_SIREP', 'QRY_V_SRP_OBJETOS_GASTO_PPTO_FILTRADO_SIREP', 'QRY_V_SRP_OBJETOS_GASTO_PPTO_FILTRADO_SIREP', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:30','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2655, 'QRY_TRF_BENEFICIARIO', 'QRY_TRF_BENEFICIARIO', 'QRY_TRF_BENEFICIARIO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:30','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2656, 'QRY_SECUENCIAL_FTE_ESPEC', 'QRY_SECUENCIAL_FTE_ESPEC', 'QRY_SECUENCIAL_FTE_ESPEC', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:30','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2657, 'QRY_V_SRP_PROGRAMAS_FILTRADO', 'QRY_V_SRP_PROGRAMAS_FILTRADO', 'QRY_V_SRP_PROGRAMAS_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:30','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2658, 'QRY_V_SRP_PROGRAMAS_PPTO_FILTRADO', 'QRY_V_SRP_PROGRAMAS_PPTO_FILTRADO', 'QRY_V_SRP_PROGRAMAS_PPTO_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:30','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2659, 'QRY_V_SRP_PROYECTOS_FILTRADO', 'QRY_V_SRP_PROYECTOS_FILTRADO', 'QRY_V_SRP_PROYECTOS_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:30','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2660, 'QRY_V_SRP_PROYECTOS_PPTO_FILTRADO', 'QRY_V_SRP_PROYECTOS_PPTO_FILTRADO', 'QRY_V_SRP_PROYECTOS_PPTO_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:30','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2661, 'QRY_V_SRP_SUB_PROGRAMAS_FILTRADO', 'QRY_V_SRP_SUB_PROGRAMAS_FILTRADO', 'QRY_V_SRP_SUB_PROGRAMAS_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:30','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2662, 'QRY_V_SRP_SUB_PROGRAMAS_PPTO_FILTRADO', 'QRY_V_SRP_SUB_PROGRAMAS_PPTO_FILTRADO', 'QRY_V_SRP_SUB_PROGRAMAS_PPTO_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:31','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2663, 'QRY_SRP_MODALIDADES_FORMASTRAB_LISTADO', 'QRY_SRP_MODALIDADES_FORMASTRAB_LISTADO', 'QRY_SRP_MODALIDADES_FORMASTRAB_LISTADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:31','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2664, 'QRY_SRP_MODALIDADES_FORMASTRAB_FILTRADO', 'QRY_SRP_MODALIDADES_FORMASTRAB_FILTRADO', 'QRY_SRP_MODALIDADES_FORMASTRAB_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:31','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2665, 'INS_SRP_MODALIDADES_FORMASTRAB_INSERTA', 'INS_SRP_MODALIDADES_FORMASTRAB_INSERTA', 'INS_SRP_MODALIDADES_FORMASTRAB_INSERTA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:31','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2666, 'UPD_SRP_MODALIDADES_FORMASTRAB_ACTUALIZA', 'UPD_SRP_MODALIDADES_FORMASTRAB_ACTUALIZA', 'UPD_SRP_MODALIDADES_FORMASTRAB_ACTUALIZA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:31','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2667, 'DEL_SRP_MODALIDADES_FORMASTRAB_ELIMINA', 'DEL_SRP_MODALIDADES_FORMASTRAB_ELIMINA', 'DEL_SRP_MODALIDADES_FORMASTRAB_ELIMINA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:31','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2668, 'QRY_SRP_MODALIDADES_OBJETOS_LISTADO', 'QRY_SRP_MODALIDADES_OBJETOS_LISTADO', 'QRY_SRP_MODALIDADES_OBJETOS_LISTADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:31','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2669, 'QRY_SRP_MODALIDADES_OBJETOS_FILTRADO', 'QRY_SRP_MODALIDADES_OBJETOS_FILTRADO', 'QRY_SRP_MODALIDADES_OBJETOS_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:31','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2670, 'INS_SRP_MODALIDADES_OBJETOS_INSERTA', 'INS_SRP_MODALIDADES_OBJETOS_INSERTA', 'INS_SRP_MODALIDADES_OBJETOS_INSERTA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:32','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2671, 'UPD_SRP_MODALIDADES_OBJETOS_ACTUALIZA', 'UPD_SRP_MODALIDADES_OBJETOS_ACTUALIZA', 'UPD_SRP_MODALIDADES_OBJETOS_ACTUALIZA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:32','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2672, 'DEL_SRP_MODALIDADES_OBJETOS_ELIMINA', 'DEL_SRP_MODALIDADES_OBJETOS_ELIMINA', 'DEL_SRP_MODALIDADES_OBJETOS_ELIMINA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:32','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2673, 'QRY_SRP_DOC_EMPLEOS_LISTADO', 'QRY_SRP_DOC_EMPLEOS_LISTADO', 'QRY_SRP_DOC_EMPLEOS_LISTADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:32','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2674, 'QRY_SRP_DOC_EMPLEOS_FILTRADO', 'QRY_SRP_DOC_EMPLEOS_FILTRADO', 'QRY_SRP_DOC_EMPLEOS_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:32','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2675, 'INS_SRP_DOC_EMPLEOS_INSERTA', 'INS_SRP_DOC_EMPLEOS_INSERTA', 'INS_SRP_DOC_EMPLEOS_INSERTA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:32','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2676, 'UPD_SRP_DOC_EMPLEOS_ACTUALIZA', 'UPD_SRP_DOC_EMPLEOS_ACTUALIZA', 'UPD_SRP_DOC_EMPLEOS_ACTUALIZA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:32','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2677, 'DEL_SRP_DOC_EMPLEOS_ELIMINA', 'DEL_SRP_DOC_EMPLEOS_ELIMINA', 'DEL_SRP_DOC_EMPLEOS_ELIMINA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:32','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2678, 'QRY_SRP_DOC_EMP_PAGPEND_LISTADO', 'QRY_SRP_DOC_EMP_PAGPEND_LISTADO', 'QRY_SRP_DOC_EMP_PAGPEND_LISTADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:33','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2679, 'QRY_SRP_DOC_EMP_PAGPEND_FILTRADO', 'QRY_SRP_DOC_EMP_PAGPEND_FILTRADO', 'QRY_SRP_DOC_EMP_PAGPEND_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:33','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2680, 'INS_SRP_DOC_EMP_PAGPEND_INSERTA', 'INS_SRP_DOC_EMP_PAGPEND_INSERTA', 'INS_SRP_DOC_EMP_PAGPEND_INSERTA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:33','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2681, 'UPD_SRP_DOC_EMP_PAGPEND_ACTUALIZA', 'UPD_SRP_DOC_EMP_PAGPEND_ACTUALIZA', 'UPD_SRP_DOC_EMP_PAGPEND_ACTUALIZA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:33','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2682, 'DEL_SRP_DOC_EMP_PAGPEND_ELIMINA', 'DEL_SRP_DOC_EMP_PAGPEND_ELIMINA', 'DEL_SRP_DOC_EMP_PAGPEND_ELIMINA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:33','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2683, 'QRY_SRP_DOC_EMPLEOS_PUESTO_LISTADO', 'QRY_SRP_DOC_EMPLEOS_PUESTO_LISTADO', 'QRY_SRP_DOC_EMPLEOS_PUESTO_LISTADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:33','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2684, 'QRY_SRP_DOC_EMPLEOS_PUESTO_FILTRADO', 'QRY_SRP_DOC_EMPLEOS_PUESTO_FILTRADO', 'QRY_SRP_DOC_EMPLEOS_PUESTO_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:33','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2685, 'INS_SRP_DOC_EMPLEOS_PUESTO_INSERTA', 'INS_SRP_DOC_EMPLEOS_PUESTO_INSERTA', 'INS_SRP_DOC_EMPLEOS_PUESTO_INSERTA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:33','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2686, 'UPD_SRP_DOC_EMPLEOS_PUESTO_ACTUALIZA', 'UPD_SRP_DOC_EMPLEOS_PUESTO_ACTUALIZA', 'UPD_SRP_DOC_EMPLEOS_PUESTO_ACTUALIZA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:34','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2687, 'DEL_SRP_DOC_EMPLEOS_PUESTO_ELIMINA', 'DEL_SRP_DOC_EMPLEOS_PUESTO_ELIMINA', 'DEL_SRP_DOC_EMPLEOS_PUESTO_ELIMINA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:34','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2688, 'QRY_SRP_DOC_EMPLEOS_PPTO_LISTADO', 'QRY_SRP_DOC_EMPLEOS_PPTO_LISTADO', 'QRY_SRP_DOC_EMPLEOS_PPTO_LISTADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:34','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2689, 'QRY_SRP_DOC_EMPLEOS_PPTO_FILTRADO', 'QRY_SRP_DOC_EMPLEOS_PPTO_FILTRADO', 'QRY_SRP_DOC_EMPLEOS_PPTO_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:34','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2690, 'INS_SRP_DOC_EMPLEOS_PPTO_INSERTA', 'INS_SRP_DOC_EMPLEOS_PPTO_INSERTA', 'INS_SRP_DOC_EMPLEOS_PPTO_INSERTA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:34','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2691, 'UPD_SRP_DOC_EMPLEOS_PPTO_ACTUALIZA', 'UPD_SRP_DOC_EMPLEOS_PPTO_ACTUALIZA', 'UPD_SRP_DOC_EMPLEOS_PPTO_ACTUALIZA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:34','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2692, 'DEL_SRP_DOC_EMPLEOS_PPTO_ELIMINA', 'DEL_SRP_DOC_EMPLEOS_PPTO_ELIMINA', 'DEL_SRP_DOC_EMPLEOS_PPTO_ELIMINA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:34','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2693, 'QRY_SRP_DOC_PERSONAS_INFO_LISTADO', 'QRY_SRP_DOC_PERSONAS_INFO_LISTADO', 'QRY_SRP_DOC_PERSONAS_INFO_LISTADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:34','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2694, 'QRY_SRP_DOC_PERSONAS_INFO_FILTRADO', 'QRY_SRP_DOC_PERSONAS_INFO_FILTRADO', 'QRY_SRP_DOC_PERSONAS_INFO_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2695, 'INS_SRP_DOC_PERSONAS_INFO_INSERTA', 'INS_SRP_DOC_PERSONAS_INFO_INSERTA', 'INS_SRP_DOC_PERSONAS_INFO_INSERTA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2696, 'UPD_SRP_DOC_PERSONAS_INFO_ACTUALIZA', 'UPD_SRP_DOC_PERSONAS_INFO_ACTUALIZA', 'UPD_SRP_DOC_PERSONAS_INFO_ACTUALIZA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2697, 'DEL_SRP_DOC_PERSONAS_INFO_ELIMINA', 'DEL_SRP_DOC_PERSONAS_INFO_ELIMINA', 'DEL_SRP_DOC_PERSONAS_INFO_ELIMINA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2698, 'QRY_SRP_PERSONAS_LISTADO', 'QRY_SRP_PERSONAS_LISTADO', 'QRY_SRP_PERSONAS_LISTADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2699, 'QRY_SRP_PERSONAS_FILTRADO', 'QRY_SRP_PERSONAS_FILTRADO', 'QRY_SRP_PERSONAS_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2700, 'QRY_SRP_PERSONAS_SINGLE_BY_ID', 'QRY_SRP_PERSONAS_SINGLE_BY_ID', 'QRY_SRP_PERSONAS_SINGLE_BY_ID', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2701, 'QRY_SRP_PERSONAS_SINGLE', 'QRY_SRP_PERSONAS_SINGLE', 'QRY_SRP_PERSONAS_SINGLE', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2702, 'QRY_SRP_PERSONAS_FILTRADOLAZY', 'QRY_SRP_PERSONAS_FILTRADOLAZY', 'QRY_SRP_PERSONAS_FILTRADOLAZY', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:36','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2703, 'INS_SRP_PERSONAS_INSERTA', 'INS_SRP_PERSONAS_INSERTA', 'INS_SRP_PERSONAS_INSERTA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:36','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2704, 'UPD_SRP_PERSONAS_ACTUALIZA', 'UPD_SRP_PERSONAS_ACTUALIZA', 'UPD_SRP_PERSONAS_ACTUALIZA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:36','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2705, 'DEL_SRP_PERSONAS_ELIMINA', 'DEL_SRP_PERSONAS_ELIMINA', 'DEL_SRP_PERSONAS_ELIMINA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:36','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2706, 'QRY_SRP_DOC_PERSONAS_LISTADO', 'QRY_SRP_DOC_PERSONAS_LISTADO', 'QRY_SRP_DOC_PERSONAS_LISTADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:36','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2707, 'QRY_SRP_DOC_PERSONAS_FILTRADO', 'QRY_SRP_DOC_PERSONAS_FILTRADO', 'QRY_SRP_DOC_PERSONAS_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:36','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2708, 'INS_SRP_DOC_PERSONAS_INSERTA', 'INS_SRP_DOC_PERSONAS_INSERTA', 'INS_SRP_DOC_PERSONAS_INSERTA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:36','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2709, 'UPD_SRP_DOC_PERSONAS_ACTUALIZA', 'UPD_SRP_DOC_PERSONAS_ACTUALIZA', 'UPD_SRP_DOC_PERSONAS_ACTUALIZA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:36','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2710, 'DEL_SRP_DOC_PERSONAS_ELIMINA', 'DEL_SRP_DOC_PERSONAS_ELIMINA', 'DEL_SRP_DOC_PERSONAS_ELIMINA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:37','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2711, 'QRY_SRP_LOV_TIPOS_LISTADO', 'QRY_SRP_LOV_TIPOS_LISTADO', 'QRY_SRP_LOV_TIPOS_LISTADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:37','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2712, 'QRY_SRP_LOV_TIPOS_FILTRADO', 'QRY_SRP_LOV_TIPOS_FILTRADO', 'QRY_SRP_LOV_TIPOS_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:37','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2713, 'INS_SRP_LOV_TIPOS_INSERTA', 'INS_SRP_LOV_TIPOS_INSERTA', 'INS_SRP_LOV_TIPOS_INSERTA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:37','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2714, 'UPD_SRP_LOV_TIPOS_ACTUALIZA', 'UPD_SRP_LOV_TIPOS_ACTUALIZA', 'UPD_SRP_LOV_TIPOS_ACTUALIZA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:37','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2715, 'DEL_SRP_LOV_TIPOS_ELIMINA', 'DEL_SRP_LOV_TIPOS_ELIMINA', 'DEL_SRP_LOV_TIPOS_ELIMINA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:37','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2716, 'QRY_V_SRP_CLASE_PLANILLA_FILTRADO', 'QRY_V_SRP_CLASE_PLANILLA_FILTRADO', 'QRY_V_SRP_CLASE_PLANILLA_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:37','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2717, 'QRY_V_SRP_CLASE_PLANILLA_LISTADO', 'QRY_V_SRP_CLASE_PLANILLA_LISTADO', 'QRY_V_SRP_CLASE_PLANILLA_LISTADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:37','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2718, 'QRY_V_SRP_DEPARTAMENTOS_FILTRADO', 'QRY_V_SRP_DEPARTAMENTOS_FILTRADO', 'QRY_V_SRP_DEPARTAMENTOS_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:38','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2719, 'QRY_V_SRP_DEPARTAMENTOS_LISTADO', 'QRY_V_SRP_DEPARTAMENTOS_LISTADO', 'QRY_V_SRP_DEPARTAMENTOS_LISTADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:38','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2763, 'QRY_SRP_ENTIDADES_FILTRADO', 'QRY_SRP_ENTIDADES_FILTRADO', 'QRY_SRP_ENTIDADES_FILTRADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:43','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2764, 'INS_SRP_ENTIDADES_INSERTA', 'INS_SRP_ENTIDADES_INSERTA', 'INS_SRP_ENTIDADES_INSERTA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:43','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2765, 'UPD_SRP_ENTIDADES_ACTUALIZA', 'UPD_SRP_ENTIDADES_ACTUALIZA', 'UPD_SRP_ENTIDADES_ACTUALIZA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:43','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2766, 'LISTATIPENTIDADSIAFI', 'LISTATIPENTIDADSIAFI', 'LISTATIPENTIDADSIAFI', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:43','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2767, 'DEL_SRP_ENTIDADES_ELIMINA', 'DEL_SRP_ENTIDADES_ELIMINA', 'DEL_SRP_ENTIDADES_ELIMINA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:44','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2768, 'QRY_SRP_ENTIDADES_GESTION_ACTIVA', 'QRY_SRP_ENTIDADES_GESTION_ACTIVA', 'QRY_SRP_ENTIDADES_GESTION_ACTIVA', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:44','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2769, 'SRP_MODALIDADES_SIAFI_LISTADO', 'SRP_MODALIDADES_SIAFI_LISTADO', 'SRP_MODALIDADES_SIAFI_LISTADO', 11, 'SIREP', 'WCF', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:44','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2507, 'SEFIN.SIREP.[POST]/DOCCENSO/CARGARPAGPEND', 'CARGARPAGPEND', 'CARGARPAGPEND', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:10','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2511, 'SEFIN.SIREP.[GET]/ENTIDADES/LISTAENTIDADES', 'LISTAENTIDADES', 'LISTAENTIDADES', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:10','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2516, 'SEFIN.SIREP.[GET]/EXCEPCIONES/INDEX', 'INDEX', 'INDEX', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:11','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2521, 'SEFIN.SIREP.[GET]/HOME/REFRESHTOKEN', 'REFRESHTOKEN', 'REFRESHTOKEN', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:12','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2530, 'SEFIN.SIREP.[GET]/LISTAVALORES/ENTIDAD', 'ENTIDAD', 'ENTIDAD', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:13','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2533, 'SEFIN.SIREP.[GET]/LISTAVALORES/DEPARTAMENTOS', 'DEPARTAMENTOS', 'DEPARTAMENTOS', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:13','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2538, 'SEFIN.SIREP.[GET]/LISTAVALORES/INSTITUCION', 'INSTITUCION', 'INSTITUCION', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('12/04/2018 10:18:14','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2770, 'SEFIN.SIREP.[POST]/DOCCENSO/LISTALAZY', 'LISTALAZY', 'LISTALAZY', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('20/04/2018 13:30:23','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2771, 'SEFIN.SIREP.[POST]/EXCEPCIONES/EXISTE', 'LISTALAZY', 'LISTALAZY', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('20/04/2018 13:44:13','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2772, 'SEFIN.SIREP.[POST]/PLANILLA/LISTALAZY', 'LISTALAZY', 'LISTALAZY', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('20/04/2018 14:11:33','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2773, 'SEFIN.SIREP.[POST]/REPORTES/LISTAREPORTESDETALLE', 'LISTAREPORTESDETALLE', 'LISTAREPORTESDETALLE', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('20/04/2018 14:15:25','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2774, 'SEFIN.SIREP.[GET]/LISTAVALORES/TIPOSPLANILLASPORMODALIDADCLASE', 'TIPOSPLANILLASPORMODALIDADCLASE', 'TIPOSPLANILLASPORMODALIDADCLASE', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('20/04/2018 14:17:59','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2775, 'SEFIN.SIREP.[POST]/REPORTES/GETREPORTEINFO', 'GETREPORTEINFO', 'GETREPORTEINFO', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('20/04/2018 14:35:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2776, 'SEFIN.SIREP.[GET]/REPORTES/DIFERENCIA_SUELDO_NETO', 'DIFERENCIA_SUELDO_NETO', 'DIFERENCIA_SUELDO_NETO', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('20/04/2018 15:12:25','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2777, 'SEFIN.SIREP.[POST]/UPLOADFILE/INSERTUPLOADFILE', 'INSERTUPLOADFILE', 'INSERTUPLOADFILE', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('20/04/2018 15:36:56','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2778, 'SEFIN.SIREP.[POST]/CENSO/LISTALAZY', 'LISTALAZY', 'LISTALAZY', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('21/04/2018 14:22:33','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2779, 'SEFIN.SIREP.[POST]/ENTIDADES/ACTUALIZARENTIDAD', 'ACTUALIZARENTIDAD', 'ACTUALIZARENTIDAD', 11, 'SIREP', 'APP', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('21/04/2018 16:43:31','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2787, 'SEFIN.SIREP.[GET]/REPORTES/INDEX', 'INDEX', 'INDEX', 11, 'PAMEH', 'APP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('25/04/2018 15:33:31','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2788, 'RPT_LISTA_REPORTES_PLANILLA', 'RPT_LISTA_REPORTES_PLANILLA', 'RPT_LISTA_REPORTES_PLANILLA', 11, 'PAMEH', 'APP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('25/04/2018 15:33:31','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2789, 'RPT_REPORTE_QRY', 'RPT_REPORTE_QRY', 'RPT_REPORTE_QRY', 11, 'PAMEH', 'APP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('25/04/2018 15:40:38','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2790, 'QRY_SRP_MODALIDAD_OBJ_TIPOPLA_FILTRADO', 'QRY_SRP_MODALIDAD_OBJ_TIPOPLA_FILTRADO', 'QRY_SRP_MODALIDAD_OBJ_TIPOPLA_FILTRADO', 11, 'PAMEH', 'APP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('26/04/2018 10:05:26','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2791, 'SRP_DOC_PERSONAS_FOTOS_EXISTE', 'SRP_DOC_PERSONAS_FOTOS_EXISTE', 'SRP_DOC_PERSONAS_FOTOS_EXISTE', 11, 'PAMEH', 'APP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('26/04/2018 10:08:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2792, 'SRP_EXCEPCIONES_EXISTE', 'SRP_EXCEPCIONES_EXISTE', 'SRP_EXCEPCIONES_EXISTE', 11, 'PAMEH', 'APP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('26/04/2018 10:08:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2793, 'SEFIN.SIREP.[POST]/UPLOADFILE/GETCARGADETALLE', 'GETCARGADETALLE', 'GETCARGADETALLE', 11, 'PAMEH', 'APP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('26/04/2018 11:15:05','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2794, 'SEFIN.SIREP.[POST]/PLANILLA/ELIMINARPLANILLADETALLE', 'ELIMINARPLANILLADETALLE', 'ELIMINARPLANILLADETALLE', 11, 'PAMEH', 'APP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('26/04/2018 11:18:03','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2795, 'SRP_DOC_PERSONAS_FOTOS_CONSULTA', 'SRP_DOC_PERSONAS_FOTOS_CONSULTA', 'SRP_DOC_PERSONAS_FOTOS_CONSULTA', 11, 'PAMEH', 'WCF', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('26/04/2018 14:08:19','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2796, 'SEFIN.SIREP.[POST]/PLANILLA/ELIMINARPLANILLAF01F07', 'ELIMINARPLANILLAF01F07', 'ELIMINARPLANILLAF01F07', 11, 'PAMEH', 'APP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('27/04/2018 11:25:57','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2797, 'SEFIN.SIREP.[POST]/CENSO/GETACUMULADOPAGOSPORPUESTO', 'GETACUMULADOPAGOSPORPUESTO', 'GETACUMULADOPAGOSPORPUESTO', 11, 'PAMEH', 'APP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('27/04/2018 15:40:18','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2798, 'SEFIN.SIREP.[POST]/CENSO/GETHISTORICOPAGOSPORPUESTO', 'GETHISTORICOPAGOSPORPUESTO', 'GETHISTORICOPAGOSPORPUESTO', 11, 'PAMEH', 'APP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('27/04/2018 15:42:11','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2799, 'QRY_V_SRP_HISTORICO_PAGOS_FILTRADO', 'QRY_V_SRP_HISTORICO_PAGOS_FILTRADO', 'QRY_V_SRP_HISTORICO_PAGOS_FILTRADO', 11, 'PAMEH', 'WCF', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('27/04/2018 15:49:03','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2800, 'QRY_SRP_ACUMULADO_PAGOS_FILTRADO', 'QRY_SRP_ACUMULADO_PAGOS_FILTRADO', 'QRY_SRP_ACUMULADO_PAGOS_FILTRADO', 11, 'PAMEH', 'WCF', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('27/04/2018 15:49:03','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2801, 'SRP_DOC_PERSONAS_FOTOS_GUARDA', 'SRP_DOC_PERSONAS_FOTOS_GUARDA', 'SRP_DOC_PERSONAS_FOTOS_GUARDA', 11, 'PAMEH', 'WCF', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('27/04/2018 19:26:36','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2802, 'FOTOEMPLEADO_CONSULTA', 'FOTOEMPLEADO_CONSULTA', 'FOTOEMPLEADO_CONSULTA', 11, 'PAMEH', 'WCF', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('27/04/2018 19:26:36','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2803, 'SRP_DOC_PERSONAS_FOTOS_ELIMINA', 'SRP_DOC_PERSONAS_FOTOS_ELIMINA', 'SRP_DOC_PERSONAS_FOTOS_ELIMINA', 11, 'PAMEH', 'WCF', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('27/04/2018 19:32:39','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2804, 'SEFIN.SIREP.[GET]/LISTAVALORES/TIPOSPLANILLASFILTRADAS', 'TIPOSPLANILLASFILTRADAS', 'TIPOSPLANILLASFILTRADAS', 11, 'PAMEH', 'APP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('02/05/2018 21:54:30','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2805, 'SRP_MODALIDAD_TIPO_PLANILLA_FILTRADO', 'SRP_MODALIDAD_TIPO_PLANILLA_FILTRADO', 'SRP_MODALIDAD_TIPO_PLANILLA_FILTRADO', 11, 'PAMEH', 'WCF', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('02/05/2018 21:54:31','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2806, 'QRY_V_SRP_CLASE_PLANILLA_MODALIDAD_FILTRADO', 'QRY_V_SRP_CLASE_PLANILLA_MODALIDAD_FILTRADO', 'QRY_V_SRP_CLASE_PLANILLA_MODALIDAD_FILTRADO', 11, 'PAMEH', 'APP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('03/05/2018 12:10:11','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2807, 'SEFIN.SIREP.[GET]/LISTAVALORES/TIPOSCLASESFILTRADAS', 'TIPOSCLASESFILTRADAS', 'TIPOSCLASESFILTRADAS', 11, 'PAMEH', 'APP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('03/05/2018 14:00:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_acciones (
   id_accion, accion, nombre_accion, desc_accion, id_sistema, aplicacion, capa, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
  values( 
 2808, 'SEFIN.SIREP.[POST]/ENTIDADES/GUARDARENTIDAD', 'GUARDARENTIDAD', 'GUARDARENTIDAD', 11, 'PAMEH', 'APP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('15/05/2018 15:17:54','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_perfiles (
  id_perfil, id_sistema, nombre_perfil, desc_perfil, tipo_perfil, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
   values (
   125, 11, 'JEFE DE RECURSOS HUMANOS', 'JEFE DE RECURSOS HUMANOS', 'O', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('21/02/2018 15:40:18','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_perfiles (
  id_perfil, id_sistema, nombre_perfil, desc_perfil, tipo_perfil, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
   values (
   126, 11, 'ANALISTA INSTITUCIÓN', 'ANALISTA INSTITUCIÓN', 'O', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('21/02/2018 15:40:18','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_perfiles (
  id_perfil, id_sistema, nombre_perfil, desc_perfil, tipo_perfil, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
   values (
   127, 11, 'ANALISTA SIREP', 'ANALISTA SIREP', 'O', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('21/02/2018 15:40:18','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_perfiles (
  id_perfil, id_sistema, nombre_perfil, desc_perfil, tipo_perfil, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
   values (
   128, 11, 'ADMINISTRADOR SIREP', 'ADMINISTRADOR SIREP', 'O', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('21/02/2018 15:40:18','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_menus (
id_menu, id_sistema, nombre_menu, id_menu_padre, orden, jerarquia, metodo, desc_menu, tipo_menu, ico_menu, tooltip, vigente, habilitado, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
values (
  533, 11, 'SIREP_MENU_REPORTES', 515, 6,006, null, 'Reportes', 'M', null, null,'S', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('21/03/2018 17:23:03','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_menus (
id_menu, id_sistema, nombre_menu, id_menu_padre, orden, jerarquia, metodo, desc_menu, tipo_menu, ico_menu, tooltip, vigente, habilitado, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
values (
  534, 11, 'SIREP_MENU_REPORTES_BI', 533, 6,'006.001', 'Reportes/Index', 'Reportes BI', 'M', null, null,'S', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('21/03/2018 17:23:03','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_menus (
id_menu, id_sistema, nombre_menu, id_menu_padre, orden, jerarquia, metodo, desc_menu, tipo_menu, ico_menu, tooltip, vigente, habilitado, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
values (
  515, 11, 'SIREP_MENU_INICIO', 0, 1,001, null, 'Inicio', 'M', null, null,'S', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('21/02/2018 15:40:18','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_menus (
id_menu, id_sistema, nombre_menu, id_menu_padre, orden, jerarquia, metodo, desc_menu, tipo_menu, ico_menu, tooltip, vigente, habilitado, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
values (
  516, 11, 'SIREP_MENU_CONSULTAS', 515, 2,002, null, 'Consultas', 'M', null, null,'S', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('21/02/2018 15:40:18','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_menus (
id_menu, id_sistema, nombre_menu, id_menu_padre, orden, jerarquia, metodo, desc_menu, tipo_menu, ico_menu, tooltip, vigente, habilitado, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
values (
  517, 11, 'SIREP_MENU_REGISTRO', 516, 2,'002.001', 'DocCenso/Index', 'Consulta Registro de Servidores', 'M', null, null,'S', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('21/02/2018 15:40:18','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_menus (
id_menu, id_sistema, nombre_menu, id_menu_padre, orden, jerarquia, metodo, desc_menu, tipo_menu, ico_menu, tooltip, vigente, habilitado, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
values (
  518, 11, 'SIREP_MENU_PLANILLA', 516, 2,'002.002', 'Planilla/Index', 'Consulta Planillas', 'M', null, null,'S', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('21/02/2018 15:40:18','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_menus (
id_menu, id_sistema, nombre_menu, id_menu_padre, orden, jerarquia, metodo, desc_menu, tipo_menu, ico_menu, tooltip, vigente, habilitado, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
values (
  519, 11, 'SIREP_MENU_SERVIDORES', 515, 3,003, null, 'Servidores Públicos', 'M', null, null,'S', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('21/02/2018 15:40:18','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_menus (
id_menu, id_sistema, nombre_menu, id_menu_padre, orden, jerarquia, metodo, desc_menu, tipo_menu, ico_menu, tooltip, vigente, habilitado, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
values (
  520, 11, 'SIREP_MENU_REGISTRO_SERVIDORES', 519, 3,'003.001', 'DocCenso/RegServidores', 'Registro de Servidores', 'M', null, null,'S', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('21/02/2018 15:40:19','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_menus (
id_menu, id_sistema, nombre_menu, id_menu_padre, orden, jerarquia, metodo, desc_menu, tipo_menu, ico_menu, tooltip, vigente, habilitado, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
values (
  521, 11, 'SIREP_MENU_APROBACION_SERVIDORES', 519, 3,'003.002', 'DocCenso/AprServidores', 'Aprobación de Registro de Servidores', 'M', null, null,'S', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('21/02/2018 15:40:19','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_menus (
id_menu, id_sistema, nombre_menu, id_menu_padre, orden, jerarquia, metodo, desc_menu, tipo_menu, ico_menu, tooltip, vigente, habilitado, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
values (
  522, 11, 'SIREP_MENU_CONSOLIDADO_SERVIDORES', 519, 3,'003.003', 'Censo/Index', 'Consolidado de Servidores', 'M', null, null,'S', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('21/02/2018 15:40:19','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_menus (
id_menu, id_sistema, nombre_menu, id_menu_padre, orden, jerarquia, metodo, desc_menu, tipo_menu, ico_menu, tooltip, vigente, habilitado, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
values (
  523, 11, 'SIREP_MENU_PLANILLAS', 515, 4,004, null, 'Planillas', 'M', null, null,'S', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('21/02/2018 15:40:19','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_menus (
id_menu, id_sistema, nombre_menu, id_menu_padre, orden, jerarquia, metodo, desc_menu, tipo_menu, ico_menu, tooltip, vigente, habilitado, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
values (
  525, 11, 'SIREP_MENU_MANTENIMIENTO', 515, 5,005, null, 'Mantenimiento', 'M', null, null,'S', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('21/02/2018 15:41:07','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_menus (
id_menu, id_sistema, nombre_menu, id_menu_padre, orden, jerarquia, metodo, desc_menu, tipo_menu, ico_menu, tooltip, vigente, habilitado, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
values (
  526, 11, 'SIREP_MENU_ENTIDADES', 525, 5,'005.001', 'Entidades/Index', 'Entidades', 'M', null, null,'S', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('21/02/2018 15:41:07','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_menus (
id_menu, id_sistema, nombre_menu, id_menu_padre, orden, jerarquia, metodo, desc_menu, tipo_menu, ico_menu, tooltip, vigente, habilitado, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
values (
  527, 11, 'SIREP_MENU_MODALIDADES', 525, 5,'005.002', 'Modalidades/Index', 'Modalidades', 'M', null, null,'S', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('21/02/2018 16:41:37','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_menus (
id_menu, id_sistema, nombre_menu, id_menu_padre, orden, jerarquia, metodo, desc_menu, tipo_menu, ico_menu, tooltip, vigente, habilitado, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
values (
  528, 11, 'SIREP_MENU_OBJETO_GASTO', 525, 5,'005.003', 'Objetos/Index', 'Objeto del Gasto', 'M', null, null,'S', 'S', 'ELABORADO', 'MODIFICAR', 'MDSAS',to_date(replace('21/02/2018 16:41:37','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_menus (
id_menu, id_sistema, nombre_menu, id_menu_padre, orden, jerarquia, metodo, desc_menu, tipo_menu, ico_menu, tooltip, vigente, habilitado, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod) 
values (
  524, 11, 'SIREP_MENU_REGISTRO_PLANILLAS', 523, 4,'004.001', 'Planilla/Registro', 'Registo de Planillas', 'M', null, null,'S', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('21/02/2018 16:41:37','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_flujos (
 id_flujo, id_sistema, flujo, area, aplicacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values (
303, 11, 'SIREP.F-SRP-01.CENSO', 'SRP', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('26/10/2017 12:10:21','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_flujos (
 id_flujo, id_sistema, flujo, area, aplicacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values (
304, 11, 'SIREP.F-SRP-02.PLANILLA', 'SRP', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('26/10/2017 12:14:36','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_flujos (
 id_flujo, id_sistema, flujo, area, aplicacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values (
305, 11, 'SIREP.F-SRP-03.PRESUPUESTO', 'SRP', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('26/10/2017 12:15:51','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 269, 'V_SRP_PERSONAS', 'SRP', 'VISTA LISTA PERSONAS', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('03/07/2018 16:39:09','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 224, 'SRP_VALIDACIONES', 'SRPVAL', 'SRP_VALIDACIONES', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:00','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 225, 'SRP_TIPOS_PLANILLAS', 'SRP', 'SRP_TIPOS_PLANILLAS', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:00','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 226, 'SRP_TIPOS_EXCEPCIONES', 'SRP', 'SRP_TIPOS_EXCEPCIONES', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:00','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 227, 'SRP_REPORTES', 'SRP', 'SRP_REPORTES', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:00','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 228, 'SRP_PLANILLAS_F02', 'SRP', 'SRP_PLANILLAS_F02', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:01','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 229, 'SRP_PLANILLAS_F01F07', 'SRP', 'SRP_PLANILLAS_F01F07', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:01','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 230, 'SRP_PLANILLAS_DPLA', 'SRP', 'SRP_PLANILLAS_DPLA', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:01','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 231, 'SRP_PLANILLAS_DETPUE', 'SRP', 'SRP_PLANILLAS_DETPUE', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:01','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 232, 'SRP_PLANILLAS_DETDED', 'SRP', 'SRP_PLANILLAS_DETDED', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:01','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 233, 'SRP_PLANILLAS_DET', 'SRP', 'SRP_PLANILLAS_DET', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:01','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 234, 'SRP_PLANILLAS_CAB', 'SRP', 'SRP_PLANILLAS_CAB', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:01','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 235, 'SRP_PERSONAS_INFO', 'SRP', 'SRP_PERSONAS_INFO', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:01','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 236, 'SRP_PERSONAS_FOTOS', 'SRP', 'SRP_PERSONAS_FOTOS', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:01','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 237, 'SRP_PERSONAS', 'SRP', 'SRP_PERSONAS', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:01','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 238, 'SRP_OBJETOS', 'SRP', 'SRP_OBJETOS', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:01','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 239, 'SRP_MODALIDAD_TIPO_CLASE', 'SRP', 'SRP_MODALIDAD_TIPO_CLASE', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:01','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 240, 'SRP_MODALIDAD_OBJ_TIPOPLA', 'SRP', 'SRP_MODALIDAD_OBJ_TIPOPLA', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:01','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 241, 'SRP_MODALIDADES_SIAFI', 'SRP', 'SRP_MODALIDADES_SIAFI', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:01','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 242, 'SRP_MODALIDADES_OBJETOS', 'SRP', 'SRP_MODALIDADES_OBJETOS', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:01','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 243, 'SRP_MODALIDADES_FORMASTRAB', 'SRP', 'SRP_MODALIDADES_FORMASTRAB', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:01','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 244, 'SRP_MODALIDADES', 'SRP', 'SRP_MODALIDADES', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 245, 'SRP_LOV_TIPOS', 'SRP', 'SRP_LOV_TIPOS', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 246, 'SRP_EXCEPCIONES', 'SRP', 'SRP_EXCEPCIONES', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 247, 'SRP_ENTIDADES_INFO', 'SRP', 'SRP_ENTIDADES_INFO', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 248, 'SRP_ENTIDADES', 'SRP', 'SRP_ENTIDADES', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 249, 'SRP_EMPLEOS_PUESTO', 'SRP', 'SRP_EMPLEOS_PUESTO', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 250, 'SRP_EMPLEOS_PPTO', 'SRP', 'SRP_EMPLEOS_PPTO', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 251, 'SRP_EMPLEOS_PLAZAS', 'SRP', 'SRP_EMPLEOS_PLAZAS', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 252, 'SRP_EMPLEOS_PAGPEND', 'SRP', 'SRP_EMPLEOS_PAGPEND', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 253, 'SRP_EMPLEOS_HISTORIAL', 'SRP', 'SRP_EMPLEOS_HISTORIAL', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 254, 'SRP_EMPLEOS', 'SRP', 'SRP_EMPLEOS', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 255, 'SRP_DOC_PERSONAS_INFO', 'SRP', 'SRP_DOC_PERSONAS_INFO', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 256, 'SRP_DOC_PERSONAS_FOTOS', 'SRP', 'SRP_DOC_PERSONAS_FOTOS', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 257, 'SRP_DOC_PERSONAS', 'SRP', 'SRP_DOC_PERSONAS', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 258, 'SRP_DOC_EMP_PAGPEND', 'SRP', 'SRP_DOC_EMP_PAGPEND', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 259, 'SRP_DOC_EMPLEOS_PUESTO', 'SRP', 'SRP_DOC_EMPLEOS_PUESTO', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 260, 'SRP_DOC_EMPLEOS_PPTO', 'SRP', 'SRP_DOC_EMPLEOS_PPTO', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:03','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 261, 'SRP_DOC_EMPLEOS', 'SRP', 'SRP_DOC_EMPLEOS', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:03','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 262, 'SRP_DOC_CENSO', 'SRP', 'SRP_DOC_CENSO', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:03','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 263, 'SRP_ACUMULADO_PAGOS', 'SRP', 'SRP_ACUMULADO_PAGOS', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:03','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 264, 'SRP_ACUMULADO_DED', 'SRP', 'SRP_ACUMULADO_DED', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:03','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 265, 'MENSAJES_DE_ERROR', 'SRP', 'MENSAJES_DE_ERROR', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:03','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 266, 'BITACORAS_DE_ERROR', 'SRP', 'BITACORAS_DE_ERROR', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 17:53:03','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 267, 'V_SRP_GERENCIAS', 'SRP', 'VISTA GERENCIAS ADMINISTRATIVAS', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('30/04/2018 11:25:04','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas (
id_sistema, id_tabla, nombre_tabla, alias_tabla, desc_tabla, owner, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11, 268, 'V_SRP_DOC_CENSO', 'SRP', 'VISTA LISTA CENSO', 'SIREP', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('13/06/2018 11:12:13','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,269,378,'ENTIDAD','ENTIDAD','S','ELABORADO','CREAR','MDSAS',to_date(replace('03/07/2018 16:39:09','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,269,379,'GA','GA','S','ELABORADO','CREAR','MDSAS',to_date(replace('03/07/2018 16:39:09','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,224,267,'ID','ID','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,225,268,'ID','ID','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,226,269,'ID','ID','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,227,270,'APLICACION','APLICACION','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,227,271,'NOMBRE_REPORTE','NOMBRE REPORTE','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,228,272,'GA','GA','S','ELABORADO','MODIFICAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,228,273,'GESTION','GESTION','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,228,274,'ID_PLANILLA','ID PLANILLA','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,228,275,'INSTITUCION','INSTITUCION','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,228,276,'NRO_DEVENGADO','NRO DEVENGADO','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,228,277,'NRO_PERCIBIDO','NRO PERCIBIDO','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,228,278,'NRO_SECUENCIA','NRO SECUENCIA','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,229,279,'GA','GA','S','ELABORADO','MODIFICAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,229,280,'GESTION','GESTION','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,229,281,'ID_PLANILLA','ID PLANILLA','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,229,282,'INSTITUCION','INSTITUCION','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,229,283,'NRO_COMPROMISO','NRO COMPROMISO','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,229,284,'NRO_DEVENGADO','NRO DEVENGADO','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,229,285,'NRO_PRECOMPROMISO','NRO PRECOMPROMISO','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,229,286,'NRO_SECUENCIA','NRO SECUENCIA','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,229,287,'SEC_PAGO','SEC PAGO','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,230,288,'ID_PLANILLA','ID PLANILLA','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,231,289,'ID_PLANILLA','ID PLANILLA','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,231,290,'SECUENCIA','SECUENCIA','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,232,291,'CODIGO','CODIGO','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,232,292,'ID_PLANILLA','ID PLANILLA','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,232,293,'SECUENCIA','SECUENCIA','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,232,294,'TIPO','TIPO','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,233,295,'ID_PLANILLA','ID PLANILLA','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,233,296,'SECUENCIA','SECUENCIA','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,234,297,'ID_PLANILLA','ID PLANILLA','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,235,298,'ID_PERSONA','ID PERSONA','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,236,299,'ID_PERSONA','ID PERSONA','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,237,300,'ID_PERSONA','ID PERSONA','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,238,301,'GESTION','GESTION','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,238,302,'OBJETO','OBJETO','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,239,303,'ID','ID','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,240,304,'ID_MODALIDAD','ID MODALIDAD','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,240,305,'ID_TIPO_PLANILLA','ID TIPO PLANILLA','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,240,306,'OBJETO_GASTO','OBJETO GASTO','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,241,307,'ID_MODALIDAD','ID MODALIDAD','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,241,308,'MODALIDAD_SIAFI','MODALIDAD SIAFI','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,242,309,'GESTION','GESTION','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,242,310,'ID_MODALIDAD','ID MODALIDAD','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,242,311,'OBJETO_GASTO','OBJETO GASTO','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,243,312,'FORMA_TRABAJO','FORMA TRABAJO','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,243,313,'ID_MODALIDAD','ID MODALIDAD','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,244,314,'ID','ID','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,245,315,'SECUENCIAL','SECUENCIAL','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,246,316,'ID','ID','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,247,317,'ENTIDAD','ENTIDAD','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,247,318,'GESTION','GESTION','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,247,319,'TIPO','TIPO','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,248,320,'ENTIDAD','ENTIDAD','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,249,321,'ID_PUESTO','ID PUESTO','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,250,322,'ID_PPTO','ID PPTO','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,251,323,'ID_PLAZA','ID PLAZA','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,252,324,'ID_EMPLEO','ID EMPLEO','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,252,325,'TIPO_PLANILLA','TIPO PLANILLA','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,253,326,'ID_BITACORA','ID BITACORA','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,254,327,'ID_EMPLEO','ID EMPLEO','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,255,328,'NRO_DOCUMENTO','NRO DOCUMENTO','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,256,329,'NRO_DOCUMENTO','NRO DOCUMENTO','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,257,330,'NRO_DOCUMENTO','NRO DOCUMENTO','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,258,331,'NRO_DOCUMENTO','NRO DOCUMENTO','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,258,332,'SECUENCIA_EMPLEO','SECUENCIA EMPLEO','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,258,333,'TIPO_PLANILLA','TIPO PLANILLA','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,259,334,'NRO_DOCUMENTO','NRO DOCUMENTO','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,259,335,'SECUENCIA_EMPLEO','SECUENCIA EMPLEO','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,259,336,'SECUENCIA_PUESTO','SECUENCIA PUESTO','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,260,337,'NRO_DOCUMENTO','NRO DOCUMENTO','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,260,338,'SECUENCIA_EMPLEO','SECUENCIA EMPLEO','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,260,339,'SECUENCIA_PPTO','SECUENCIA PPTO','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,261,340,'NRO_DOCUMENTO','NRO DOCUMENTO','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,261,341,'SECUENCIA_EMPLEO','SECUENCIA EMPLEO','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,262,342,'NRO_DOCUMENTO','NRO DOCUMENTO','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,263,343,'ENTIDAD','ENTIDAD','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,263,344,'GESTION','GESTION','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,263,345,'ID_EMPLEO','ID EMPLEO','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,263,346,'ID_MODALIDAD','ID MODALIDAD','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,263,347,'ID_PERSONA','ID PERSONA','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,263,348,'ID_TIPO_PLANILLA','ID TIPO PLANILLA','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,263,349,'MES','MES','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,264,350,'CLASE','CLASE','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,264,351,'CODIGO','CODIGO','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,264,352,'DEPARTAMENTO','DEPARTAMENTO','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,264,353,'FUENTE','FUENTE','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,264,354,'GESTION','GESTION','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,264,355,'ID_EMPLEO','ID EMPLEO','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,264,356,'ID_PERSONA','ID PERSONA','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,264,357,'ID_PUESTO','ID PUESTO','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,264,358,'MES','MES','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,264,359,'MODALIDAD','MODALIDAD','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,264,360,'MUNICIPIO','MUNICIPIO','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,264,361,'TIPO','TIPO','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,265,362,'CODIGO_MENSAJE_ERROR','CODIGO MENSAJE ERROR','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,265,363,'TIPO_MENSAJE_ERROR','TIPO MENSAJE ERROR','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,266,364,'SECUENCIAL','SECUENCIAL','S','ELABORADO','CREAR','MDSAS',to_date(replace('21/04/2018 13:35:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,234,365,'ENTIDAD','ENTIDAD','S','ELABORADO','CREAR','MDSAS',to_date(replace('22/04/2018 15:59:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,254,366,'ENTIDAD','ENTIDAD','S','ELABORADO','CREAR','MDSAS',to_date(replace('22/04/2018 15:59:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,259,367,'INSTITUCION','INSTITUCION','S','ELABORADO','CREAR','MDSAS',to_date(replace('22/04/2018 15:59:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,261,368,'ENTIDAD','ENTIDAD','S','ELABORADO','CREAR','MDSAS',to_date(replace('22/04/2018 15:59:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,262,369,'ENTIDAD','ENTIDAD','S','ELABORADO','CREAR','MDSAS',to_date(replace('22/04/2018 15:59:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,254,370,'GERENCIAS ADMINISTRATIVA','GERENCIA ADMINISTRATIVA','S','ELABORADO','CREAR','MDSAS',to_date(replace('27/04/2018 13:48:14','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,260,371,'GERENCIAS ADMINISTRATIVA','GERENCIA ADMINISTRATIVA','S','ELABORADO','CREAR','MDSAS',to_date(replace('27/04/2018 13:48:14','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,261,372,'GERENCIAS ADMINISTRATIVA','GERENCIA ADMINISTRATIVA','S','ELABORADO','CREAR','MDSAS',to_date(replace('27/04/2018 13:48:14','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,267,373,'INSTITUCION','INSTITUCION','S','ELABORADO','CREAR','MDSAS',to_date(replace('30/04/2018 11:29:18','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,267,374,'GA','GERENCIA ADMINISTRATIVA','S','ELABORADO','CREAR','MDSAS',to_date(replace('30/04/2018 11:29:18','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,234,375,'GA','GERENCIA ADMINISTRATIVA','S','ELABORADO','CREAR','MDSAS',to_date(replace('02/05/2018 10:34:34','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,268,376,'ENTIDAD','ENTIDAD','S','ELABORADO','CREAR','MDSAS',to_date(replace('13/06/2018 11:12:14','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_tablas_columnas ( 
 id_sistema, id_tabla, id_columna, nombre_columna, comentario, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
11,268,377,'GA','GERENCIA ADMINISTRATIVA','S','ELABORADO','MODIFICAR','MDSAS',to_date(replace('13/06/2018 11:12:14','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
insert into mdsas.sas_tablas_filtros ( 
id_sistema, id_columna, id_filtro, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
 11, 378, 162, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('03/07/2018 16:39:09','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
insert into mdsas.sas_tablas_filtros ( 
id_sistema, id_columna, id_filtro, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
 11, 379, 163, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('03/07/2018 16:39:09','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
insert into mdsas.sas_tablas_filtros ( 
id_sistema, id_columna, id_filtro, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
 11, 320, 162, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('21/04/2018 19:30:51','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
insert into mdsas.sas_tablas_filtros ( 
id_sistema, id_columna, id_filtro, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
 11, 343, 162, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('21/04/2018 19:30:55','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
insert into mdsas.sas_tablas_filtros ( 
id_sistema, id_columna, id_filtro, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
 11, 275, 162, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('22/04/2018 15:59:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
insert into mdsas.sas_tablas_filtros ( 
id_sistema, id_columna, id_filtro, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
 11, 282, 162, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('22/04/2018 15:59:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
insert into mdsas.sas_tablas_filtros ( 
id_sistema, id_columna, id_filtro, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
 11, 317, 162, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('22/04/2018 15:59:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
insert into mdsas.sas_tablas_filtros ( 
id_sistema, id_columna, id_filtro, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
 11, 365, 162, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('22/04/2018 15:59:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
insert into mdsas.sas_tablas_filtros ( 
id_sistema, id_columna, id_filtro, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
 11, 366, 162, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('22/04/2018 15:59:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
insert into mdsas.sas_tablas_filtros ( 
id_sistema, id_columna, id_filtro, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
 11, 367, 162, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('22/04/2018 15:59:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
insert into mdsas.sas_tablas_filtros ( 
id_sistema, id_columna, id_filtro, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
 11, 368, 162, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('22/04/2018 15:59:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
insert into mdsas.sas_tablas_filtros ( 
id_sistema, id_columna, id_filtro, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
 11, 88, 163, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('27/04/2018 14:31:21','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
insert into mdsas.sas_tablas_filtros ( 
id_sistema, id_columna, id_filtro, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
 11, 89, 163, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('27/04/2018 14:31:21','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
insert into mdsas.sas_tablas_filtros ( 
id_sistema, id_columna, id_filtro, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
 11, 90, 163, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('27/04/2018 14:31:21','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
insert into mdsas.sas_tablas_filtros ( 
id_sistema, id_columna, id_filtro, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
 11, 91, 163, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('27/04/2018 14:31:21','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
insert into mdsas.sas_tablas_filtros ( 
id_sistema, id_columna, id_filtro, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
 11, 92, 163, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('27/04/2018 14:31:21','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
insert into mdsas.sas_tablas_filtros ( 
id_sistema, id_columna, id_filtro, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
 11, 93, 163, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('27/04/2018 14:31:21','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
insert into mdsas.sas_tablas_filtros ( 
id_sistema, id_columna, id_filtro, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
 11, 94, 163, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('27/04/2018 14:31:21','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
insert into mdsas.sas_tablas_filtros ( 
id_sistema, id_columna, id_filtro, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
 11, 272, 163, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('27/04/2018 14:31:21','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
insert into mdsas.sas_tablas_filtros ( 
id_sistema, id_columna, id_filtro, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
 11, 279, 163, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('27/04/2018 14:31:21','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
insert into mdsas.sas_tablas_filtros ( 
id_sistema, id_columna, id_filtro, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
 11, 371, 163, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('30/04/2018 11:25:05','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
insert into mdsas.sas_tablas_filtros ( 
id_sistema, id_columna, id_filtro, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
 11, 373, 162, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('30/04/2018 11:29:19','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
insert into mdsas.sas_tablas_filtros ( 
id_sistema, id_columna, id_filtro, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
 11, 374, 163, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('30/04/2018 11:29:19','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
insert into mdsas.sas_tablas_filtros ( 
id_sistema, id_columna, id_filtro, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
 11, 375, 163, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('02/05/2018 10:34:34','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
insert into mdsas.sas_tablas_filtros ( 
id_sistema, id_columna, id_filtro, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
 11, 377, 163, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('13/06/2018 11:12:14','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
insert into mdsas.sas_tablas_filtros ( 
id_sistema, id_columna, id_filtro, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
 11, 376, 162, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('13/06/2018 11:12:14','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 

--</Para INSERT_SASDICCIONARIOOPERADORES no hay resultados>
 insert into mdsas.sas_diccionario_filtros ( 
 id_filtro, id_sistema, nombre_filtro, desc_filtro, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
 162, 11, 'INSTITUCION', 'INSTITUCION', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('21/04/2018 19:03:34','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_diccionario_filtros ( 
 id_filtro, id_sistema, nombre_filtro, desc_filtro, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
 163, 11, 'GERENCIAS ADMINISTRATIVA', 'GERENCIAS ADMINISTRATIVA', 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('21/04/2018 19:03:34','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 

--</Para INSERT_SASDICCIONARIOETAPAS no hay resultados>
 insert into mdsas.sas_perfil_menu ( 
id_perfil, id_menu, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
125, 515, 'S', 'ELABORADO', 'CREAR', 'MDSAS', to_date(replace('16/04/2018 16:57:27','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_perfil_menu ( 
id_perfil, id_menu, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
126, 522, 'S', 'ELABORADO', 'CREAR', 'MDSAS', to_date(replace('24/04/2018 14:36:39','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_perfil_menu ( 
id_perfil, id_menu, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
126, 515, 'S', 'ELABORADO', 'CREAR', 'MDSAS', to_date(replace('16/04/2018 16:57:27','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_perfil_menu ( 
id_perfil, id_menu, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
127, 515, 'S', 'ELABORADO', 'CREAR', 'MDSAS', to_date(replace('16/04/2018 16:57:27','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_perfil_menu ( 
id_perfil, id_menu, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
128, 515, 'S', 'ELABORADO', 'CREAR', 'MDSAS', to_date(replace('16/04/2018 16:57:27','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_perfil_menu ( 
id_perfil, id_menu, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
125, 516, 'S', 'ELABORADO', 'CREAR', 'MDSAS', to_date(replace('16/04/2018 16:57:28','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_perfil_menu ( 
id_perfil, id_menu, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
126, 516, 'S', 'ELABORADO', 'CREAR', 'MDSAS', to_date(replace('16/04/2018 16:57:28','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_perfil_menu ( 
id_perfil, id_menu, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
127, 516, 'S', 'ELABORADO', 'CREAR', 'MDSAS', to_date(replace('16/04/2018 16:57:28','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_perfil_menu ( 
id_perfil, id_menu, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
125, 517, 'S', 'ELABORADO', 'CREAR', 'MDSAS', to_date(replace('16/04/2018 16:57:28','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_perfil_menu ( 
id_perfil, id_menu, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
126, 517, 'S', 'ELABORADO', 'CREAR', 'MDSAS', to_date(replace('16/04/2018 16:57:28','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_perfil_menu ( 
id_perfil, id_menu, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
125, 518, 'S', 'ELABORADO', 'CREAR', 'MDSAS', to_date(replace('16/04/2018 16:57:28','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_perfil_menu ( 
id_perfil, id_menu, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
127, 518, 'S', 'ELABORADO', 'CREAR', 'MDSAS', to_date(replace('16/04/2018 16:57:28','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_perfil_menu ( 
id_perfil, id_menu, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
127, 534, 'S', 'ELABORADO', 'CREAR', 'MDSAS', to_date(replace('25/04/2018 15:14:32','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_perfil_menu ( 
id_perfil, id_menu, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
126, 519, 'S', 'ELABORADO', 'CREAR', 'MDSAS', to_date(replace('16/04/2018 16:57:28','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_perfil_menu ( 
id_perfil, id_menu, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
127, 519, 'S', 'ELABORADO', 'CREAR', 'MDSAS', to_date(replace('16/04/2018 16:57:28','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_perfil_menu ( 
id_perfil, id_menu, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
126, 520, 'S', 'ELABORADO', 'CREAR', 'MDSAS', to_date(replace('16/04/2018 16:57:28','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_perfil_menu ( 
id_perfil, id_menu, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
127, 521, 'S', 'ELABORADO', 'CREAR', 'MDSAS', to_date(replace('16/04/2018 16:57:28','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_perfil_menu ( 
id_perfil, id_menu, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
127, 522, 'S', 'ELABORADO', 'CREAR', 'MDSAS', to_date(replace('16/04/2018 16:57:28','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_perfil_menu ( 
id_perfil, id_menu, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
126, 523, 'S', 'ELABORADO', 'CREAR', 'MDSAS', to_date(replace('16/04/2018 16:57:28','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_perfil_menu ( 
id_perfil, id_menu, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
127, 533, 'S', 'ELABORADO', 'CREAR', 'MDSAS', to_date(replace('25/04/2018 15:14:32','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_perfil_menu ( 
id_perfil, id_menu, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
126, 524, 'S', 'ELABORADO', 'CREAR', 'MDSAS', to_date(replace('16/04/2018 16:57:28','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_perfil_menu ( 
id_perfil, id_menu, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
128, 525, 'S', 'ELABORADO', 'CREAR', 'MDSAS', to_date(replace('16/04/2018 16:57:29','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_perfil_menu ( 
id_perfil, id_menu, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
128, 526, 'S', 'ELABORADO', 'CREAR', 'MDSAS', to_date(replace('16/04/2018 16:57:29','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_perfil_menu ( 
id_perfil, id_menu, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
128, 527, 'S', 'ELABORADO', 'CREAR', 'MDSAS', to_date(replace('16/04/2018 16:57:29','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_perfil_menu ( 
id_perfil, id_menu, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
128, 528, 'S', 'ELABORADO', 'CREAR', 'MDSAS', to_date(replace('16/04/2018 16:57:29','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_perfil_menu ( 
id_perfil, id_menu, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
127, 517, 'S', 'ELABORADO', 'CREAR', 'MDSAS', to_date(replace('21/04/2018 14:54:37','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate);
 insert into mdsas.sas_flujos_operacion ( 
id_flujo, id_operacion, desc_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
 303, 602, 'REGISTRAR SERVIDORES', 'S', 'ELABORADO', 'CREAR', 'MDSAS', to_date(replace('21/02/2018 15:41:08','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_operacion ( 
id_flujo, id_operacion, desc_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
 303, 603, 'APROBAR SERVIDORES', 'S', 'ELABORADO', 'CREAR', 'MDSAS', to_date(replace('21/02/2018 15:41:08','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_operacion ( 
id_flujo, id_operacion, desc_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
 303, 604, 'CONSULTAR', 'S', 'ELABORADO', 'CREAR', 'MDSAS', to_date(replace('21/02/2018 15:41:08','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_operacion ( 
id_flujo, id_operacion, desc_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
 303, 605, 'ADMINISTRAR', 'S', 'ELABORADO', 'CREAR', 'MDSAS', to_date(replace('21/02/2018 15:41:08','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_operacion ( 
id_flujo, id_operacion, desc_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values ( 
 304, 606, 'VALIDAR PLANILLAS', 'S', 'ELABORADO', 'CREAR', 'MDSAS', to_date(replace('21/02/2018 15:41:08','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2727, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:45','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2728, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:45','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2729, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:45','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2730, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:45','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2731, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:46','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2732, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:46','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2733, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:46','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2734, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:46','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2735, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:46','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2736, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:46','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2737, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:46','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2738, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:46','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2739, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:46','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2740, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:46','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2741, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:46','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2743, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:47','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2744, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:47','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2746, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:47','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2747, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:47','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2748, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:47','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2749, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:47','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2762, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:48','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2763, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:48','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2764, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:48','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2765, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:48','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2766, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:48','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2767, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:48','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2768, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:49','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2598, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:49','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2603, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:49','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2606, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:49','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2607, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:49','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2609, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:50','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2610, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:50','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2615, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:50','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2616, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:50','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2617, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:50','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2618, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:50','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2619, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:50','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2620, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:50','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2621, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:51','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2623, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:51','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2624, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:51','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2625, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:51','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2626, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:51','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2628, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:51','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2629, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:51','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2630, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:51','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2631, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:51','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2633, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:52','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2634, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:52','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2635, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:52','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2636, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:52','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2637, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:52','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2638, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:52','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2642, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:52','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2643, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:52','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2644, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:52','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2645, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:53','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2648, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:53','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2650, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:53','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2651, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:53','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2652, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:53','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2653, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:53','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2654, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:53','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2655, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:53','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2656, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:53','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2657, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:54','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2658, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:54','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2659, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:54','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2660, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:54','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2661, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:54','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2662, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:54','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2663, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:54','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2664, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:54','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2669, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:55','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2699, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:57','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2700, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:57','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2701, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:57','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2702, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:57','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2711, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:58','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2712, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:58','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2716, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:58','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2717, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:59','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2718, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:59','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2719, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:59','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2720, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:59','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2721, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:59','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2722, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:59','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2723, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:59','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2725, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:59','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2726, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:59','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2727, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:59','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2728, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:59','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2729, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:18:00','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2730, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:18:00','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2731, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:18:00','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2477, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:47','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2478, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:48','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2479, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:48','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2480, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:48','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2481, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:48','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2482, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:48','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2484, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:48','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2485, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:48','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2486, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:48','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2487, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:48','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2488, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:48','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2489, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:48','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2491, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:49','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2492, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:49','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2493, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:49','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2494, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:49','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2495, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:49','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2496, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:49','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2497, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:49','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2498, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:49','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2499, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:49','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2500, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:49','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2501, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:49','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2502, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:49','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2503, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:50','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2504, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:50','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2505, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:50','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2506, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:50','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2507, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:50','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2508, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:50','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2521, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:51','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2524, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:51','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2525, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:51','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2528, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:52','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2529, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:52','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2530, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:52','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2531, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:52','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2532, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:52','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2533, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:52','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2534, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:52','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2535, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:52','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2536, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:52','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2537, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:52','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2538, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:52','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2539, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:52','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2540, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:53','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2541, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:53','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2542, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:53','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2543, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:53','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2544, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:53','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2545, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:53','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2546, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:53','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2547, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:53','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2548, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:53','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2549, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:53','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2550, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:53','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2551, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:53','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2552, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:53','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2553, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:54','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2554, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:54','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2555, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:54','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2556, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:54','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2557, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:54','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2558, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:54','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2559, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:54','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2560, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:54','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2561, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:54','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2562, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:54','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2563, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:54','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2477, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:57','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2478, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:57','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2479, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:57','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2480, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:57','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2481, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:57','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2483, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:58','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2484, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:58','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2485, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:58','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2488, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:58','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2490, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:58','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2491, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:58','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2495, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:59','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2496, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:59','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2497, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:59','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2498, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:59','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2504, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:06:59','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2507, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:00','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2508, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:00','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2521, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:01','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2524, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:01','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2525, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:01','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2528, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:01','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2529, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:01','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2530, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:01','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2531, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2532, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2533, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2534, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2535, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2536, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2537, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2538, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2570, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:24','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2539, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2540, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2541, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2542, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2543, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:03','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2544, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:03','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2545, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:03','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2546, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:03','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2547, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:03','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2548, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:03','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2549, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:03','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2550, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:03','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2551, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:03','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2552, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:03','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2553, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:03','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2554, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:04','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2555, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:04','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2556, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:04','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2557, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:04','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2558, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:04','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2559, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:04','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2560, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:04','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2561, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:04','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2562, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:04','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2563, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:04','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2477, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:07','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2478, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:07','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2479, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:07','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2480, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:07','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2481, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:07','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2484, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:08','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2485, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:08','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2491, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:08','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2495, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:08','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2496, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:09','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2497, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:09','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2498, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:09','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2504, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:09','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2507, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:09','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2508, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:10','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2521, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:11','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2524, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:11','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2525, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:11','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2528, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:11','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2529, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:11','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2530, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:11','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2531, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:11','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2532, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:11','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2533, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:12','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2534, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:12','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2535, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:12','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2536, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:12','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2537, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:12','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2538, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:12','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2539, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:12','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2540, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:12','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2541, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:12','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2542, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:12','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2543, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:12','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2544, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:12','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2545, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:13','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2546, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:13','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2547, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:13','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2548, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:13','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2549, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:13','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2550, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:13','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2551, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:13','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2552, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:13','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2553, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:13','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2554, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:13','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2555, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:13','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2556, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:14','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2557, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:14','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2558, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:14','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2559, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:14','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2560, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:14','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2561, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:14','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2562, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:14','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2563, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:14','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2582, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:16','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2584, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:16','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2585, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:16','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2592, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:16','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2509, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:19','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2510, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:19','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2511, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:19','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2512, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:19','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2513, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:20','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2514, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:20','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2515, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:20','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2516, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:20','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2517, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:20','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2518, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:20','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2521, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:20','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2524, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:20','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2525, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:21','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2528, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:21','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2529, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:21','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2530, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:21','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2531, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:21','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2532, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:21','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2533, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:21','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2534, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:21','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2535, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:21','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2536, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:21','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2537, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:22','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2538, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:22','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2539, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:22','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2540, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:22','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2541, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:22','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2542, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:22','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2543, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:22','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2544, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:22','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2545, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:22','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2546, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:22','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2547, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:22','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2548, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:22','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2549, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:23','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2550, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:23','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2551, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:23','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2552, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:23','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2553, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:23','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2554, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:23','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2555, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:23','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2556, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:23','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2557, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:23','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2558, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:23','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2559, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:23','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2560, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:23','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2561, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:24','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2562, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:24','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2563, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:24','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2564, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:24','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2565, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:24','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2566, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:24','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2567, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:24','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2568, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:24','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2569, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:24','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2571, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:24','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2572, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:24','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2573, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:25','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2574, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:25','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2575, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:25','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2576, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:25','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2577, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:25','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2578, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:25','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2579, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:25','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2580, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:25','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2581, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:25','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2521, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:30','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2524, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:30','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2525, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:30','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2528, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:30','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2529, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:31','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2530, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:31','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2531, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:31','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2532, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:31','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2533, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:31','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2534, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:31','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2535, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:31','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2536, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:31','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2537, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:31','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2538, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:31','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2539, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:31','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2540, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:31','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2541, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:32','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2542, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:32','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2543, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:32','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2544, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:32','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2545, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:32','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2546, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:32','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2547, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:32','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2548, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:32','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2549, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:32','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2550, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:32','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2551, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:32','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2552, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:32','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2553, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:33','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2554, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:33','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2555, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:33','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2556, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:33','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2557, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:33','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2558, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:33','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2559, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:33','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2560, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:33','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2561, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:33','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2562, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:33','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2563, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:33','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2582, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2583, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2584, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2585, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2586, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2587, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2588, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2589, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2590, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2591, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:36','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2592, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:36','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2593, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:36','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2594, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:36','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2595, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:36','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2596, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:36','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2597, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:07:36','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2598, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:51','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2603, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:51','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2606, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:52','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2607, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:52','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2609, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:52','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2610, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:52','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2637, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:55','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2638, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:55','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2644, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:55','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2645, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:55','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2648, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:56','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2650, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:56','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2651, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:56','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2652, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:56','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2653, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:56','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2654, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:56','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2655, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:56','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2656, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:56','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2657, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:56','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2658, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:56','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2659, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:56','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2660, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:57','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2661, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:57','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2662, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:57','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2663, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:57','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2664, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:57','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2669, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:57','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2674, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:58','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2675, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:58','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2676, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:58','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2677, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:58','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2679, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:58','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2680, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:58','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2681, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:58','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2682, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:58','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2684, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:58','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2685, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:59','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2686, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:59','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2687, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:59','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2689, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:59','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2690, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:59','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2691, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:59','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2692, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:59','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2694, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:59','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2695, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:59','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2696, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:16:59','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2697, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:00','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2699, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:00','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2700, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:00','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2701, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:00','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2702, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:00','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2704, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:00','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2707, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:00','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2708, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:00','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2709, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:01','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2710, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:01','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2711, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:01','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2712, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:01','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2716, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:01','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2717, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:01','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2718, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:01','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2719, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:01','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2720, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:01','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2721, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2722, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2723, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2725, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2726, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2727, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2728, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2729, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2730, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2731, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2732, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:03','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2733, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:03','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2734, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:03','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2735, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:03','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2736, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:03','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2737, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:03','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2738, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:03','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2739, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:03','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2740, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:03','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2741, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:03','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2743, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:03','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2744, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:04','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2746, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:04','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2751, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:04','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2752, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:04','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2753, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:04','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2754, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:04','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2755, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:05','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2756, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:05','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2757, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:05','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2760, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:05','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2762, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:05','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2763, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:05','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2766, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:05','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2598, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2603, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2606, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2607, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2609, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:07','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2610, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:07','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2637, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:09','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2638, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:09','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2644, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:09','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2645, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:10','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2648, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:10','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2650, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:10','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2651, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:10','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2652, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:10','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2653, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:10','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2654, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:10','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2655, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:10','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2656, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:10','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2657, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:11','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2658, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:11','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2659, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:11','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2660, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:11','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2661, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:11','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2662, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:11','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2663, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:11','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2664, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:11','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2669, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:12','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2674, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:12','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2679, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:12','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2684, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:13','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2689, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:13','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2694, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:14','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2699, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:14','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2700, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:14','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2701, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:14','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2702, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:14','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2703, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:14','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2704, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:15','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2705, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:15','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2707, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:15','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2711, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:15','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2712, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:15','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2716, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:16','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2717, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:16','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2718, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:16','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2719, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:16','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2720, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:16','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2721, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:16','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2722, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:16','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2723, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:16','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2725, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:17','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2726, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:17','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2727, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:17','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2728, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:17','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2729, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:17','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2730, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:17','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2731, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:17','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2732, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:17','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2733, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:17','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2734, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:17','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2735, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:17','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2736, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:18','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2737, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:18','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2738, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:18','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2739, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:18','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2740, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:18','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2741, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:18','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2743, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:18','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2744, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:18','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2746, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:18','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2751, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:19','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2752, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:19','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2754, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:19','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2757, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:19','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2761, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:20','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2762, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:20','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2763, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:20','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2766, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:20','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2598, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:20','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2603, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:21','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2606, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:21','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2607, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:21','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2609, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:21','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2610, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:21','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2615, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:22','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2616, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:22','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2617, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:22','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2623, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:23','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2628, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:23','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2633, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:23','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2637, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:24','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2638, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:24','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2642, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:24','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2643, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:24','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2644, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:24','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2645, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:24','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2648, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:25','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2650, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:25','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2651, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:25','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2652, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:25','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2653, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:25','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2654, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:25','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2655, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:25','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2656, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:25','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2658, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:25','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2657, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:25','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2659, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:26','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2660, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:26','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2661, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:26','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2662, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:26','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2663, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:26','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2664, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:26','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2669, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:26','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2674, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:27','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2679, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:27','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2684, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:28','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2689, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:28','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2694, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:28','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2699, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:29','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2700, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:29','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2701, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:29','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2702, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:29','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2707, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:29','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2711, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:30','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2712, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:30','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2716, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:30','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2717, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:30','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2718, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:30','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2719, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:30','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2720, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:30','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2721, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:31','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2722, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:31','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2723, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:31','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2725, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:31','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2726, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:31','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2727, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:31','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2728, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:31','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2729, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:31','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2730, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:31','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2731, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:31','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2732, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:32','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2733, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:32','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2734, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:32','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2735, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:32','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2736, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:32','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2737, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:32','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2738, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:32','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2739, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:32','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2740, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:32','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2741, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:32','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2743, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:32','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2744, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:33','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2746, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:33','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2751, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:33','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2752, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:33','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2762, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:34','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2763, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:34','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2766, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:34','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2598, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2599, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2600, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2601, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2602, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2603, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2604, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2605, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2606, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2607, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2608, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2609, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2610, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:36','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2611, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:36','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2612, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:36','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2613, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:36','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2637, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:38','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2638, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:38','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2639, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:38','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2640, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:38','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2641, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:38','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2644, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:38','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2645, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:38','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2646, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:38','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2647, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:39','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2648, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:39','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2649, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:39','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2650, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:39','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2651, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:39','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2652, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:39','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2653, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:39','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2654, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:39','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2655, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:39','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2656, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:39','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2657, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:39','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2658, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:39','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2659, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:40','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2660, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:40','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2661, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:40','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2662, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:40','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2663, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:40','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2664, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:40','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2665, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:40','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2666, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:40','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2667, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:40','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2669, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:40','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2670, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:40','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2671, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:41','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2672, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:41','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2711, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:44','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2712, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:44','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2713, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:44','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2714, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:44','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2715, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:44','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2716, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:44','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2717, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:44','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2718, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:45','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2719, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:45','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2720, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:45','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2721, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:45','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2722, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:45','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2723, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:45','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2725, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:45','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2726, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:17:45','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2732, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:18:00','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2733, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:18:00','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2734, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:18:00','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2735, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:18:00','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2736, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:18:00','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2737, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:18:00','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2738, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:18:00','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2739, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:18:00','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2740, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:18:01','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2741, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:18:01','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2743, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:18:01','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2744, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:18:01','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2746, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:18:01','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2762, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:18:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2763, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:18:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2766, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:18:03','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2770, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 13:30:24','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2771, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 13:44:13','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2772, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 14:11:33','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2773, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 14:15:25','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2774, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 14:17:59','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2775, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 14:35:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2776, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 15:12:25','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2777, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('20/04/2018 15:36:56','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2777, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('21/04/2018 11:17:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2772, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('21/04/2018 11:20:46','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2773, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('21/04/2018 11:26:46','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2774, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('21/04/2018 11:28:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2775, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('21/04/2018 11:36:27','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2776, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('21/04/2018 11:50:27','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2586, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('21/04/2018 13:16:06','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2588, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('21/04/2018 13:44:45','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2590, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('21/04/2018 14:00:02','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2778, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('21/04/2018 14:22:34','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2779, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('21/04/2018 16:43:31','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2787, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('25/04/2018 15:33:31','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2788, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('25/04/2018 15:33:31','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2789, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('25/04/2018 15:40:39','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2790, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('26/04/2018 10:05:26','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2791, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('26/04/2018 10:08:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2792, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('26/04/2018 10:08:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2768, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('26/04/2018 10:11:39','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2793, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('26/04/2018 11:15:05','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2794, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('26/04/2018 11:18:03','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2768, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('26/04/2018 14:08:19','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2791, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('26/04/2018 14:08:19','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2792, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('26/04/2018 14:08:19','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2795, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('26/04/2018 14:08:19','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2790, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('26/04/2018 14:11:23','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2796, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('27/04/2018 11:25:58','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2797, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('27/04/2018 15:40:18','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2798, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('27/04/2018 15:42:11','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2799, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('27/04/2018 15:49:03','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2800, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('27/04/2018 15:49:03','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2801, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('27/04/2018 19:26:36','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2802, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('27/04/2018 19:26:36','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2803, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('27/04/2018 19:32:40','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2804, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('02/05/2018 21:54:31','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2804, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('02/05/2018 21:54:31','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2805, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('02/05/2018 21:54:31','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2805, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('02/05/2018 21:54:31','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2806, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('03/05/2018 12:10:12','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2807, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('03/05/2018 14:00:35','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_flujos_ope_acciones (
id_accion, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
 ) values ( 
2808, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('15/05/2018 15:17:54','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_perfil_flujo_ope ( 
id_perfil, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values (
125, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 11:31:37','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_perfil_flujo_ope ( 
id_perfil, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values (
126, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 11:31:37','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_perfil_flujo_ope ( 
id_perfil, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values (
126, 606, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 11:31:37','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_perfil_flujo_ope ( 
id_perfil, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values (
127, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 11:31:37','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_perfil_flujo_ope ( 
id_perfil, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values (
127, 604, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 11:31:37','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_perfil_flujo_ope ( 
id_perfil, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values (
128, 605, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 11:31:37','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_perfil_flujo_ope ( 
id_perfil, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values (
126, 602, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('17/04/2018 17:38:25','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
 insert into mdsas.sas_perfil_flujo_ope ( 
id_perfil, id_operacion, vigente, api_estado, api_transaccion, usu_cre, fec_cre, usu_mod, fec_mod 
) values (
126, 603, 'S', 'ELABORADO', 'CREAR', 'MDSAS',to_date(replace('24/04/2018 14:44:56','.',''),'DD/MM/YYYY HH:MI:SS P.M.'), null, sysdate); 
alter table MDSAS.SAS_FLUJOS enable constraint SASFLU_SASSIS_FK;
alter table MDSAS.SAS_FLUJOS enable constraint SASFLU_UK;
alter table MDSAS.SAS_DICCIONARIO_OPERADORES enable constraint DICOPE_SASSIS_FK;
alter table MDSAS.SAS_DICCIONARIO_FILTROS enable constraint DICFIL_SASSIS_FK;
alter table MDSAS.SAS_DICCIONARIO_ETAPAS enable constraint DICETP_SASSIS_FK;
alter table MDSAS.SAS_DICCIONARIO_ETAPAS enable constraint DICETP_UK;
alter table MDSAS.SAS_ACCIONES  enable constraint SASACC_SASSIS_FK;
alter table MDSAS.SAS_ACCIONES enable constraint SASACC_UK;
alter table MDSAS.SAS_MENUS enable constraint SASMENU_UK;
alter table MDSAS.SAS_MENUS enable constraint SASMENU_SASSIS_FK;
alter table MDSAS.SAS_PERFILES enable constraint SASPER_SASSIS_FK;
alter table MDSAS.SAS_TABLAS enable constraint SASTAB_SASSIS_FK;
alter table MDSAS.SAS_TABLAS enable constraint SASTAB_UK;
alter table MDSAS.SAS_TABLAS_COLUMNAS enable constraint TABCOL_SASTAB_FK;
alter table MDSAS.SAS_TABLAS_COLUMNAS enable constraint TABCOL_UK;
alter table MDSAS.SAS_TABLAS_FILTROS enable constraint TABFIL_SASSIS_FK;
alter table MDSAS.SAS_TABLAS_FILTROS enable constraint TABFIL_TABCOL_FK;
alter table MDSAS.SAS_TABLAS_FILTROS enable constraint TABFIL_DICFIL_FK;
alter table MDSAS.SAS_PERFIL_MENU enable constraint SASPME_SASMENU_FK;
alter table MDSAS.SAS_PERFIL_FLUJO_OPE enable constraint SASPFO_FLUOPE_FK;
alter table MDSAS.SAS_FLUJOS_OPE_GRUPO enable constraint FLUOPEGRP_GRPFIL_FK;
alter table MDSAS.SAS_FLUJOS_OPE_GRUPO enable constraint FLUOPEGRP_FLUOPE_FK;
alter table MDSAS.SAS_FLUJOS_OPE_ACCIONES enable constraint FLUOPEACC_SASACC_FK;
alter table MDSAS.SAS_FLUJOS_OPE_ACCIONES enable constraint FLUOPEACC_FLUOPE_FK;
alter table MDSAS.SAS_FLUJOS_OPERACION enable constraint FLUOPE_SASFLU_FK;
alter table MDSAS.SAS_FLUJOS_TABLAS enable constraint FLUTAB_SASTAB_FK;
alter table MDSAS.SAS_FLUJOS_TABLAS enable constraint FLUTAB_SASFLU_FK;
alter table MDSAS.SAS_FLUJOS_OPE_REGLA enable constraint FLUOPERGL_FLUOPE_FK;
alter table MDSAS.SAS_FLUJOS_OPE_REGLA enable constraint FLUOPERGL_SASRGL_FK;
alter table MDSAS.SAS_DOCGRP_PREDICADO enable constraint SASDPRE_UK;
alter table MDSAS.SAS_DOCGRP_PREDICADO enable constraint SASDPRE_SASDGRP_FK;
alter table MDSAS.SAS_DOCGRP_PREDICADO enable constraint SASDPRE_DICOPE_FK;
alter table MDSAS.SAS_DOCGRP_PREDICADO enable constraint SASDPRE_DICFIL_FK;
alter table MDSAS.SAS_DOCPER_PERFIL_MENU enable constraint SASDPME_SASMENU_FK;
alter table MDSAS.SAS_DOCPER_PERFIL_MENU enable constraint SASDPME_SASDPER_FK;
alter table MDSAS.SAS_SOLUSR_PERFIL enable constraint SASOLPER_SASSUSR_FK;
alter table MDSAS.SAS_SOLUSR_PERFIL enable constraint SASOLPER_SASSIS_FK;
alter table MDSAS.SAS_SOLUSR_PERFIL enable constraint SASOLPER_SASPER_FK;
alter table MDSAS.SAS_DOCPER_PERFIL_FLUOPE enable constraint SASDPFO_SASDPER_FK;
alter table MDSAS.SAS_DOCPER_PERFIL_FLUOPE enable constraint SASDPFO_FLUOPE_FK;
alter table MDSAS.SAS_GRUPO_PREDICADO enable constraint GRPPRE_GRPFIL_FK;
alter table MDSAS.SAS_GRUPO_PREDICADO enable constraint GRPPRE_DICFIL_FK;
alter table MDSAS.SAS_GRUPO_PREDICADO enable constraint GRPPRE_DICOPE_FK;
alter table MDSAS.SAS_GRUPO_PREDICADO enable constraint GRPPRE_UK;
alter table MDSAS.SAS_ACCESOS_PERFILES enable constraint SACPER_SASSIS_FK;
alter table MDSAS.SAS_ACCESOS_PERFILES enable constraint ACCPER_SASPER_FK;
alter table MDSAS.SAS_ACCESOS_PERFILES enable constraint ACCPER_SASUSR_FK;

alter table MDSAS.SAS_ACCIONES enable all triggers; 
alter table MDSAS.SAS_FLUJOS enable all triggers; 
alter table MDSAS.SAS_FLUJOS_OPERACION enable all triggers; 
alter table MDSAS.SAS_FLUJOS_OPE_ACCIONES enable all triggers; 
alter table MDSAS.SAS_FLUJOS_OPE_GRUPO enable all triggers; 
alter table MDSAS.SAS_FLUJOS_TABLAS enable all triggers; 
alter table MDSAS.SAS_PERFILES enable all triggers; 
alter table MDSAS.SAS_PERFIL_FLUJO_OPE enable all triggers; 
alter table MDSAS.SAS_TABLAS enable all triggers; 
alter table MDSAS.SAS_TABLAS_COLUMNAS enable all triggers; 
alter table MDSAS.SAS_TABLAS_FILTROS enable all triggers; 
alter table MDSAS.SAS_DICCIONARIO_OPERADORES enable all triggers; 
alter table MDSAS.SAS_DICCIONARIO_FILTROS enable all triggers; 
alter table MDSAS.SAS_DICCIONARIO_ETAPAS enable all triggers; 
alter table MDSAS.SAS_PERFIL_MENU enable all triggers; 
alter table MDSAS.SAS_MENUS enable all triggers; 
commit;
