-- _records.sql
INSERT INTO pacienti (id, nume, tip, rasa)
VALUES 
    (1, 'Max', 'Dog', 'Labrador Retriever'),
    (2, 'Luna', 'Cat', 'Siamese'),
    (3, 'Rex', 'Dog', 'German Shepherd'),
    (4, 'Bella', 'Dog', 'Golden Retriever'),
    (5, 'Milo', 'Dog', 'French Bulldog'),
    (6, 'Chloe', 'Cat', 'Persian'),
    (7, 'Rocky', 'Dog', 'Rottweiler'),
    (8, 'Mia', 'Dog', 'Cocker Spaniel'),
    (9, 'Simba', 'Cat', 'Bengal'),
    (10, 'Oliver', 'Dog', 'Shih Tzu');

INSERT INTO programari (id, id_pacient, data, ora)
VALUES 
    (1, 1, '2023-05-17', '09:00:00'),
    (2, 3, '2023-05-18', '14:30:00'),
    (3, 2, '2023-05-19', '11:15:00'),
    (4, 4, '2023-05-20', '16:45:00'),
    (5, 5, '2023-05-21', '10:30:00'),
    (6, 1, '2023-05-22', '15:00:00'),
    (7, 2, '2023-05-23', '12:45:00'),
    (8, 3, '2023-05-24', '13:30:00'),
    (9, 5, '2023-05-25', '09:45:00'),
    (10, 4, '2023-05-26', '11:00:00');

INSERT INTO consultatii (id, id_pacient, data, ora)
VALUES 
    (1, 1, '2023-05-17', '09:00:00'),
    (2, 3, '2023-05-18', '14:30:00'),
    (3, 2, '2023-05-19', '11:15:00'),
    (4, 4, '2023-05-20', '16:45:00'),
    (5, 5, '2023-05-21', '10:30:00'),
    (6, 1, '2023-05-22', '15:00:00'),
    (7, 2, '2023-05-23', '12:45:00'),
    (8, 3, '2023-05-24', '13:30:00'),
    (9, 5, '2023-05-25', '09:45:00'),
    (10, 4, '2023-05-26', '11:00:00');

INSERT INTO medicamente (id, nume, pret)
VALUES 
    (1, 'HeartGard', 25.99),
    (2, 'Frontline Plus', 39.99),
    (3, 'Advantage II', 29.99),
    (4, 'Rimadyl', 45.99),
    (5, 'Cosequin', 34.99),
    (6, 'ProHeart 6', 55.99),
    (7, 'Bravecto', 49.99),
    (8, 'Trifexis', 59.99),
    (9, 'Interceptor Plus', 42.99),
    (10, 'Apexa', 36.99),
    (11, 'Seresto', 59.99),
    (12, 'Simparica Trio', 45.99),
    (13, 'Deramaxx', 39.99),
    (14, 'Revolution', 29.99),
    (15, 'Comfortis', 34.99);


INSERT INTO servicii (id, nume, pret)
VALUES 
  (1, 'Basic Check-up', 50.99),
  (2, 'Vaccinations', 35.50),
  (3, 'Dental Cleaning', 75.25),
  (4, 'Spay/Neuter', 120.80),
  (5, 'X-ray Examination', 95.00),
  (6, 'Microchipping', 60.75),
  (7, 'Nail Trim', 20.40),
  (8, 'Allergy Testing', 90.50),
  (9, 'Ultrasound', 115.25),
  (10, 'Emergency Care', 150.20);

INSERT INTO retete (id, id_consultatie, id_medicament, id_serviciu)
VALUES 
  (1, 1, 3, NULL),
  (2, 2, NULL, 7),
  (3, 3, 5, NULL),
  (4, 4, 1, NULL),
  (5, 5, NULL, 2),
  (6, 6, 7, NULL),
  (7, 7, NULL, 4),
  (8, 8, 9, NULL),
  (9, 9, NULL, 6),
  (10, 10, 12, NULL);

INSERT INTO angajati (id, nume, tip, salariu)
VALUES 
  (1, 'Dr. Ion Popescu', 'Veterinar', 8000.00),
  (2, 'Dr. Ana Ionescu', 'Veterinar', 7500.00),
  (3, 'Dr. Andrei Radu', 'Veterinar', 7800.00),
  (4, 'Elena Stan', 'Asistent Veterinar', 4000.00),
  (5, 'Mihai Dumitru', 'Receptioner', 3200.00),
  (6, 'Maria Gheorghe', 'Asistent Ingrijire Animale', 3500.00),
  (7, 'George Popa', 'Specialist Marketing', 4000.00),
  (8, 'Ioana Vasilescu', 'Analyst Suport IT', 4200.00),
  (9, 'Alexandru Moraru', 'Manager de Practica', 6000.00),
  (10, 'Andreea Radulescu', 'Asistent Administrativ', 2800.00);


INSERT INTO program_angajati (id, id_angajat, data, ora_inceput, ora_sfarsit)
VALUES 
  (1, 1, '2023-05-17', '09:00:00', '17:00:00'),
  (2, 2, '2023-05-17', '08:30:00', '16:30:00'),
  (3, 3, '2023-05-17', '09:30:00', '17:30:00'),
  (4, 4, '2023-05-18', '10:00:00', '18:00:00'),
  (5, 5, '2023-05-18', '08:00:00', '16:00:00'),
  (6, 6, '2023-05-18', '11:00:00', '19:00:00'),
  (7, 7, '2023-05-19', '09:00:00', '17:00:00'),
  (8, 8, '2023-05-19', '08:30:00', '16:30:00'),
  (9, 9, '2023-05-19', '09:30:00', '17:30:00'),
  (10, 10, '2023-05-20', '10:00:00', '18:00:00');

INSERT INTO consultatii_angajati (id_angajat, id_consultatie)
VALUES 
  (1, 1),
  (2, 5),
  (3, 7);

INSERT INTO consultatii_angajati (id_angajat, id_consultatie)
VALUES 
  (2, 9),
  (4, 10);

INSERT INTO consultatii_angajati (id_angajat, id_consultatie)
VALUES 
  (5, 3),
  (5, 6),
  (6, 9);

INSERT INTO consultatii_angajati (id_angajat, id_consultatie)
VALUES 
  (7, 5),
  (8, 8),
  (9, 2);

INSERT INTO consultatii_angajati (id_angajat, id_consultatie)
VALUES 
  (10, 4);
