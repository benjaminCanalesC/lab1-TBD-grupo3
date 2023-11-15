-- eliminar tabla de direcciones
DROP TABLE addresses;

-- crear tabla de direcciones
CREATE TABLE addresses (
  id_address SERIAL PRIMARY KEY,
  address VARCHAR(255) NOT NULL,
  latitude FLOAT NOT NULL,
  longitude FLOAT NOT NULL
);

-- poblar la tabla de direcciones
INSERT INTO addresses (id_address, address, latitude, longitude)
VALUES
  (1, 'Caupolicán 1027, Concepción, Bío Bío', -73.0547538041757, -36.821393959657435),
  (2,'Avda. Fco de Aguirre 170, 1710156 La Serena, Coquimbo', -71.25461346356609, -29.90545603158812),
  (3, 'Av. Carlos Condell 1127, 2261467 Quillota, Valparaíso', -71.24314311789601, -32.89143880250012),
  (4, 'C. Nizar 8809, San Bernardo, Región Metropolitana', -70.74877907552514, -33.66914744049816),
  (5, 'Dr. Manuel Barros Borgoño 340, Providencia, Región Metropolitana', -70.61747977739354, -33.431580375509526),
  (6, 'Gral. Pedro Lagos Marchant 1110, 1000187 Arica, Arica y Parinacota', -70.31187746273224, -18.475727169073984),
  (7, 'Independencia 640, 1000099 Arica, Arica y Parinacota', -70.31045352040502, -18.47447196422832),
  (8, 'Cerro Moreno 10500, 1262357 Antofagasta', -70.3926797337, -23.571606640754734),
  (9, 'Conferencia 1076, 8370569 Santiago, Región Metropolitana', -70.67478893135461, -33.462484966475095),
  (10,'Manuel de Amat 3138, 8370750 Santiago, Región Metropolitana',-70.67768678902719, -33.46849237489128),
  (11, 'El Valle 1294, San Bernardo, Región Metropolitana', -70.70928809087626, -33.572705313299025),
  (12, 'Maipú 1843, 4081865 Concepción, Bío Bío', -73.03691617719457, -36.81804455010238),
  (13, '10902 Los Almendros La Pintana, Región Metropolitana', -70.64430219087696, -33.56058374876691),
  (14, 'Pje. Benozzo Gozzoli 4339, San Joaquín, Región Metropolitana', -70.63028937553493, -33.496725522081356),
  (15 ,'Luis Beltrán 731, 9020841 Santiago, Pudahuel, Región Metropolitana', -70.75959567739277, -33.445750342297146),
  (16 ,'Mujica 301, 9200800 Cerrillos, Región Metropolitana', -70.71825279088014, -33.50358528718388),
  (17 ,'Federico Gana 3575, Macul, Región Metropolitana', -70.5951228890261, -33.48790802037042),
  (18 ,'El Mesías 3948, 1731947 La Serena, Coquimbo', -71.22865457573029, -29.88598263106388),
  (19 ,'Pje. Vallenar 2512, 1732932 La Serena, Coquimbo', -71.22717998922131, -29.879434620932617),
  (20 ,'Joaquín Prieto 1131, 4081368 Concepción, Bío Bío', -73.04981053301252,-36.815639021789565),
  (21 ,'Pje. Cinco 134, 4060831 Concepción, Bío Bío', -73.07152908883074, -36.81001301524118),
  (22 ,'José Domingo Cañas 510, 7750078 Ñuñoa, Región Metropolitana', -70.6245400178644, -33.45482036051855),
  (23 ,'Caupolicán 660, Providencia, Región Metropolitana', -70.62165556569133, -33.44738511181257),
  (24 ,'Pje. 11 de Septiembre 230, Mejillones, Antofagasta', -70.44292641837411, -23.099618075044457);
  
  -- agregar si es que no se tiene la extensión de postgis
  -- CREATE EXTENSION postgis;
  
  select * from addresses;
  
  -- agregar la columna para colocar la información georeferenciada
  ALTER TABLE addresses ADD COLUMN geom geometry(Point, 4326);
  
  -- poblar la columna de geom
  UPDATE addresses SET geom = ST_SetSRID(ST_MakePoint(latitude, longitude), 4326);
  
  