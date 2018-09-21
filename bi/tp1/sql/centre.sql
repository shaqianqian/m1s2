--------------------------------------------------------
--  Fichier créé - jeudi-mars-08-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CENTRE
--------------------------------------------------------

  CREATE TABLE "SHA"."CENTRE" 
   (	"C_ID" NUMBER(3,0), 
	"C_NOM" VARCHAR2(100 BYTE), 
	"C_NUMERO" VARCHAR2(5 BYTE), 
	"C_RUE" VARCHAR2(50 BYTE), 
	"C_VILLE" VARCHAR2(20 BYTE), 
	"C_CODE_POSTAL" VARCHAR2(5 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "M1INFO" ;
REM INSERTING into SHA.CENTRE
SET DEFINE OFF;
Insert into SHA.CENTRE (C_ID,C_NOM,C_NUMERO,C_RUE,C_VILLE,C_CODE_POSTAL) values ('1','Bussang Larcenaire','15','rue d''Epinal','BUSSANG','88540');
Insert into SHA.CENTRE (C_ID,C_NOM,C_NUMERO,C_RUE,C_VILLE,C_CODE_POSTAL) values ('2','La Bresse Hohneck','43bis','place de l''église','LA BRESSE HOHNECK','88250');
Insert into SHA.CENTRE (C_ID,C_NOM,C_NUMERO,C_RUE,C_VILLE,C_CODE_POSTAL) values ('3','Brides les bains','2','rue de la fontaine','BRIDES LES BAINS','73570');
Insert into SHA.CENTRE (C_ID,C_NOM,C_NUMERO,C_RUE,C_VILLE,C_CODE_POSTAL) values ('4','La Clusaz','254','avenue du bois','LA CLUSAZ','74220');
Insert into SHA.CENTRE (C_ID,C_NOM,C_NUMERO,C_RUE,C_VILLE,C_CODE_POSTAL) values ('5','La Plagne','73','grand place','LA PLAGNE','73210');
Insert into SHA.CENTRE (C_ID,C_NOM,C_NUMERO,C_RUE,C_VILLE,C_CODE_POSTAL) values ('6','Grand Tourmalet','32','rue des tournesols','GRAND TOURMALET','65200');
Insert into SHA.CENTRE (C_ID,C_NOM,C_NUMERO,C_RUE,C_VILLE,C_CODE_POSTAL) values ('7','Les Angles','6','rue du Canigou','LES ANGLES','66210');
Insert into SHA.CENTRE (C_ID,C_NOM,C_NUMERO,C_RUE,C_VILLE,C_CODE_POSTAL) values ('8','Le Lioran','47','avenue des auvergnats','LE LIORAN','15300');
--------------------------------------------------------
--  DDL for Index SYS_C00334401
--------------------------------------------------------

  CREATE UNIQUE INDEX "SHA"."SYS_C00334401" ON "SHA"."CENTRE" ("C_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "M1INFO" ;
--------------------------------------------------------
--  Constraints for Table CENTRE
--------------------------------------------------------

  ALTER TABLE "SHA"."CENTRE" ADD PRIMARY KEY ("C_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "M1INFO"  ENABLE;
