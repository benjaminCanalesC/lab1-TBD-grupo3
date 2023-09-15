-- CREAR TABLAS DE BASE DE DATOS GRUPO 3.

BEGIN;

-- Creación de las tablas

CREATE TABLE IF NOT EXISTS public.rol(
    id_rol SERIAL PRIMARY KEY,
    rol TEXT COLLATE pg_catalog."default");

CREATE TABLE IF NOT EXISTS public.ranking(
    id_ranking SERIAL PRIMARY KEY,
    posicion_ranking INTEGER);

CREATE TABLE IF NOT EXISTS public.institucion(
    id_institucion SERIAL PRIMARY KEY,
    nombre_institucion TEXT COLLATE pg_catalog."default",
    descripcion_institucion TEXT COLLATE pg_catalog."default");

CREATE TABLE IF NOT EXISTS public.perfil(
    id_perfil SERIAL PRIMARY KEY,
	foto_perfil varchar(200),
	primer_nombre TEXT COLLATE pg_catalog."default",
	segundo_nombre TEXT COLLATE pg_catalog."default",
	primer_apellido TEXT COLLATE pg_catalog."default",
	segundo_apellido TEXT COLLATE pg_catalog."default",
	descripcion_perfil TEXT COLLATE pg_catalog."default",
	genero TEXT COLLATE pg_catalog."default",
	fecha_nacimiento DATE);

CREATE TABLE IF NOT EXISTS public.estado(
    id_estado SERIAL PRIMARY KEY,
    estado TEXT COLLATE pg_catalog."default",
    descripcion_estado TEXT COLLATE pg_catalog."default");

CREATE TABLE IF NOT EXISTS public.tarea(
    id_tarea SERIAL PRIMARY KEY,
    nombre_tarea TEXT COLLATE pg_catalog."default",
    descripcion_tarea TEXT COLLATE pg_catalog."default",
	voluntarios_requeridos INTEGER,
	id_estado INTEGER);

CREATE TABLE IF NOT EXISTS public.emergencia(
    id_emergencia SERIAL PRIMARY KEY,
    nombre_emergencia TEXT COLLATE pg_catalog."default",
    ubicacion_emergencia TEXT COLLATE pg_catalog."default",
	fecha_declaracion DATE,
	id_estado INTEGER);

CREATE TABLE IF NOT EXISTS public.emergencia_tarea(
    id_emergencia_tarea SERIAL PRIMARY KEY,
    id_emergencia INTEGER,
    id_tarea INTEGER);
	
CREATE TABLE IF NOT EXISTS public.emergencia_institucion(
    id_emergencia_institucion SERIAL PRIMARY KEY,
    id_emergencia INTEGER,
    id_institucion INTEGER);
	
CREATE TABLE IF NOT EXISTS public.emergencia_requerimiento(
    id_emergencia_requerimiento SERIAL PRIMARY KEY,
    id_emergencia INTEGER,
    id_requerimiento INTEGER);

CREATE TABLE IF NOT EXISTS public.requerimiento(
    id_requerimiento SERIAL PRIMARY KEY,
    nombre_requerimiento TEXT COLLATE pg_catalog."default",
	descripcion_requerimiento TEXT COLLATE pg_catalog."default");

CREATE TABLE IF NOT EXISTS public.habilidad(
    id_habilidad SERIAL PRIMARY KEY,
    nombre_habilidad TEXT COLLATE pg_catalog."default",
    descripcion_habilidad TEXT COLLATE pg_catalog."default");
	
CREATE TABLE IF NOT EXISTS public.emergencia_habilidad(
    id_emergencia_habilidad SERIAL PRIMARY KEY,
    id_emergencia INTEGER,
    id_habilidad INTEGER);

CREATE TABLE IF NOT EXISTS public.usuario(
    id_usuario SERIAL PRIMARY KEY,
	correo TEXT COLLATE pg_catalog."default",
	contrasena TEXT COLLATE pg_catalog."default",
	id_perfil INTEGER,
	id_rol INTEGER,
	id_institucion INTEGER);

