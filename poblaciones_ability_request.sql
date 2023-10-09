--POBLACION DE ENTIDADES DANY

--ABILITY ANTIGUA
/*
INSERT INTO ability (ability_name, ability_description)
VALUES
    ('Reanimación Cardiopulmonar (RCP)', 'Capacidad para realizar RCP de manera efectiva.'),
    ('Extinción de Incendios', 'Habilidad para combatir y extinguir incendios.'),
    ('Rescate en Alturas', 'Capacidad para realizar rescates en situaciones de altura.'),
    ('Manejo de Equipos de Respiración Autónoma', 'Experiencia en el uso de equipos de respiración autónoma.'),
    ('Primeros Auxilios', 'Conocimiento y habilidades en la prestación de primeros auxilios en situaciones de emergencia.');
    */

--ABILITY
INSERT INTO ability (id_ability, ability_name, ability_description)
VALUES 
	(1, 'Liderazgo', 'Ser capaz de guiar a equipos, coordinar esfuerzos y mantener la calma en situaciones caóticas'),
	(2, 'Adaptabilidad', 'Poder enfrentar situaciones dinámicas e impredecibles provocadas por los desastres naturales'),
	(3, 'Trabajo en equipo', 'Tener la capacidad de colaborar efectivamente con otro voluntario'),
	(4, 'Habilidades de busqueda y rescate', 'Ser capaz de buscar heridos y rescatar personas afectadas'),
	(5, 'Apoyo psicológico', 'Lidiar con el estrés y proporcionar apoyo emocional a las víctimas del desastre'),
	(6, 'Habilidades de atención médica', 'Saber proporcionar primeros auxilios y atención médica de emergencia');

-- STATE
INSERT INTO state (id_state, state_name, state_description)
VALUES
    (1, 'Sin asignar', 'La tarea o emergencia se ha definido pero no está en curso'),
    (2, 'En curso', 'La tarea o emergencia actualmente se está llevando a cabo'),
    (3, 'Finalizada', 'La tarea o emergencia se ha terminado de realizar');

-- TASK
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

-- REQUEST y TASK-REQUEST basado en los TASK de arriba del dbPostData.sql

-- REQUEST
INSERT INTO request (id_request, request_name, request_description)
VALUES
    (1, 'Equipo médico', 'Equipo médico necesario para la tarea de "Atender heridos".'),
    (2, 'Herramientas de construcción', 'Herramientas de construcción necesarias para la tarea de "Extraer escombros".'),
    (3, 'Extintores', 'Extintores necesarios para la tarea de "Apagar fuego".'),
    (4, 'Linternas', 'Linternas necesarias para la tarea de "Guiar a lugar seguro".'),
    (5, 'Señales de SOS', 'Señales de SOS necesarias para la tarea de "Realizar SOS".'),
    (6, 'Material de cubierta para conductos de ventilación', 'Material necesario para asegurar los conductos de ventilación en situaciones críticas.');
    (7, 'Cuerdas', 'Cuerdas necesarias para la tarea de "Ayudar a subir a un lugar alto".'),
    (8, 'Vehículos de transporte', 'Vehículos de transporte necesarios para la tarea de "Ayudar a evacuar las casas".'),
    (9, 'Equipamiento de comunicación', 'Equipamiento de comunicación necesario para la tarea de "Establecer centro de comandos".'),
    (10, 'Alimentos', 'Alimentos necesarios para la tarea de "Suministrar alimentos".'),
    (11, 'Kits de evaluación de daños', 'Kits de evaluación de daños necesarios para la tarea de "Evaluar daños".'),
    (12, 'Material de apoyo psicológico', 'Material de apoyo psicológico necesario para la tarea de "Atender psicológicamente".');

-- TASK-REQUEST
INSERT INTO task_request (id_task, id_request)
VALUES
    (1, 1),  -- Equipamiento médico para la tarea "Atender heridos".
    (2, 2),  -- Herramientas de construcción para la tarea "Extraer escombros".
    (3, 3),  -- Extintores para la tarea "Apagar fuego".
    (4, 4),  -- Linternas para la tarea "Guiar a lugar seguro".
    (5, 5),  -- Señales de SOS para la tarea "Realizar SOS".
    (6, 6),  -- Material de cubierta para conductos de ventilación para la tarea "Cubrir conductos de ventilación".
    (7, 7),  -- Cuerdas para la tarea "Ayudar a subir a un lugar alto".
    (8, 8),  -- Vehículos de transporte para la tarea "Ayudar a evacuar las casas".
    (9, 9),  -- Equipamiento de comunicación para la tarea "Establecer centro de comandos".
    (10, 10),  -- Alimentos para la tarea "Suministrar alimentos".
    (11, 11),  -- Kits de evaluación de daños para la tarea "Evaluar daños".
    (12, 12);  -- Material de apoyo psicológico para la tarea "Atender psicológicamente".
