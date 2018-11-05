alter table idmanager.idm_personas disable all triggers;
alter table idmanager.idm_usuarios disable all triggers;
alter table idmanager.idm_usuarios_rel disable all triggers;
alter table idmanager.idm_usuarios_password disable all triggers;

Insert into IDMANAGER.IDM_PERSONAS
   (PERSONA_ID, PRIMER_NOMBRE, SEGUNDO_NOMBRE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, 
    FECHA_NACIMIENTO, FECHA_ELABORACION, SEXO, PAIS_ID, TIPO_ID, 
    NRO_ID, DIRECCION, CORREO, TELEFONO, CELULAR, 
    GLOSA, VIGENTE, API_ESTADO, API_TRANSACCION, USU_CRE, 
    FEC_CRE, USU_MOD, FEC_MOD)
 Values
   (3261, 'LEDY', 'RUTH', 'AGUILAR', 'IZAGUIRRE', 
    TO_DATE('01/01/1988 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), sysdate, 'F', 'HN', 'TID', 
    '0704196100380', 'Direcci�n de Pol�tica MacroFiscal', 'laguilar@sefin.gob.hn', '+504', '+504', 
    NULL, 'S', 'ELABORADO', 'CREAR', 'IDMANAGER', 
    sysdate, NULL, NULL);

Insert into IDMANAGER.IDM_USUARIOS
   (USUARIO_ID, FECHA_ELABORACION, NOMBRE_USUARIO, NICK_USUARIO, TIPO_USUARIO_ID, 
    NIVEL_USUARIO_ID, PERSONA_ID, PUESTO, VIGENTE, API_ESTADO, 
    API_TRANSACCION, USU_CRE, FEC_CRE, USU_MOD, FEC_MOD)
 Values
   (3261, sysdate, 'LEDY RUTH AGUILAR IZAGUIRRE', '0704196100380', '1', 
    4, 3261, 'ANALISTA INSTITUCI�N', 'S', 'ELABORADO', 
    'CREAR', 'IDMANAGER', sysdate, NULL, NULL);


Insert into IDMANAGER.IDM_USUARIOS_REL
   (USUARIO_ID, SISTEMA_ID, FECHA_ELABORACION, VIGENTE, API_ESTADO, 
    API_TRANSACCION, USU_CRE, FEC_CRE, USU_MOD, FEC_MOD)
 Values
   (3261, 5, sysdate, 'S', 'ELABORADO', 
    'CREAR', 'IDMANAGER', sysdate, NULL, NULL);

Insert into IDMANAGER.IDM_USUARIOS_PASSWORD
   (SECUENCIA, USUARIO_ID, PASSWORD, FECHA_ELABORACION, VIGENTE, 
    API_ESTADO, API_TRANSACCION, USU_CRE, FEC_CRE, USU_MOD, 
    FEC_MOD)
 Values
   (8014, 3261, '1000:YzFKNT80NzM1MVg5PzhTN3E0PzduN1ox:nXjfO07aTOOZe1wsNDWwHmX9QduQcRtd/WFXPYQtDNE=', SYSDATE, 'S', 
    'ELABORADO', 'CREAR', 'IDMANAGER', sysdate, NULL, 
    NULL);


COMMIT;

alter table idmanager.idm_personas enable all triggers;
alter table idmanager.idm_usuarios enable all triggers;
alter table idmanager.idm_usuarios_rel enable all triggers;
alter table idmanager.idm_usuarios_password enable all triggers;