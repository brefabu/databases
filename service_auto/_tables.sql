-- Name: _tables.sql
CREATE TABLE mecanici (
    id_mecanic INTEGER(10) PRIMARY KEY,
    nume_mecanic VARCHAR2(24) NOT NULL,
    prenume_mecanic VARCHAR2(24) NOT NULL,
    specializare_mecanic VARCHAR2(50) NOT NULL,
    telefon_mecanic VARCHAR2(10) NOT NULL,
    email_mecanic VARCHAR2(50) NOT NULL,
    salariu_mecanic INTEGER(10) NOT NULL,
    data_angajare_mecanic DATE NOT NULL
);

CREATE TABLE piese (
    id_piesa INTEGER(10) PRIMARY KEY,
    nume_piesa VARCHAR2(24) NOT NULL,
    pret_piesa INTEGER(10) NOT NULL,
    stoc_piesa INTEGER(10) NOT NULL
);

CREATE TABLE servicii (
    id_serviciu INTEGER(10) PRIMARY KEY,
    nume_serviciu VARCHAR2(24) NOT NULL,
    pret_serviciu INTEGER(10) NOT NULL
);

CREATE TABLE clienti (
    id_client INTEGER(10) PRIMARY KEY,
    nume_client VARCHAR2(24) NOT NULL,
    prenume_client VARCHAR2(24) NOT NULL,
    telefon_client VARCHAR2(10) NOT NULL,
    email_client VARCHAR2(50) NOT NULL
);

CREATE TABLE masini (
    id_masina INTEGER(10) PRIMARY KEY,
    marca_masina VARCHAR2(24) NOT NULL,
    model_masina VARCHAR2(24) NOT NULL,
    an_fabricatie_masina INTEGER(4) NOT NULL,
    nr_inmatriculare_masina VARCHAR2(10) NOT NULL,
    id_client INTEGER(10) NOT NULL,
    FOREIGN KEY (id_client) REFERENCES clienti(id_client)
);

CREATE TABLE devize (
    id_deviz INTEGER(10) PRIMARY KEY,
    data_deviz DATE NOT NULL,
    id_masina INTEGER(10) NOT NULL,
    km_masina INTEGER(10) NOT NULL,
    FOREIGN KEY (id_masina) REFERENCES masini(id_masina)
);

CREATE TABLE devize_piese (
    id_deviz INTEGER(10) NOT NULL,
    id_piesa INTEGER(10) NOT NULL,
    cantitate_piesa INTEGER(10) NOT NULL,
    FOREIGN KEY (id_deviz) REFERENCES devize(id_deviz),
    FOREIGN KEY (id_piesa) REFERENCES piese(id_piesa)
);

CREATE TABLE devize_servicii (
    id_deviz INTEGER(10) NOT NULL,
    id_serviciu INTEGER(10) NOT NULL,
    FOREIGN KEY (id_deviz) REFERENCES devize(id_deviz),
    FOREIGN KEY (id_serviciu) REFERENCES servicii(id_serviciu)
);

CREATE TABLE devize_mecanici (
    id_deviz INTEGER(10) NOT NULL,
    id_mecanic INTEGER(10) NOT NULL,
    FOREIGN KEY (id_deviz) REFERENCES devize(id_deviz),
    FOREIGN KEY (id_mecanic) REFERENCES mecanici(id_mecanic)
);

CREATE TABLE facturi (
    id_factura INTEGER(10) PRIMARY KEY,
    data_factura DATE NOT NULL,
    id_deviz INTEGER(10) NOT NULL,
    FOREIGN KEY (id_deviz) REFERENCES devize(id_deviz)
);