CREATE TABLE IF NOT EXISTS public.usuario_habilidad(
    id_usuario_habilidad SERIAL PRIMARY KEY,
    id_usuario INTEGER,
    id_habilidad INTEGER);

CREATE TABLE IF NOT EXISTS public.usuario_requerimiento(
    id_usuario_requerimiento SERIAL PRIMARY KEY,
    id_usuario INTEGER,
    id_requerimiento INTEGER);

-- Creación de las relaciones

ALTER TABLE IF EXISTS public.tarea
    ADD CONSTRAINT "idEstadoFK" FOREIGN KEY (id_estado)
    REFERENCES public.estado (id_estado) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.emergencia
    ADD CONSTRAINT "idEstadoFK" FOREIGN KEY (id_estado)
    REFERENCES public.estado (id_estado) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.emergencia_tarea
    ADD CONSTRAINT "idEmergenciaFK" FOREIGN KEY (id_emergencia)
    REFERENCES public.emergencia (id_emergencia) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.emergencia_tarea
    ADD CONSTRAINT "idTareaFK" FOREIGN KEY (id_tarea)
    REFERENCES public.tarea (id_tarea) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.emergencia_institucion
    ADD CONSTRAINT "idEmergenciaFK" FOREIGN KEY (id_emergencia)
    REFERENCES public.emergencia (id_emergencia) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.emergencia_institucion
    ADD CONSTRAINT "idInstitucionFK" FOREIGN KEY (id_institucion)
    REFERENCES public.institucion (id_institucion) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
	
ALTER TABLE IF EXISTS public.emergencia_requerimiento
    ADD CONSTRAINT "idEmergenciaFK" FOREIGN KEY (id_emergencia)
    REFERENCES public.emergencia (id_emergencia) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.emergencia_requerimiento
    ADD CONSTRAINT "idRequerimientoFK" FOREIGN KEY (id_requerimiento)
    REFERENCES public.requerimiento (id_requerimiento) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
	
ALTER TABLE IF EXISTS public.emergencia_habilidad
    ADD CONSTRAINT "idEmergenciaFK" FOREIGN KEY (id_emergencia)
    REFERENCES public.emergencia (id_emergencia) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.emergencia_habilidad
    ADD CONSTRAINT "idHabilidadFK" FOREIGN KEY (id_habilidad)
    REFERENCES public.habilidad (id_habilidad) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.usuario
    ADD CONSTRAINT "idPerfilFK" FOREIGN KEY (id_perfil)
    REFERENCES public.perfil (id_perfil) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
	
ALTER TABLE IF EXISTS public.usuario
    ADD CONSTRAINT "idRolFK" FOREIGN KEY (id_rol)
    REFERENCES public.rol (id_rol) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
	
ALTER TABLE IF EXISTS public.usuario
    ADD CONSTRAINT "idInstitucionFK" FOREIGN KEY (id_institucion)
    REFERENCES public.institucion (id_institucion) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.usuario_habilidad
    ADD CONSTRAINT "idUsuarioFK" FOREIGN KEY (id_usuario)
    REFERENCES public.usuario (id_usuario) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
	

ALTER TABLE IF EXISTS public.usuario_habilidad
    ADD CONSTRAINT "idHabilidadFK" FOREIGN KEY (id_habilidad)
    REFERENCES public.habilidad (id_habilidad) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.usuario_requerimiento
    ADD CONSTRAINT "idUsuarioFK" FOREIGN KEY (id_usuario)
    REFERENCES public.usuario (id_usuario) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

ALTER TABLE IF EXISTS public.usuario_requerimiento
    ADD CONSTRAINT "idRequerimientoFK" FOREIGN KEY (id_requerimiento)
    REFERENCES public.requerimiento (id_requerimiento) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;

COMMIT;