CREATE TABLE tutorias.docente (
    id_docente INT PRIMARY KEY,
    nom_docente VARCHAR(10),
    ape_docente VARCHAR(15),
    correo VARCHAR(30),
    telefono INT,
    registro_doc TIMESTAMP
);

CREATE TABLE tutorias.estudiantes (
    id_estudiante INT PRIMARY KEY,
    nom_estudiante VARCHAR(10),
    ape_estudiante VARCHAR(15),
    correo VARCHAR(30),
    telefono INT,
    registro_est TIMESTAMP
);

CREATE TABLE tutorias.materia (
    id_materia INT PRIMARY KEY,
    nombre_materia VARCHAR(15)
);

CREATE TABLE tutorias.tutorias (
    id_tutoria INT PRIMARY KEY,
    tema VARCHAR(15),
    fecha DATE,
    hora TIME,
    id_docente INT,
    id_estudiante INT,
    FOREIGN KEY (id_docente) REFERENCES docente(id_docente)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id_estudiante)
        ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE tutorias.notas (
    id_nota INT PRIMARY KEY,
    id_materia INT,
    nota FLOAT,
    id_estudiante INT,
    FOREIGN KEY (id_materia) REFERENCES materia(id_materia)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id_estudiante)
        ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE tutorias.docente_materia (
    id_docente INT,
    id_materia INT,
    PRIMARY KEY (id_docente, id_materia),
    FOREIGN KEY (id_docente) REFERENCES docente(id_docente)
        ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (id_materia) REFERENCES materia(id_materia)
        ON UPDATE CASCADE ON DELETE CASCADE
);

ALTER TABLE tutorias.docente MODIFY telefono BIGINT;
ALTER TABLE tutorias.estudiantes MODIFY telefono BIGINT;

INSERT INTO tutorias.docente (id_docente, nom_docente, ape_docente, correo, telefono, registro_doc) VALUES
(1, 'Roberto', 'Mendoza', 'roberto.mendoza@uni.edu', '3001234567', NOW()),
(2, 'Elena', 'Vasquez', 'elena.vasquez@uni.edu', '3002345678', NOW()),
(3, 'Miguel', 'Rios', 'miguel.rios@uni.edu', '3003456789', NOW()),
(4, 'Carmen', 'Ortega', 'carmen.ortega@uni.edu', '3004567890', NOW()),
(5, 'Javier', 'Silva', 'javier.silva@uni.edu', '3005678901', NOW()),
(6, 'Isabel', 'Paredes', 'isabel.paredes@uni.edu', '3006789012', NOW()),
(7, 'Ricardo', 'Navarro', 'ricardo.navarro@uni.edu', '3007890123', NOW()),
(8, 'Gabriela', 'Campos', 'gabriela.campos@uni.edu', '3008901234', NOW()),
(9, 'Fernando', 'Cordoba', 'fernando.cordoba@uni.edu', '3009012345', NOW()),
(10, 'Patricia', 'Miranda', 'patricia.miranda@uni.edu', '3010123456', NOW()),
(11, 'Hector', 'Vega', 'hector.vega@uni.edu', '3011234567', NOW()),
(12, 'Adriana', 'Fernandez', 'adriana.fernandez@uni.edu', '3012345678', NOW()),
(13, 'Raul', 'Nunez', 'raul.nunez@uni.edu', '3013456789', NOW()),
(14, 'Silvia', 'Mendoza', 'silvia.mendoza@uni.edu', '3014567890', NOW()),
(15, 'Eduardo', 'Rios', 'eduardo.rios@uni.edu', '3015678901', NOW()),
(16, 'Veronica', 'Ortega', 'veronica.ortega@uni.edu', '3016789012', NOW()),
(17, 'Roberto', 'Silva', 'roberto.silva@uni.edu', '3017890123', NOW()),
(18, 'Mariana', 'Paredes', 'mariana.paredes@uni.edu', '3018901234', NOW()),
(19, 'Carlos', 'Navarro', 'carlos.navarro@uni.edu', '3019012345', NOW()),
(20, 'Laura', 'Campos', 'laura.campos@uni.edu', '3020123456', NOW()),
(21, 'Andres', 'Cordoba', 'andres.cordoba@uni.edu', '3021234567', NOW()),
(22, 'Natalia', 'Miranda', 'natalia.miranda@uni.edu', '3022345678', NOW()),
(23, 'Diego', 'Vega', 'diego.vega@uni.edu', '3023456789', NOW()),
(24, 'Sofia', 'Fernandez', 'sofia.fernandez@uni.edu', '3024567890', NOW()),
(25, 'Juan', 'Nunez', 'juan.nunez@uni.edu', '3025678901', NOW()),
(26, 'Maria', 'Mendoza', 'maria.mendoza@uni.edu', '3026789012', NOW()),
(27, 'Pedro', 'Rios', 'pedro.rios@uni.edu', '3027890123', NOW()),
(28, 'Ana', 'Ortega', 'ana.ortega@uni.edu', '3028901234', NOW()),
(29, 'Luis', 'Silva', 'luis.silva@uni.edu', '3029012345', NOW()),
(30, 'Carolina', 'Paredes', 'carolina.paredes@uni.edu', '3030123456', NOW());

