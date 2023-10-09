INSERT INTO state (id_state, state_name, state_description)
VALUES
    (1, 'Sin asignar', 'La tarea o emergencia se ha definido pero no está en curso'),
    (2, 'En curso', 'La tarea o emergencia actualmente se está llevando a cabo'),
    (3, 'Finalizada', 'La tarea o emergencia se ha terminado de realizar');
	
INSERT INTO task (id_task, task_name, task_description, volunteers_required, id_state)
VALUES
	(1, 'Atender heridos', 'Ayudar a gente afectada directamente por el desastre', 10, 1),
	(2, 'Extraer escombros', 'Retirar los desechos del lugar', 15, 1),
	(3, 'Apagar fuego', 'Ayudar a combatir el incendio', 30, 1),
	(4, 'Guiar a lugar seguro', 'Buscar un lugar seguro al desastre', 5, 1),
	(5, 'Realizar SOS', 'Hacer una señal de auxilio', 4, 1),
	(6, 'Cubrir conductos de ventilación', 'Cerrar puertas y ventanas con paños húmedos', 10, 1),
	(7, 'Ayudar a subir a un lugar alto', 'Subir a un cerro o árbol', 5, 1),
	(8, 'Ayudar a evacuar las casas', 'Ayudar a la gente a que resguarde sus productos de valor', 10, 1),
	(9, 'Establecer centro de comandos', 'Coordinar con voluntarios y otras organizaciones', 9, 1),
	(10, 'Suministrar alimentos', 'Asignar alimentos a los afectados', 7, 1),
	(11, 'Evaluar daños', 'Realizar evaluación completa para determinar las necesidades a largo plazo', 5, 1),
	(12, 'Atender psicológicamente', 'Ofrecer apoyo psicológico a personas traumatizadas', 3, 1);

INSERT INTO institution (id_institution, institution_name, institution_description)
VALUES
	(1, 'Instituto Nacional de Ayuda de Terremotos (INAT)', 
	'INAT se dedica a la investigación y la educación sobre la prevención de terremotos y la construcción de estructuras resistentes a los sismos'),
	 
	(2, 'Centro de Alerta Volcánica (CAV)',
	'CAV se dedica a la evacuación segura de áreas cercanas a los volcanes y en la educación pública sobre los riesgos volcánicos.'),
	  
	(3, 'Institución de Desastres por Tsunami (IDT)',
	'IDT se enfoca en la investigación y el seguimiento de tsunamis, incluyendo la detección temprana, la predicción de impacto y la preparación para emergencias. Colaboran con comunidades costeras para desarrollar planes de evacuación y concienciación.'),
	   
	(4, 'Centro de Recuperación de Ecosistemas Post-Incendio Forestal (CREPIF)',
	 'CREPIF se dedica a la restauración de áreas naturales después de incendios forestales, a través de la protección del suelo, reforestación, y la conservación de la biodiversidad'),
	   
	(5, 'Institución de Gestión de Inundaciones (IGI)',
	 'IGI es una institución encargada de la gestión de inundaciones en todo el país. Su misión es monitorear ríos y cuerpos de agua, coordinar la evacuación de áreas afectadas, emitir alertas tempranas y proporcionar ayuda a las comunidades inundadas'),
		
	(6, 'Institución de Prevención de Derrumbes y Deslizamiento de Tierra (IPDDT)',
	 'es una entidad especializada en la prevención y mitigación de derrumbes y deslizamientos de tierra en áreas montañosas y colinas. Implementan sistemas de monitoreo de la estabilidad del suelo y colaboran con las comunidades en la planificación de medidas preventivas');
		 
INSERT INTO emergency (id_emergency, emergency_name, emergency_location, 
					   emergency_type, statement_date, id_state)
VALUES
	(1, 'Incendio forestal en comuna Lautaro', 'Lautaro, Región de la Araucanía',
	'incendio', '2023-10-15', 1),
	(2, 'Incendio forestal en Viña del Mar', 'Viña del Mar, Región de Valparaíso',
	'incendio', '2023-10-14', 1),
	(3, 'Erupción Volcán Villarica', 'Región de la Araucanía', 'erupcion', '2023-10-16', 1),
	(4, 'Erupción complejo volcánico Puyehue', 'Región de los Ríos', 'erupcion','2023-10-12', 1),
	(5, 'Terremoto de Iquique', 'Región de Tarapacá', 'terremoto/sismo', '2023-10-15', 1),
	(6, 'Terremoto Tocopilla', 'Región de Antofagasta', 'terremoto/sismo', '2023-10-13', 1),
	(7, 'Derrumbe Santiago', 'Región Metropolitana', 'derrumbe', '2023-10-09', 1),
	(8, 'Derrumbes en Illapel', 'Región de Coquimbo', 'derrumbe', '2023-10-10', 1),
	(9, 'Tsunami en Antofagasta', 'Región de Antofagasta', 'tsunami', '2023-10-08', 1),
	(10, 'Tsunami en Constitución', 'Región de El Maule', 'tsunami', '2023-10-08', 1),
	(11, 'Aluvión de Villa Santa Lucía', 'Chaitén, Región de Los Lagos', 
	 'inundación', '2023-10-13', 1),
	(12, 'Aluvión del Biobío', 'Región del Biobío', 'inundación', '2023-10-14', 1);

