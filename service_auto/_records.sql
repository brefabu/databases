-- _records.sql
INSERT INTO mecanici VALUES 
(1, 'Popescu', 'Ion', 'Electronist', '0722222222', 'ion.popescu@gmail.com', 2000, '01.01.2010'),
(2, 'Ionescu', 'Vasile', 'Mecanic general', '0722222223', 'vasile.ionescu@gmail.com', 2000, '02.04.2012'), 
(3, 'Vasilescu', 'Mihai', 'Mecanic general', '0722222224', 'mihai.vasilescu@gmail.com', 2000, '03.04.2014'), 
(4, 'Gheorghe', 'Mihai', 'Mecanic general', '0722222225', 'mihai.gheorghe@gmail.com', 2000, '01.05.2017'), 
(5, 'Gheorghiu', 'Mihai', 'Mecanic general', '0722222226', 'mihai.gheorghiu@gmail.com', 2000, '05.02.2012'), 
(6, 'Smith', 'John', 'Mecanic motor', '1234567890', 'john.smith@gmail.com', 3000, '2022-01-15'),
(7, 'Johnson', 'Emily', 'Mecanic cutie viteze', '9876543210', 'emily.johnson@gmail.com', 3500, '2021-11-20'),
(8, 'Brown', 'Michael', 'Mecanic frane', '5555555555', 'michael.brown@gmail.com', 4000, '2023-02-10'),
(9, 'Anderson-Smith', 'Sarah', 'Mecanic tinichigie', '1112223334', 'sarah.andersonsmith@gmail.com', 3200, '2022-05-05'),
(10, 'Wilson', 'David', 'Mecanic vopsitorie', '9990001112', 'david.wilson@example.com', 2800, '2021-09-01');

INSERT INTO piese VALUES 
(1, 'Motor', 1000, 3),
(2, 'Filtru aer', 100, 15),
(3, 'Filtru ulei', 100, 15), 
(4, 'Filtru combustibil', 100, 15), 
(5, 'Filtru polen', 100, 15), 
(6, 'Filtru particule (DPF)', 3000, 4), 
(7, 'Tampon motor', 200, 15), 
(8, 'Galerie admisie', 3000, 2), 
(9, 'Ulei 5W30', 500, 10), 
(10, 'Ulei 5W40', 600, 10), 
(11, 'Ulei cutie viteze', 600, 10), 
(12, 'Ulei diferential', 800, 10);

INSERT INTO servicii VALUES 
(1, 'Schimbare ulei', 300),
(3, 'Schimbare ulei cutie viteze', 200),
(4, 'Schimbare ulei diferential', 400),
(5, 'Schimbare motor', 1000),
(6, 'Schimbare filtre', 200),
(7, 'Schimbare filtru DPF', 500),
(8, 'Schimbare tampon motor', 100),
(9, 'Revizie (filtre + ulei)', 500);,
(10, 'Vopsire auto', 4500);,
(11, 'Tinichigerie auto', 3500);,
(12, 'Reparare cutie viteze', 2500);

INSERT INTO clienti VALUES 
(1, 'Popescu', 'Vasile', '0722222232', 'vasile.popescu@gmail.com'),
(2, 'Ionescu', 'Ion', '0722222233', 'ion.ionescu@gmail.com'),
(3, 'Vasilescu', 'Vasile', '0722222234', 'vasile.vasilescu@gmail.com'),
(4, 'Gheorghe', 'Vasile', '0722222235', 'vasile.gheorghe@gmail.com'),
(5, 'Gheorghiu', 'Vasile', '0722222236', 'vasile.gheorghiu@gmail.com');

INSERT INTO masini VALUES (1, 'Dacia', 'Logan', 2009, 'B 01 AAA', 1); -- Revizie ( Schimbare ulei, filtre )
INSERT INTO masini VALUES (2, 'Dacia', 'Sandero', 2015, 'B 02 AAA', 2); -- Tampoane motor
INSERT INTO masini VALUES (3, 'Dacia', 'Duster', 2015, 'B 03 AAA', 3); -- Schimbare ulei
INSERT INTO masini VALUES (4, 'Chevrolet', 'Spark', 2013, 'B 04 AAA', 4); -- Schimbare motor
INSERT INTO masini VALUES (5, 'Chevrolet', 'Cruze', 2012, 'B 256 FBN', 5); -- Schimbare DPF

INSERT INTO devize VALUES 
(1, '01.01.2023', 2, 230142),
(2, '02.02.2023', 3, 253143),
(3, '03.03.2023', 4, 180124),
(4, '04.04.2023', 5, 330545),
(5, '05.05.2023', 1, 165542);

INSERT INTO devize_piese VALUES 
(1, 7, 4),
(2, 10, 1),
(3, 1, 1),
(4, 6, 1),
(5, 2, 1),
(5, 3, 1),
(5, 4, 1),
(5, 5, 1),
(5, 10, 1);

INSERT INTO devize_servicii VALUES 
(1, 8),
(2, 1),
(3, 5),
(4, 7),
(5, 9);

INSERT INTO devize_mecanici VALUES 
(1, 4),
(2, 5),
(3, 3),
(4, 1),
(5, 2);

INSERT INTO facturi VALUES 
(1, '01.01.2023', 2),
(2, '02.02.2023', 3),
(3, '03.03.2023', 4),
(4, '04.04.2023', 5),
(5, '05.05.2023', 1);