ALTER TABLE tutorias.estudiantes MODIFY telefono VARCHAR(15);
ALTER TABLE tutorias.docente MODIFY telefono VARCHAR(15);

INSERT INTO tutorias.estudiantes 
(id_estudiante, nom_estudiante, ape_estudiante, correo, telefono, registro_est) VALUES
(1, 'Alejandro', 'Gutierrez', 'alejandro.gutierrez@uni.edu', '3101234567', NOW()),
(2, 'Valentina', 'Rojas', 'valentina.rojas@uni.edu', '3102345678', NOW()),
(3, 'Santiago', 'Mendoza', 'santiago.mendoza@uni.edu', '3103456789', NOW()),
(4, 'Isabella', 'Perez', 'isabella.perez@uni.edu', '3104567890', NOW()),
(5, 'Mateo', 'Hernandez', 'mateo.hernandez@uni.edu', '3105678901', NOW()),
(6, 'Camila', 'Garcia', 'camila.garcia@uni.edu', '3106789012', NOW()),
(7, 'Nicolas', 'Torres', 'nicolas.torres@uni.edu', '3107890123', NOW()),
(8, 'Sofia', 'Ramirez', 'sofia.ramirez@uni.edu', '3108901234', NOW()),
(9, 'Samuel', 'Diaz', 'samuel.diaz@uni.edu', '3109012345', NOW()),
(10, 'Emma', 'Vargas', 'emma.vargas@uni.edu', '3110123456', NOW()),
(11, 'Daniel', 'Castro', 'daniel.castro@uni.edu', '3111234567', NOW()),
(12, 'Lucia', 'Ortega', 'lucia.ortega@uni.edu', '3112345678', NOW()),
(13, 'Jeronimo', 'Silva', 'jeronimo.silva@uni.edu', '3113456789', NOW()),
(14, 'Mariana', 'Navarro', 'mariana.navarro@uni.edu', '3114567890', NOW()),
(15, 'David', 'Rios', 'david.rios@uni.edu', '3115678901', NOW()),
(16, 'Valeria', 'Campos', 'valeria.campos@uni.edu', '3116789012', NOW()),
(17, 'Sebastian', 'Fernandez', 'sebastian.fernandez@uni.edu', '3117890123', NOW()),
(18, 'Gabriela', 'Mora', 'gabriela.mora@uni.edu', '3118901234', NOW()),
(19, 'Tomas', 'Cordoba', 'tomas.cordoba@uni.edu', '3119012345', NOW()),
(20, 'Renata', 'Vega', 'renata.vega@uni.edu', '3120123456', NOW()),
(21, 'Juan', 'Paredes', 'juan.paredes@uni.edu', '3121234567', NOW()),
(22, 'Antonella', 'Nunez', 'antonella.nunez@uni.edu', '3122345678', NOW()),
(23, 'Emiliano', 'Miranda', 'emiliano.miranda@uni.edu', '3123456789', NOW()),
(24, 'Sara', 'Lopez', 'sara.lopez@uni.edu', '3124567890', NOW()),
(25, 'Miguel', 'Martinez', 'miguel.martinez@uni.edu', '3125678901', NOW()),
(26, 'Catalina', 'Gomez', 'catalina.gomez@uni.edu', '3126789012', NOW()),
(27, 'Joaquin', 'Suarez', 'joaquin.suarez@uni.edu', '3127890123', NOW()),
(28, 'Daniela', 'Acosta', 'daniela.acosta@uni.edu', '3128901234', NOW()),
(29, 'Andres', 'Bermudez', 'andres.bermudez@uni.edu', '3129012345', NOW()),
(30, 'Salome', 'Santos', 'salome.santos@uni.edu', '3130123456', NOW());

