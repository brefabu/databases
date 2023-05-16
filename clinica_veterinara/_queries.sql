-- Name: _queries.sql
SELECT * FROM pacienti;
SELECT * FROM programari;
SELECT * FROM consultatii;
SELECT * FROM medicamente;
SELECT * FROM servicii;
SELECT * FROM retete;
SELECT * FROM angajati;
SELECT * FROM program_angajati;
SELECT * FROM consultatii_angajati;

CREATE VIEW consultation_details AS
SELECT c.id, c.data, c.ora, p.nume, p.tip, p.rasa
FROM consultatii c
JOIN pacienti p ON c.id_pacient = p.id;

CREATE VIEW consultation_costs AS
SELECT c.id, c.data, c.ora, COALESCE(SUM(m.pret), 0) AS medication_cost, COALESCE(SUM(s.pret), 0) AS service_cost,
       COALESCE(SUM(m.pret), 0) + COALESCE(SUM(s.pret), 0) AS total_cost
FROM consultatii c
LEFT JOIN retete r ON c.id = r.id_consultatie
LEFT JOIN medicamente m ON r.id_medicament = m.id
LEFT JOIN servicii s ON r.id_serviciu = s.id
GROUP BY c.id, c.data, c.ora;

CREATE VIEW employee_schedule AS
SELECT pa.id_angajat, pa.data, pa.ora_inceput, pa.ora_sfarsit, c.id AS consultatie_id, c.data AS consultatie_data, c.ora AS consultatie_ora
FROM program_angajati pa
JOIN consultatii_angajati ca ON pa.id_angajat = ca.id_angajat
JOIN consultatii c ON ca.id_consultatie = c.id;


