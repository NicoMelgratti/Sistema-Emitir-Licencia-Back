INSERT INTO tarifario_licencia (clase_licencia, vigencia_anios, costo) VALUES
                                                                           ('A', 5, 29000.0), ('A', 4, 25000.0), ('A', 3, 21000.0), ('A', 1, 16000.0),
                                                                           ('B', 5, 31000.0), ('B', 4, 27000.0), ('B', 3, 22000.0), ('B', 1, 16000.0),
                                                                           ('C', 5, 35000.0), ('C', 4, 31000.0), ('C', 3, 26000.0), ('C', 1, 18000.0),
                                                                           ('E', 5, 39000.0), ('E', 4, 34000.0), ('E', 3, 29000.0), ('E', 1, 21000.0),
                                                                           ('G', 5, 29000.0), ('G', 4, 25000.0), ('G', 3, 21000.0), ('G', 1, 16000.0);

INSERT INTO usuarios (nombre, apellido, mail, password) VALUES ('Admin', 'Sistema', 'admin@municipio.gob', '$2b$10$7ztwYhB3ktuLIzQ23mDY9u0Q7Evuk5I/htT5CGDfKuWt7/YztL90y');
INSERT INTO usuario_roles (usuario_id, rol) VALUES (1, 'SUPER_USER');