INSERT INTO tutorias.materia (id_materia, nombre_materia) VALUES
(1, 'Cálculo Diferencial'),
(2, 'Física Mecánica'),
(3, 'Química General'),
(4, 'Biología Celular'),
(5, 'Programación I'),
(6, 'Bases de Datos'),
(7, 'Redes de Computadores'),
(8, 'Estadística Descriptiva'),
(9, 'Algoritmos y Estructuras'),
(10, 'Ética Profesional'),
(11, 'Cálculo Integral'),
(12, 'Física Electromagnetismo'),
(13, 'Química Orgánica'),
(14, 'Genética'),
(15, 'Programación II'),
(16, 'Bases de Datos Avanzadas'),
(17, 'Seguridad Informática'),
(18, 'Estadística Inferencial'),
(19, 'Análisis de Algoritmos'),
(20, 'Deontología');

INSERT INTO tutorias.docente_materia (id_docente, id_materia) VALUES
(1, 1), (1, 11),    
(2, 2), (2, 12),    
(3, 3), (3, 13),    
(4, 4), (4, 14),    
(5, 5), (5, 15),    
(6, 6), (6, 16),    
(7, 7), (7, 17),    
(8, 8), (8, 18),    
(9, 9), (9, 19),    
(10, 10), (10, 20), 
(11, 1), (11, 8),   
(12, 2), (12, 7),   
(13, 3), (13, 4),   
(14, 4), (14, 10),  
(15, 5), (15, 6),   
(16, 6), (16, 7),   
(17, 7), (17, 17),  
(18, 8), (18, 9),   
(19, 9), (19, 5),   
(20, 10), (20, 1),  
(21, 1), (21, 5), (21, 9),   
(22, 2), (22, 7), (22, 17),  
(23, 3), (23, 4), (23, 14),  
(24, 4), (24, 10), (24, 20), 
(25, 5), (25, 6), (25, 16),  
(26, 6), (26, 7), (26, 17),  
(27, 7), (27, 17), (27, 9),  
(28, 8), (28, 18), (28, 1),  
(29, 9), (29, 5), (29, 19),  
(30, 10), (30, 20), (30, 4); 