INSERT INTO emergency_institution (id_emergency, id_institution)
VALUES
	(1,4), (2,4), (3,2), (4,2), (5,1), (6,1), (7,6), (8,6), (9,3), (10,3), (11,5), (12,5);
	
INSERT INTO emergency_task (id_emergency, id_task)
VALUES
	(1,1), (2,3), (3,6), (4,5), (5,9), (6,2), (7,11), 
	(8,4), (9,7), (10,12), (11,8), (12,10);
	
	
INSERT INTO rol (id_rol, rol_name)
VALUES
	(1, 'Voluntario'),
	(2, 'Coordinador');
	
INSERT INTO profile (id_profile, photo, first_name, first_lastname,
					 description, gender, birthday)
VALUES
	(1, 'enlace', 'Aracely', 'Castro', 'Administradora de la App', 'F', '2000-01-01'),
	(2, 'enlace', 'Vicente', 'Mieres', 'Administrador de la App', 'M', '2000-01-01'),
	(3, 'enlace', 'Branco', 'García', 'Administrador de la App', 'M', '2000-01-01'),
	(4, 'enlace', 'Benjamin', 'Canales', 'Administrador de la App', 'M', '2000-01-01'),
	(5, 'enlace', 'Daniel', 'Eguiluz', 'Administrador de la App', 'M', '2000-01-01'),
	(6, 'enlace', 'Humberto', 'Salas', 'Ayudando con erupciones volcanicas', 'M', '1998-04-12'),
	(7, 'enlace', 'Carla', 'Muñoz', 'Contratacando incendios', 'F', '1993-02-05'),
	(8, 'enlace', 'Sofia', 'Carvajal', 'Resguardando tras inundaciones', 'F', '1990-02-10');

	/*
INSERT INTO "user" (id_user, username, password, id_profile, id_rol, id_institution,id,firstname,lastname,role)
VALUES
	(1, 'AracelyC', '1234', 1, 2, 1, 1,'o','l',1),
	(2, 'VicenteM', 'holaMundo', 2, 2, 3, 2,'o','l',1),
	(3, 'BrancoG', 'password', 3, 2, 4, 3,'o','l',1),
	(4, 'BenjaC', 'sql', 4, 2, 5, 4,'o','l',1),
	(5, 'DanielE', '4321', 5, 2, 6, 5,'o','l',1),
	(6, 'HumbertoS', 'contraseña', 6, 1, 2, 6,'o','l',1),
	(7, 'CarlaM', 'contraseña1234', 7, 1, 4, 7,'o','l',1),
	(8, 'SofiaC', 'contraseña2023', 8, 1, 5, 8,'o','l',1);
*/
INSERT INTO ability (id_ability, ability_name, ability_description)
VALUES 
	(1, 'Liderazgo', 'Ser capaz de guiar a equipos, coordinar esfuerzos y mantener la calma en situaciones caóticas'),
	(2, 'Adaptabilidad', 'Poder enfrentar situaciones dinámicas e impredecibles provocadas por los desastres naturales'),
	(3, 'Trabajo en equipo', 'Tener la capacidad de colaborar efectivamente con otro voluntario'),
	(4, 'Habilidades de busqueda y rescate', 'Ser capaz de buscar heridos y rescatar personas afectadas'),
	(5, 'Apoyo psicológico', 'Lidiar con el estrés y proporcionar apoyo emocional a las víctimas del desastre'),
	(6, 'Habilidades de atención médica', 'Saber proporcionar primeros auxilios y atención médica de emergencia');

/*
INSERT INTO user_ability (id_user, id_ability)
VALUES
	(1,2),(1,3),(1,5),(2,1),(2,4),(2,6),(3,1),(3,2),(3,6),(4,5),(4,6),
	(5,3),(5,6),(6,2),(6,4),(6,6),(7,1),(7,3),(7,5),(7,6),(8,1),(8,2),
	(8,4),(8,5),(8,6);
*/

INSERT INTO emergency_ability (id_emergency, id_ability)
VALUES
	(1,3),(1,6),(2,1),(2,3),(2,4),(3,2),(3,4),(3,6),(4,1),(4,2),(4,6),
	(5,2),(5,3),(5,4),(6,1),(6,4),(7,4),(7,5),(8,3),(8,5),(9,1),(9,5),
	(10,3),(10,5),(11,2),(11,3),(11,5),(12,2),(12,3),(12,4);