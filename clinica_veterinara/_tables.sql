-- Name: _tables.sql
CREATE TABLE pacienti (
    id  INTEGER(10) PRIMARY KEY,
    nume VARCHAR(255) NOT NULL,
    tip VARCHAR(255) NOT NULL,
    rasa VARCHAR(255) NOT NULL
);

CREATE TABLE programari (
    id  INTEGER(10) PRIMARY KEY,
    id_pacient INTEGER(10) NOT NULL,
    data DATE NOT NULL,
    ora TIME NOT NULL,
    FOREIGN KEY (id_pacient) REFERENCES pacienti(id)
);

CREATE TABLE consultatii (
    id  INTEGER(10) PRIMARY KEY,
    id_pacient INTEGER(10) NOT NULL,
    data DATE NOT NULL,
    ora TIME NOT NULL,
    FOREIGN KEY (id_pacient) REFERENCES pacienti(id)
);

CREATE TABLE medicamente (
    id  INTEGER(10) PRIMARY KEY,
    nume VARCHAR(255) NOT NULL,
    pret FLOAT(10) NOT NULL
);

CREATE TABLE servicii (
    id  INTEGER(10) PRIMARY KEY,
    nume VARCHAR(255) NOT NULL,
    pret FLOAT(10) NOT NULL
);

CREATE TABLE retete (
    id  INTEGER(10) PRIMARY KEY,
    id_consultatie INTEGER(10) NOT NULL,
    id_medicament INTEGER(10) NULL,
    id_serviciu INTEGER(10) NULL,
    FOREIGN KEY (id_consultatie) REFERENCES consultatii(id),
    FOREIGN KEY (id_medicament) REFERENCES medicamente(id),
    FOREIGN KEY (id_serviciu) REFERENCES servicii(id)
);

CREATE TABLE angajati (
    id  INTEGER(10) PRIMARY KEY,
    nume VARCHAR(255) NOT NULL,
    tip VARCHAR(255) NOT NULL,
    salariu FLOAT(10) NOT NULL
);

CREATE TABLE program_angajati (
    id  INTEGER(10) PRIMARY KEY,
    id_angajat INTEGER(10) NOT NULL,
    data DATE NOT NULL,
    ora_inceput TIME NOT NULL,
    ora_sfarsit TIME NOT NULL,
    FOREIGN KEY (id_angajat) REFERENCES angajati(id)
);

CREATE TABLE consultatii_angajati (
    id_angajat INTEGER(10) NOT NULL,
    id_consultatie INTEGER(10) NOT NULL,
    PRIMARY KEY (id_angajat, id_consultatie),
    FOREIGN KEY (id_angajat) REFERENCES angajati(id),
    FOREIGN KEY (id_consultatie) REFERENCES consultatii(id)
);