INSERT INTO tutorias.tutorias (id_tutoria, tema, fecha, hora, id_docente, id_estudiante) VALUES
(1, 'Límites y Derivadas', '2024-03-15', '10:00:00', 1, 1),
(2, 'Leyes de Newton', '2024-03-15', '11:00:00', 2, 2),
(3, 'Balanceo de Ecuaciones', '2024-03-16', '09:30:00', 3, 3),
(4, 'ADN y ARN', '2024-03-16', '14:00:00', 4, 4),
(5, 'Fundamentos de Python', '2024-03-18', '15:00:00', 5, 5),
(6, 'Consultas SQL Básicas', '2024-03-18', '08:00:00', 6, 6),
(7, 'Configuración TCP/IP', '2024-03-19', '16:00:00', 7, 7),
(8, 'Distribuciones de Probabilidad', '2024-03-19', '13:00:00', 8, 8),
(9, 'Análisis de Algoritmos', '2024-03-20', '09:00:00', 9, 9),
(10, 'Ética en la Investigación', '2024-03-20', '10:30:00', 10, 10),
(11, 'Integrales Definidas', '2024-03-21', '11:30:00', 11, 11),
(12, 'Ondas y Sonido', '2024-03-21', '12:00:00', 12, 12),
(13, 'Compuestos Orgánicos', '2024-03-22', '08:30:00', 13, 13),
(14, 'Microorganismos', '2024-03-22', '09:45:00', 14, 14),
(15, 'Estructuras de Control', '2024-03-25', '14:15:00', 15, 15),
(16, 'Normalización de BD', '2024-03-25', '16:20:00', 16, 16),
(17, 'Protocolos de Enrutamiento', '2024-03-26', '10:00:00', 17, 17),
(18, 'Análisis de Regresión', '2024-03-26', '11:00:00', 18, 18),
(19, 'Complejidad Temporal', '2024-03-27', '15:40:00', 19, 19),
(20, 'Bioética', '2024-03-27', '16:30:00', 20, 20),
(21, 'Funciones Trigonométricas', '2024-03-28', '09:00:00', 21, 21),
(22, 'Campos Electromagnéticos', '2024-03-28', '13:30:00', 22, 22),
(23, 'Termodinámica Química', '2024-03-29', '08:00:00', 23, 23),
(24, 'Clasificación Animal', '2024-03-29', '10:00:00', 24, 24),
(25, 'Programación Orientada a Objetos', '2024-04-01', '11:00:00', 25, 25),
(26, 'Modelo Entidad-Relación', '2024-04-01', '15:30:00', 26, 26),
(27, 'VLANs y Switching', '2024-04-02', '17:00:00', 27, 27),
(28, 'Pruebas de Hipótesis', '2024-04-02', '09:15:00', 28, 28),
(29, 'Teoría de Grafos', '2024-04-03', '14:50:00', 29, 29),
(30, 'Ética Laboral', '2024-04-03', '13:00:00', 30, 30);

INSERT INTO tutorias.notas (id_nota, id_materia, nota, id_estudiante) VALUES
(1, 1, 4.2, 1),
(2, 2, 3.9, 2),
(3, 3, 4.1, 3),
(4, 4, 3.6, 4),
(5, 5, 4.5, 5),
(6, 6, 3.8, 6),
(7, 7, 4.7, 7),
(8, 8, 3.4, 8),
(9, 9, 4.3, 9),
(10, 10, 3.7, 10),
(11, 11, 4.0, 11),
(12, 12, 4.5, 12),
(13, 13, 3.5, 13),
(14, 14, 4.4, 14),
(15, 15, 4.8, 15),
(16, 16, 3.2, 16),
(17, 17, 4.2, 17),
(18, 18, 3.6, 18),
(19, 19, 4.6, 19),
(20, 20, 3.3, 20),
(21, 1, 4.1, 21),
(22, 2, 3.8, 22),
(23, 3, 4.4, 23),
(24, 4, 3.1, 24),
(25, 5, 4.7, 25),
(26, 6, 3.5, 26),
(27, 7, 4.0, 27),
(28, 8, 3.4, 28),
(29, 9, 4.3, 29),
(30, 10, 3.6, 30),
(31, 11, 4.2, 1),
(32, 12, 3.9, 2),
(33, 13, 4.5, 3),
(34, 14, 3.7, 4),
(35, 15, 4.6, 5),
(36, 16, 3.8, 6),
(37, 17, 4.1, 7),
(38, 18, 3.5, 8),
(39, 19, 4.4, 9),
(40, 20, 3.6, 10);

select * from tutorias.docente;
select * from tutorias.notas;
select * from tutorias.tutorias;
select * from tutorias.materia;
