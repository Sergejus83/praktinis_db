CREATE TABLE Pirkejas (
	id integer PRIMARY KEY AUTOINCREMENT,
	vardas varchar,
	pavarde varchar,
	el_pastas varchar,
	tel_numeris integer,
	adresas varchar
);

CREATE TABLE Prekes (
	id integer PRIMARY KEY AUTOINCREMENT,
	pavadinimas varchar,
	kiekis float,
	kaina_eur float
);

CREATE TABLE Uzsakymas (
	id integer PRIMARY KEY AUTOINCREMENT,
	pirkejas_id integer,
	data datetime,
	statusas varchar
);

CREATE TABLE Statusas (
	id integer PRIMARY KEY AUTOINCREMENT,
	pavadinimas varchar
);

CREATE TABLE Uzsakytos_prekes (
	uzsakymas_id integer,
	prekes_id integer,
	kiekis float
);






