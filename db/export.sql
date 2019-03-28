--------------------------------------------------------
-- Archivo creado  - jueves-marzo-28-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEC_BILLETES
--------------------------------------------------------

   CREATE SEQUENCE  "CITYBUS"."SEC_BILLETES"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEC_LOCALIDADES
--------------------------------------------------------

   CREATE SEQUENCE  "CITYBUS"."SEC_LOCALIDADES"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEC_PARADAS
--------------------------------------------------------

   CREATE SEQUENCE  "CITYBUS"."SEC_PARADAS"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEC_RUTAS
--------------------------------------------------------

   CREATE SEQUENCE  "CITYBUS"."SEC_RUTAS"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEC_VALORACIONES
--------------------------------------------------------

   CREATE SEQUENCE  "CITYBUS"."SEC_VALORACIONES"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEC_VIAJES
--------------------------------------------------------

   CREATE SEQUENCE  "CITYBUS"."SEC_VIAJES"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table AUTOBUSES
--------------------------------------------------------

  CREATE TABLE "CITYBUS"."AUTOBUSES" 
   (	"MATRICULA" CHAR(7 BYTE), 
	"CAPACIDAD" NUMBER(*,0), 
	"FECHAADQUISICION" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table BILLETES
--------------------------------------------------------

  CREATE TABLE "CITYBUS"."BILLETES" 
   (	"IDBILLETE" NUMBER(*,0), 
	"PRECIO" FLOAT(126), 
	"FECHACOMPRA" DATE, 
	"FECHAANUL" DATE, 
	"CLIENTE" CHAR(9 BYTE), 
	"VIAJE" NUMBER(*,0), 
	"PARADAORIGEN" NUMBER(*,0), 
	"PARADADESTINO" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CLIENTES
--------------------------------------------------------

  CREATE TABLE "CITYBUS"."CLIENTES" 
   (	"DNI" CHAR(9 BYTE), 
	"NOMBRE" VARCHAR2(40 BYTE), 
	"CORREO" VARCHAR2(100 BYTE), 
	"CONTRASEÑA" VARCHAR2(30 BYTE), 
	"SISTEMAPUNTOS" VARCHAR2(6 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table LOCALIDADES
--------------------------------------------------------

  CREATE TABLE "CITYBUS"."LOCALIDADES" 
   (	"IDLOCALIDAD" NUMBER(*,0), 
	"LOCALIDAD" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PARADAS
--------------------------------------------------------

  CREATE TABLE "CITYBUS"."PARADAS" 
   (	"IDPARADA" NUMBER(*,0), 
	"NOMBREPARADA" VARCHAR2(40 BYTE), 
	"HORA" DATE, 
	"LOCALIDAD" NUMBER(*,0), 
	"RUTA" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table RUTAS
--------------------------------------------------------

  CREATE TABLE "CITYBUS"."RUTAS" 
   (	"IDRUTA" NUMBER(*,0), 
	"NOMBRERUTA" VARCHAR2(40 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table VALORACIONES
--------------------------------------------------------

  CREATE TABLE "CITYBUS"."VALORACIONES" 
   (	"IDVALORACION" NUMBER(*,0), 
	"NOTA" NUMBER(*,0), 
	"COMENTARIO" VARCHAR2(400 BYTE), 
	"FECHAVALORACION" DATE, 
	"CLIENTE" CHAR(9 BYTE), 
	"VIAJE" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table VIAJES
--------------------------------------------------------

  CREATE TABLE "CITYBUS"."VIAJES" 
   (	"IDVIAJE" NUMBER(*,0), 
	"FECHAVIAJE" DATE, 
	"AUTOBUS" CHAR(7 BYTE), 
	"RUTA" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into CITYBUS.AUTOBUSES
SET DEFINE OFF;
Insert into CITYBUS.AUTOBUSES (MATRICULA,CAPACIDAD,FECHAADQUISICION) values ('1234BBB','100',to_date('07/07/90','DD/MM/RR'));
Insert into CITYBUS.AUTOBUSES (MATRICULA,CAPACIDAD,FECHAADQUISICION) values ('5678CCC','112',to_date('02/01/02','DD/MM/RR'));
Insert into CITYBUS.AUTOBUSES (MATRICULA,CAPACIDAD,FECHAADQUISICION) values ('1412DDD','103',to_date('23/07/05','DD/MM/RR'));
Insert into CITYBUS.AUTOBUSES (MATRICULA,CAPACIDAD,FECHAADQUISICION) values ('1212KFC','102',to_date('15/01/19','DD/MM/RR'));
REM INSERTING into CITYBUS.BILLETES
SET DEFINE OFF;
Insert into CITYBUS.BILLETES (IDBILLETE,PRECIO,FECHACOMPRA,FECHAANUL,CLIENTE,VIAJE,PARADAORIGEN,PARADADESTINO) values ('1','24',to_date('07/01/19','DD/MM/RR'),null,'123456B  ','3','7','8');
Insert into CITYBUS.BILLETES (IDBILLETE,PRECIO,FECHACOMPRA,FECHAANUL,CLIENTE,VIAJE,PARADAORIGEN,PARADADESTINO) values ('2','12',to_date('10/01/15','DD/MM/RR'),null,'123456B  ','2','5','6');
Insert into CITYBUS.BILLETES (IDBILLETE,PRECIO,FECHACOMPRA,FECHAANUL,CLIENTE,VIAJE,PARADAORIGEN,PARADADESTINO) values ('3','22',to_date('11/01/15','DD/MM/RR'),null,'345678C  ','2','4','6');
Insert into CITYBUS.BILLETES (IDBILLETE,PRECIO,FECHACOMPRA,FECHAANUL,CLIENTE,VIAJE,PARADAORIGEN,PARADADESTINO) values ('4','24',to_date('07/01/19','DD/MM/RR'),null,'233445D  ','3','7','8');
Insert into CITYBUS.BILLETES (IDBILLETE,PRECIO,FECHACOMPRA,FECHAANUL,CLIENTE,VIAJE,PARADAORIGEN,PARADADESTINO) values ('5','24',to_date('15/01/19','DD/MM/RR'),to_date('15/01/19','DD/MM/RR'),'233445D  ','1','1','3');
Insert into CITYBUS.BILLETES (IDBILLETE,PRECIO,FECHACOMPRA,FECHAANUL,CLIENTE,VIAJE,PARADAORIGEN,PARADADESTINO) values ('6','12',to_date('15/01/19','DD/MM/RR'),null,'345678C  ','1','2','3');
Insert into CITYBUS.BILLETES (IDBILLETE,PRECIO,FECHACOMPRA,FECHAANUL,CLIENTE,VIAJE,PARADAORIGEN,PARADADESTINO) values ('7','16',to_date('15/01/19','DD/MM/RR'),null,'233445D  ','1','2','3');
Insert into CITYBUS.BILLETES (IDBILLETE,PRECIO,FECHACOMPRA,FECHAANUL,CLIENTE,VIAJE,PARADAORIGEN,PARADADESTINO) values ('8','16',to_date('15/01/19','DD/MM/RR'),null,'233445D  ','1','2','3');
REM INSERTING into CITYBUS.CLIENTES
SET DEFINE OFF;
Insert into CITYBUS.CLIENTES (DNI,NOMBRE,CORREO,"CONTRASEÑA",SISTEMAPUNTOS) values ('123456B  ','Álvaro','correoalvaro@gmail.com','contraseñanueva123','Bronce');
Insert into CITYBUS.CLIENTES (DNI,NOMBRE,CORREO,"CONTRASEÑA",SISTEMAPUNTOS) values ('345678C  ','Eva','correoeva@gmail.com','eva123','Bronce');
Insert into CITYBUS.CLIENTES (DNI,NOMBRE,CORREO,"CONTRASEÑA",SISTEMAPUNTOS) values ('233445D  ','Pedro','correopedro@gmail.com','pedro123','Bronce');
Insert into CITYBUS.CLIENTES (DNI,NOMBRE,CORREO,"CONTRASEÑA",SISTEMAPUNTOS) values ('123456G  ','Alfredo','alfredocorreo@gmail.com','alfredo123','Bronce');
REM INSERTING into CITYBUS.LOCALIDADES
SET DEFINE OFF;
Insert into CITYBUS.LOCALIDADES (IDLOCALIDAD,LOCALIDAD) values ('1','Sevilla');
Insert into CITYBUS.LOCALIDADES (IDLOCALIDAD,LOCALIDAD) values ('2','Cordoba');
Insert into CITYBUS.LOCALIDADES (IDLOCALIDAD,LOCALIDAD) values ('3','Huelva');
Insert into CITYBUS.LOCALIDADES (IDLOCALIDAD,LOCALIDAD) values ('4','Madrid');
Insert into CITYBUS.LOCALIDADES (IDLOCALIDAD,LOCALIDAD) values ('5','Barcelona');
REM INSERTING into CITYBUS.PARADAS
SET DEFINE OFF;
Insert into CITYBUS.PARADAS (IDPARADA,NOMBREPARADA,HORA,LOCALIDAD,RUTA) values ('1','Plaza de Armas',to_date('01/01/19','DD/MM/RR'),'1','1');
Insert into CITYBUS.PARADAS (IDPARADA,NOMBREPARADA,HORA,LOCALIDAD,RUTA) values ('2','E.Autobuses Córdoba',to_date('01/01/19','DD/MM/RR'),'2','1');
Insert into CITYBUS.PARADAS (IDPARADA,NOMBREPARADA,HORA,LOCALIDAD,RUTA) values ('3','Mendez Álvaro',to_date('01/01/19','DD/MM/RR'),'4','1');
Insert into CITYBUS.PARADAS (IDPARADA,NOMBREPARADA,HORA,LOCALIDAD,RUTA) values ('4','E.Autobuses Huelva',to_date('01/01/19','DD/MM/RR'),'3','2');
Insert into CITYBUS.PARADAS (IDPARADA,NOMBREPARADA,HORA,LOCALIDAD,RUTA) values ('5','Plaza de Armas',to_date('01/01/19','DD/MM/RR'),'1','2');
Insert into CITYBUS.PARADAS (IDPARADA,NOMBREPARADA,HORA,LOCALIDAD,RUTA) values ('6','E.Autobuses Córdoba',to_date('01/01/19','DD/MM/RR'),'2','2');
Insert into CITYBUS.PARADAS (IDPARADA,NOMBREPARADA,HORA,LOCALIDAD,RUTA) values ('7','Mendez Álvaro',to_date('01/01/19','DD/MM/RR'),'4','1');
Insert into CITYBUS.PARADAS (IDPARADA,NOMBREPARADA,HORA,LOCALIDAD,RUTA) values ('8','E.Autobuses Barcelona Nord',to_date('01/01/19','DD/MM/RR'),'5','1');
Insert into CITYBUS.PARADAS (IDPARADA,NOMBREPARADA,HORA,LOCALIDAD,RUTA) values ('9','Plaza de Armas',to_date('01/01/19','DD/MM/RR'),'1','4');
REM INSERTING into CITYBUS.RUTAS
SET DEFINE OFF;
Insert into CITYBUS.RUTAS (IDRUTA,NOMBRERUTA) values ('1','Sevilla-Madrid');
Insert into CITYBUS.RUTAS (IDRUTA,NOMBRERUTA) values ('2','Huelva-Córdoba');
Insert into CITYBUS.RUTAS (IDRUTA,NOMBRERUTA) values ('3','Madrid-Barcelona');
Insert into CITYBUS.RUTAS (IDRUTA,NOMBRERUTA) values ('4','Sevilla-Málaga');
REM INSERTING into CITYBUS.VALORACIONES
SET DEFINE OFF;
Insert into CITYBUS.VALORACIONES (IDVALORACION,NOTA,COMENTARIO,FECHAVALORACION,CLIENTE,VIAJE) values ('1','9','Ha estado muy bien',to_date('15/01/19','DD/MM/RR'),'123456B  ','3');
Insert into CITYBUS.VALORACIONES (IDVALORACION,NOTA,COMENTARIO,FECHAVALORACION,CLIENTE,VIAJE) values ('2','6','El autobus llegó con 30 minutos de retraso, el resto bien',to_date('15/01/19','DD/MM/RR'),'233445D  ','3');
REM INSERTING into CITYBUS.VIAJES
SET DEFINE OFF;
Insert into CITYBUS.VIAJES (IDVIAJE,FECHAVIAJE,AUTOBUS,RUTA) values ('1',to_date('24/04/19','DD/MM/RR'),'1412DDD','1');
Insert into CITYBUS.VIAJES (IDVIAJE,FECHAVIAJE,AUTOBUS,RUTA) values ('2',to_date('13/03/15','DD/MM/RR'),'1234BBB','2');
Insert into CITYBUS.VIAJES (IDVIAJE,FECHAVIAJE,AUTOBUS,RUTA) values ('3',to_date('08/01/19','DD/MM/RR'),'1234BBB','3');
--------------------------------------------------------
--  DDL for Trigger ANULARBILLETE
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "CITYBUS"."ANULARBILLETE" 
before insert or update on billetes
for each row
DECLARE
    w_diferenciahoras NUMBER(8,2);
BEGIN
    select 24* ((:new.fechaanul) - (:new.fechacompra)) as diff_hours into w_diferenciahoras from dual;
    if w_diferenciahoras > 48
    THEN raise_application_error (-20000, 'Han pasado 48 horas desde la compra del billete, ya no se puede anular');
    end if;
END;

/
ALTER TRIGGER "CITYBUS"."ANULARBILLETE" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BILLETES_PK
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "CITYBUS"."BILLETES_PK" 
before insert on billetes
for each row
BEGIN
    SELECT sec_billetes.nextval into :new.idbillete from dual;
END;

/
ALTER TRIGGER "CITYBUS"."BILLETES_PK" ENABLE;
--------------------------------------------------------
--  DDL for Trigger FECHAVALORACION
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "CITYBUS"."FECHAVALORACION" 
before insert or update on valoraciones
for each row
DECLARE
    w_dia char(10);
    w_mes char(10);
    w_year char(10);
    w_fechaviaje Date;
    w_diaviaje char(10);
    w_mesviaje char(10);
    w_yearviaje char(10);
BEGIN
    select to_char(:new.fechavaloracion, 'DD') into w_dia from dual;
    select to_char(:new.fechavaloracion, 'MM') into w_mes from dual;
    select to_char(:new.fechavaloracion, 'YYYY') into w_year from dual;
    select fechaviaje into w_fechaviaje from viajes where idviaje = :new.viaje;
    select to_char(w_fechaviaje, 'DD') into w_diaviaje from dual;
    select to_char(w_fechaviaje, 'MM') into w_mesviaje from dual;
    select to_char(w_fechaviaje, 'YYYY') into w_yearviaje from dual;
    if w_yearviaje > w_year or (w_yearviaje = w_year and w_mesviaje > w_mes) or (w_yearviaje = w_year and w_mesviaje = w_mes and w_diaviaje >= w_dia)
    THEN raise_application_error (-20000, 'la fecha de valoración debe ser posterior a la fecha del viaje');
    end if;
END;

/
ALTER TRIGGER "CITYBUS"."FECHAVALORACION" ENABLE;
--------------------------------------------------------
--  DDL for Trigger HORAPARADA
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "CITYBUS"."HORAPARADA" 
before insert or update on paradas
for each row
DECLARE
    w_horaparada char(10);
    w_minutosparada char(10);
BEGIN
    select to_char(:new.hora, 'HH24') into w_horaparada from dual;
    select to_char(:new.hora, 'mi') into w_minutosparada from dual;

    if w_horaparada < '06'
    THEN raise_application_error (-20000, 'La hora de la parada no está entre las 6:00 y las 23:00');
    end if;

    if w_horaparada = '23' and w_minutosparada > '00'
    THEN raise_application_error (-20000, 'La hora de la parada no está entre las 6:00 y las 23:00');
    end if;
END;

/
ALTER TRIGGER "CITYBUS"."HORAPARADA" ENABLE;
--------------------------------------------------------
--  DDL for Trigger LOCALIDADES_PK
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "CITYBUS"."LOCALIDADES_PK" 
before insert on localidades
for each row
BEGIN
    SELECT sec_localidades.nextval INTO :new.idLocalidad from dual;
END;

/
ALTER TRIGGER "CITYBUS"."LOCALIDADES_PK" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PARADAS_PK
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "CITYBUS"."PARADAS_PK" 
before insert on paradas
for each row
BEGIN
    SELECT sec_paradas.nextval into :new.idparada from dual;
END;

/
ALTER TRIGGER "CITYBUS"."PARADAS_PK" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PARADASRUTA
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "CITYBUS"."PARADASRUTA" 
before insert on paradas
for each row
DECLARE
    w_cuenta integer;
BEGIN
    select count(*) INTO w_cuenta from paradas
    where localidad = :new.localidad and ruta = :new.ruta;
    if w_cuenta > 1
    THEN raise_application_error (-20000, 'La ruta ya tiene 2 paradas pertenecientes a una misma localidad');
    end if;
END;

/
ALTER TRIGGER "CITYBUS"."PARADASRUTA" ENABLE;
--------------------------------------------------------
--  DDL for Trigger RUTAS_PK
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "CITYBUS"."RUTAS_PK" 
before insert on rutas
for each row
BEGIN
    SELECT sec_rutas.nextval into :new.idruta from dual;
END;

/
ALTER TRIGGER "CITYBUS"."RUTAS_PK" ENABLE;
--------------------------------------------------------
--  DDL for Trigger SISTEMADEPUNTOS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "CITYBUS"."SISTEMADEPUNTOS" 
before insert on billetes
for each row
DECLARE
    w_cuentabilletes integer;
BEGIN
     select count(*) into w_cuentabilletes from billetes where cliente = :new.cliente;
     if w_cuentabilletes > 8 and w_cuentabilletes < 14
     THEN
     update clientes set sistemapuntos = 'Plata' where dni = :new.cliente;
     end if;

     if w_cuentabilletes > 13
     THEN
     update clientes set sistemapuntos = 'Oro'  where dni = :new.cliente;
     end if;

END;

/
ALTER TRIGGER "CITYBUS"."SISTEMADEPUNTOS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TIEMPOAUTOBUS
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "CITYBUS"."TIEMPOAUTOBUS" 
before insert on viajes
for each row
DECLARE
    w_viajeyear integer;
    w_autobusyear integer;
    w_fecha date;
BEGIN
    select extract (year from :new.fechaviaje) into w_viajeyear from dual;
    select fechaadquisicion into w_fecha from autobuses where matricula = :new.autobus;
    select extract (year from w_fecha) into w_autobusyear from dual;
    if w_viajeyear - w_autobusyear > 15
    THEN raise_application_error (-20000, 'El autobus tiene más de 15 años');
    end if;
END;
/
ALTER TRIGGER "CITYBUS"."TIEMPOAUTOBUS" ENABLE;
--------------------------------------------------------
--  DDL for Trigger VALORACIONES_PK
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "CITYBUS"."VALORACIONES_PK" 
before insert on valoraciones
for each row
BEGIN
    SELECT sec_valoraciones.nextval into :new.idvaloracion from dual;
END;

/
ALTER TRIGGER "CITYBUS"."VALORACIONES_PK" ENABLE;
--------------------------------------------------------
--  DDL for Trigger VIAJES_PK
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "CITYBUS"."VIAJES_PK" 
before insert on viajes
for each row
BEGIN
    SELECT sec_viajes.nextval into :new.idviaje from dual;
END;

/
ALTER TRIGGER "CITYBUS"."VIAJES_PK" ENABLE;
--------------------------------------------------------
--  DDL for Procedure ANULARBILLETE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CITYBUS"."ANULARBILLETE" 
    (w_billete in billetes.idbillete%type ) IS
BEGIN

    UPDATE billetes SET FechaAnul = sysdate where idbillete = w_billete;
END;

/
--------------------------------------------------------
--  DDL for Procedure APLICARDESCUENTO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CITYBUS"."APLICARDESCUENTO" (
    w_billete in billetes.idbillete%type,
    w_cliente in billetes.cliente%type
    ) IS
BEGIN
    if (SELECT cliente from billetes where idbillete = w_billete) <> w_cliente
    THEN raise_application_error (-20000, 'El cliente indicado no coincide con el billete seleccionado');
    end if;

    if (SELECT sistemapuntos from clientes where dni = w_cliente) = 'Plata'
    THEN
    UPDATE INTO billetes SET precio = (SELECT precio from billetes where idbillete = w_billete) * 0.8 where idbillete = w_billete;
COMMIT WORK;
END;

/
--------------------------------------------------------
--  DDL for Procedure CAMBIACONTRASEÑA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CITYBUS"."CAMBIACONTRASEÑA" (
    w_cliente in clientes.dni%type,
    w_nuevacontraseña in clientes.contraseña%type) IS
BEGIN
    UPDATE clientes SET contraseña = w_nuevacontraseña where dni = w_cliente;
END;

/
--------------------------------------------------------
--  DDL for Procedure CLIENTESMAYORCOMPRA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CITYBUS"."CLIENTESMAYORCOMPRA" (w_fecha IN varchar) IS
    CURSOR c IS
        SELECT cliente,count(*) AS cuenta from billetes WHERE fechacompra BETWEEN To_DATE(w_fecha, 'DD-MM-YYYY') AND sysdate
        GROUP BY cliente order by 2 DESC;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Los 5 clientes que más billetes han comprado desde la fecha seleccionada hasta la actualidad son:');
    FOR fila in c LOOP
        EXIT WHEN c%ROWCOUNT > 5;
        DBMS_OUTPUT.PUT_LINE('El cliente con DNI ' ||fila.cliente||'ha comprado ' ||fila.cuenta|| ' billetes');
        END LOOP;
END;

/
--------------------------------------------------------
--  DDL for Procedure COMPRABILLETE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CITYBUS"."COMPRABILLETE" (
    w_precio IN billetes.precio%TYPE,
    w_cliente IN billetes.cliente%TYPE,
    w_viaje IN billetes.viaje%TYPE,
    w_paradaorigen IN billetes.paradaorigen%TYPE,
    w_paradadestino IN billetes.paradadestino%TYPE) IS
    
BEGIN
    INSERT INTO billetes (precio, fechacompra, cliente, viaje, paradaorigen, paradadestino)
    VALUES (w_precio, sysdate, w_cliente, w_viaje, w_paradaorigen, w_paradadestino);
COMMIT WORK;
END;

/
--------------------------------------------------------
--  DDL for Procedure INSERTAPARADA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CITYBUS"."INSERTAPARADA" (
    w_nombreparada in paradas.nombreparada%type,
    w_hora in paradas.hora%type,
    w_localidad in paradas.localidad%type,
    w_ruta in paradas.ruta%type) IS
BEGIN
    INSERT INTO paradas (nombreparada, hora, localidad, ruta)
    VALUES (w_nombreparada, w_hora, w_localidad, w_ruta);
COMMIT WORK;
END;

/
--------------------------------------------------------
--  DDL for Procedure INSERTARUTA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CITYBUS"."INSERTARUTA" (
    w_nombreruta in rutas.nombreruta%type) IS
BEGIN
    INSERT INTO rutas (nombreruta)
    VALUES (w_nombreruta);
COMMIT WORK;
END;

/
--------------------------------------------------------
--  DDL for Procedure INSERTAVALORACION
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CITYBUS"."INSERTAVALORACION" (
    w_nota in valoraciones.nota%type,
    w_comentario in valoraciones.comentario%type,
    w_cliente in valoraciones.cliente%type,
    w_viaje in valoraciones.viaje%type) IS
BEGIN
    INSERT INTO valoraciones (nota, comentario, fechavaloracion, cliente, viaje)
    VALUES (w_nota, w_comentario, sysdate, w_cliente, w_viaje);
COMMIT WORK;
END;

/
--------------------------------------------------------
--  DDL for Procedure REGISTRAAUTOBUS
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CITYBUS"."REGISTRAAUTOBUS" (
    w_matricula in autobuses.matricula%type,
    w_capacidad in autobuses.capacidad%type) IS
BEGIN
    INSERT INTO autobuses (matricula, capacidad, fechaadquisicion) VALUES (w_matricula, w_capacidad, sysdate);
    COMMIT WORK;
END;

/
--------------------------------------------------------
--  DDL for Procedure REGISTRACLIENTE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "CITYBUS"."REGISTRACLIENTE" (
    w_dni in clientes.dni%type,
    w_nombre in clientes.nombre%type,
    w_correo in clientes.correo%type,
    w_contraseña in clientes.contraseña%type) IS
BEGIN
    INSERT INTO clientes (dni, nombre, correo, contraseña, sistemapuntos)
    VALUES (w_dni, w_nombre, w_correo, w_contraseña, 'Bronce');
COMMIT WORK;
END;

/
--------------------------------------------------------
--  Constraints for Table VALORACIONES
--------------------------------------------------------

  ALTER TABLE "CITYBUS"."VALORACIONES" ADD PRIMARY KEY ("IDVALORACION")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "CITYBUS"."VALORACIONES" ADD CHECK (Nota between 0 and 10) ENABLE;
--------------------------------------------------------
--  Constraints for Table AUTOBUSES
--------------------------------------------------------

  ALTER TABLE "CITYBUS"."AUTOBUSES" ADD PRIMARY KEY ("MATRICULA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "CITYBUS"."AUTOBUSES" MODIFY ("MATRICULA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table VIAJES
--------------------------------------------------------

  ALTER TABLE "CITYBUS"."VIAJES" ADD PRIMARY KEY ("IDVIAJE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PARADAS
--------------------------------------------------------

  ALTER TABLE "CITYBUS"."PARADAS" ADD PRIMARY KEY ("IDPARADA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table BILLETES
--------------------------------------------------------

  ALTER TABLE "CITYBUS"."BILLETES" ADD PRIMARY KEY ("IDBILLETE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOCALIDADES
--------------------------------------------------------

  ALTER TABLE "CITYBUS"."LOCALIDADES" ADD PRIMARY KEY ("IDLOCALIDAD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CLIENTES
--------------------------------------------------------

  ALTER TABLE "CITYBUS"."CLIENTES" ADD PRIMARY KEY ("DNI")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "CITYBUS"."CLIENTES" ADD CHECK ( sistemapuntos IN('Bronce', 'Plata', 'Oro')) ENABLE;
  ALTER TABLE "CITYBUS"."CLIENTES" MODIFY ("DNI" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RUTAS
--------------------------------------------------------

  ALTER TABLE "CITYBUS"."RUTAS" ADD PRIMARY KEY ("IDRUTA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BILLETES
--------------------------------------------------------

  ALTER TABLE "CITYBUS"."BILLETES" ADD FOREIGN KEY ("CLIENTE")
	  REFERENCES "CITYBUS"."CLIENTES" ("DNI") ENABLE;
  ALTER TABLE "CITYBUS"."BILLETES" ADD FOREIGN KEY ("VIAJE")
	  REFERENCES "CITYBUS"."VIAJES" ("IDVIAJE") ENABLE;
  ALTER TABLE "CITYBUS"."BILLETES" ADD FOREIGN KEY ("PARADAORIGEN")
	  REFERENCES "CITYBUS"."PARADAS" ("IDPARADA") ENABLE;
  ALTER TABLE "CITYBUS"."BILLETES" ADD FOREIGN KEY ("PARADADESTINO")
	  REFERENCES "CITYBUS"."PARADAS" ("IDPARADA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PARADAS
--------------------------------------------------------

  ALTER TABLE "CITYBUS"."PARADAS" ADD FOREIGN KEY ("LOCALIDAD")
	  REFERENCES "CITYBUS"."LOCALIDADES" ("IDLOCALIDAD") ENABLE;
  ALTER TABLE "CITYBUS"."PARADAS" ADD FOREIGN KEY ("RUTA")
	  REFERENCES "CITYBUS"."RUTAS" ("IDRUTA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table VALORACIONES
--------------------------------------------------------

  ALTER TABLE "CITYBUS"."VALORACIONES" ADD FOREIGN KEY ("CLIENTE")
	  REFERENCES "CITYBUS"."CLIENTES" ("DNI") ENABLE;
  ALTER TABLE "CITYBUS"."VALORACIONES" ADD FOREIGN KEY ("VIAJE")
	  REFERENCES "CITYBUS"."VIAJES" ("IDVIAJE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table VIAJES
--------------------------------------------------------

  ALTER TABLE "CITYBUS"."VIAJES" ADD FOREIGN KEY ("AUTOBUS")
	  REFERENCES "CITYBUS"."AUTOBUSES" ("MATRICULA") ENABLE;
  ALTER TABLE "CITYBUS"."VIAJES" ADD FOREIGN KEY ("RUTA")
	  REFERENCES "CITYBUS"."RUTAS" ("IDRUTA") ENABLE;
