BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "pirkejas" (
	"id"	INTEGER NOT NULL,
	"vardas"	VARCHAR(100) NOT NULL,
	"pavarde"	VARCHAR(100) NOT NULL,
	"el_pastas"	VARCHAR(100) UNIQUE,
	"tel_numeris"	integer,
	"adresas"	VARCHAR(100),
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "statusas" (
	"id"	INTEGER NOT NULL,
	"pavadinimas"	VARCHAR(100),
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "prekes" (
	"id"	INTEGER NOT NULL,
	"pavadinimas"	VARCHAR(100) NOT NULL,
	"kiekis"	FLOAT DESIMAL(10, 2),
	"kaina_eur"	FLOAT DESIMAL(10, 2),
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "uzsakymas" (
	"id"	INTEGER NOT NULL,
	"pirkejas_id"	INTEGER NOT NULL,
	"uzsakymo_data"	VARCHAR(100) NOT NULL,
	"statusas_id"	INTEGER NOT NULL,
	PRIMARY KEY("id"),
	FOREIGN KEY("pirkejas_id") REFERENCES "pirkejas"("id"),
	FOREIGN KEY("statusas_id") REFERENCES "statusas"("id")
);
CREATE TABLE IF NOT EXISTS "uzsakytos_prekes" (
	"uzsakymas_id"	integer NOT NULL,
	"prekes_id"	integer NOT NULL,
	"kiekis"	FLOAT DESIMAL(10, 2),
	FOREIGN KEY("prekes_id") REFERENCES "prekes"("id"),
	FOREIGN KEY("uzsakymas_id") REFERENCES "uzsakymas"("id")
);
INSERT INTO "pirkejas" VALUES (1,'Sergejus','Bykovas','sergejus@gmail.com',860090909,'Seskine g. 0 - 00, Vilnius');
INSERT INTO "pirkejas" VALUES (2,'Petras','Petraitis','petras@gmail.com',860088889,'Vilniaus g. 1 - 82, Vilnius');
INSERT INTO "pirkejas" VALUES (3,'Antanas','Antanaitis','antanaitis@gmail.com',860000118,'Taures g. 3 - 7, Vilnius');
INSERT INTO "pirkejas" VALUES (4,'Vardenis','Pavardenis','pavardenis@gmail.com',861155661,'Programuotoju g. 99 - 101, Vilnius');
INSERT INTO "pirkejas" VALUES (5,'Lempinis','Lempanaitis','lempenaitis@gmail.com',861155662,'Upes g. 21, Vilnius');
INSERT INTO "pirkejas" VALUES (6,'Antane','Antanaitiene','antanaitiene@gmail.com',860000100,'Taures g. 3 - 7, Vilnius');
INSERT INTO "pirkejas" VALUES (7,'Vardene','Pavardenaite','pavardenaite@gmail.com',861155677,'Programuotoju g. 99 - 101, Vilnius');
INSERT INTO "statusas" VALUES (1,'patvirtintas');
INSERT INTO "statusas" VALUES (2,'vykdomas');
INSERT INTO "statusas" VALUES (3,'ivykditas');
INSERT INTO "statusas" VALUES (4,'atmestas');
INSERT INTO "statusas" VALUES (5,'prarastas');
INSERT INTO "prekes" VALUES (1,'PAPRIKU_pica_32cm',1.0,8.99);
INSERT INTO "prekes" VALUES (2,'AKAPULKO_pica_32cm',1.0,8.99);
INSERT INTO "prekes" VALUES (3,'ASTROJI_pica_32cm',1.0,8.99);
INSERT INTO "prekes" VALUES (4,'EGZOTISKA_pica_32cm',1.0,8.99);
INSERT INTO "prekes" VALUES (5,'FANU_pica_32cm',1.0,8.99);
INSERT INTO "prekes" VALUES (6,'GARDZIOJI_pica_32cm',1.0,8.99);
INSERT INTO "prekes" VALUES (7,'GURMANU_pica_32cm',1.0,8.99);
INSERT INTO "prekes" VALUES (8,'HAVAJU_pica_32cm',1.0,8.99);
INSERT INTO "prekes" VALUES (9,'MAFIJOS_pica_32cm',1.0,8.99);
INSERT INTO "prekes" VALUES (10,'PEPERONI_pica_32cm',1.0,8.99);
INSERT INTO "prekes" VALUES (11,'PROVINCIJOS_pica_32cm',1.0,8.99);
INSERT INTO "prekes" VALUES (12,'SALSA_pica_32cm',1.0,8.99);
INSERT INTO "prekes" VALUES (13,'NEAPOLIO_pica_32cm',1.0,8.99);
INSERT INTO "prekes" VALUES (14,'PALERMO_pica_32cm',1.0,8.99);
INSERT INTO "prekes" VALUES (15,'SANTA_FE_pica_32cm',1.0,8.99);
INSERT INTO "prekes" VALUES (16,'SICILIJOS_pica_32cm',1.0,8.99);
INSERT INTO "prekes" VALUES (17,'SERANO_pica_32cm',1.0,8.99);
INSERT INTO "prekes" VALUES (18,'MARGARITA_pica_32cm',1.0,7.99);
INSERT INTO "prekes" VALUES (19,'FIRMINE_SU_JAUTIENA_pica_42cm',1.0,12.99);
INSERT INTO "prekes" VALUES (20,'FIRMINE_SU_KIAULIENA_pica_42cm',1.0,12.99);
INSERT INTO "prekes" VALUES (21,'PAPRIKU_pica_42cm',1.0,11.99);
INSERT INTO "prekes" VALUES (22,'AKAPULKO_pica_42cm',1.0,11.99);
INSERT INTO "prekes" VALUES (23,'ASTROJI_pica_42cm',1.0,11.99);
INSERT INTO "prekes" VALUES (24,'EGZOTISKA_pica_42cm',1.0,11.99);
INSERT INTO "prekes" VALUES (25,'FANU_pica_42cm',1.0,11.99);
INSERT INTO "prekes" VALUES (26,'GARDZIOJI_pica_42cm',1.0,11.99);
INSERT INTO "prekes" VALUES (27,'PROVINCIJOS_pica_42cm',1.0,11.99);
INSERT INTO "prekes" VALUES (28,'SALSA_pica_42cm',1.0,11.99);
INSERT INTO "prekes" VALUES (29,'NEAPOLIO_pica_42cm',1.0,11.99);
INSERT INTO "prekes" VALUES (30,'PALERMO_pica_42cm',1.0,11.99);
INSERT INTO "prekes" VALUES (31,'SANTA_FE_pica_42cm',1.0,11.99);
INSERT INTO "prekes" VALUES (32,'SICILIJOS_pica_42cm',1.0,11.99);
INSERT INTO "prekes" VALUES (33,'SERANO_pica_42cm',1.0,11.99);
INSERT INTO "prekes" VALUES (34,'Coca-Cola 2L',1.0,2.99);
INSERT INTO "prekes" VALUES (35,'Spite 2L',1.0,2.99);
INSERT INTO "prekes" VALUES (36,'Fanta',1.0,2.99);
INSERT INTO "prekes" VALUES (37,'Vanduo',1.0,0.99);
INSERT INTO "uzsakymas" VALUES (1,1,'2022-10-25 12:34',3);
INSERT INTO "uzsakymas" VALUES (2,1,'2022-10-07 18:47:00',3);
INSERT INTO "uzsakymas" VALUES (3,2,'2022-10-08 11:14',3);
INSERT INTO "uzsakymas" VALUES (4,3,'2022-10-09 00:00',4);
INSERT INTO "uzsakymas" VALUES (5,4,'2022-10-09 12:54',3);
INSERT INTO "uzsakymas" VALUES (6,1,'2022-10-14 17:02',3);
INSERT INTO "uzsakymas" VALUES (7,5,'2022-10-14 22:59',5);
INSERT INTO "uzsakymas" VALUES (8,7,'2022-10-15 10:04',3);
INSERT INTO "uzsakymas" VALUES (9,6,'2022-10-16 20:44',4);
INSERT INTO "uzsakymas" VALUES (10,1,'2022-10-18 12:34',3);
INSERT INTO "uzsakymas" VALUES (11,2,'2022-10-21 12:32',3);
INSERT INTO "uzsakymas" VALUES (12,3,'2022-10-21 20:34',3);
INSERT INTO "uzsakymas" VALUES (13,4,'2022-10-22 21:09',3);
INSERT INTO "uzsakymas" VALUES (14,6,'2022-10-22 22:30',3);
INSERT INTO "uzsakymas" VALUES (15,5,'2022-10-23 18:34',3);
INSERT INTO "uzsakymas" VALUES (16,7,'2022-10-23 08:39',3);
INSERT INTO "uzsakymas" VALUES (17,3,'2022-10-23 09:34',3);
INSERT INTO "uzsakymas" VALUES (18,1,'2022-10-24 15:22',3);
INSERT INTO "uzsakymas" VALUES (19,2,'2022-10-24 19:34',3);
INSERT INTO "uzsakymas" VALUES (20,5,'2022-10-25 17:22',3);
INSERT INTO "uzsakymas" VALUES (21,4,'2022-10-25 15:33',3);
INSERT INTO "uzsakymas" VALUES (22,7,'2022-10-26 12:34',2);
INSERT INTO "uzsakymas" VALUES (23,3,'2022-10-26 13:54',1);
INSERT INTO "uzsakytos_prekes" VALUES (1,6,1.0);
INSERT INTO "uzsakytos_prekes" VALUES (1,11,2.0);
INSERT INTO "uzsakytos_prekes" VALUES (1,12,1.0);
INSERT INTO "uzsakytos_prekes" VALUES (1,34,1.0);
INSERT INTO "uzsakytos_prekes" VALUES (1,37,1.0);
INSERT INTO "uzsakytos_prekes" VALUES (2,1,1.0);
INSERT INTO "uzsakytos_prekes" VALUES (2,8,2.0);
INSERT INTO "uzsakytos_prekes" VALUES (3,23,2.0);
INSERT INTO "uzsakytos_prekes" VALUES (4,5,1.0);
INSERT INTO "uzsakytos_prekes" VALUES (4,18,2.0);
INSERT INTO "uzsakytos_prekes" VALUES (5,24,3.0);
INSERT INTO "uzsakytos_prekes" VALUES (5,32,1.0);
INSERT INTO "uzsakytos_prekes" VALUES (5,35,1.0);
INSERT INTO "uzsakytos_prekes" VALUES (6,3,1.0);
INSERT INTO "uzsakytos_prekes" VALUES (7,35,1.0);
INSERT INTO "uzsakytos_prekes" VALUES (7,24,2.0);
INSERT INTO "uzsakytos_prekes" VALUES (7,33,1.0);
INSERT INTO "uzsakytos_prekes" VALUES (8,36,2.0);
INSERT INTO "uzsakytos_prekes" VALUES (9,27,1.0);
INSERT INTO "uzsakytos_prekes" VALUES (10,23,2.0);
INSERT INTO "uzsakytos_prekes" VALUES (11,21,2.0);
INSERT INTO "uzsakytos_prekes" VALUES (12,32,1.0);
INSERT INTO "uzsakytos_prekes" VALUES (13,28,2.0);
INSERT INTO "uzsakytos_prekes" VALUES (14,4,2.0);
INSERT INTO "uzsakytos_prekes" VALUES (15,29,1.0);
INSERT INTO "uzsakytos_prekes" VALUES (16,35,1.0);
INSERT INTO "uzsakytos_prekes" VALUES (17,26,1.0);
INSERT INTO "uzsakytos_prekes" VALUES (18,13,1.0);
INSERT INTO "uzsakytos_prekes" VALUES (19,19,2.0);
INSERT INTO "uzsakytos_prekes" VALUES (20,1,2.0);
INSERT INTO "uzsakytos_prekes" VALUES (21,3,2.0);
INSERT INTO "uzsakytos_prekes" VALUES (22,1,2.0);
INSERT INTO "uzsakytos_prekes" VALUES (23,14,2.0);
INSERT INTO "uzsakytos_prekes" VALUES (8,32,1.0);
INSERT INTO "uzsakytos_prekes" VALUES (9,21,1.0);
INSERT INTO "uzsakytos_prekes" VALUES (10,22,2.0);
INSERT INTO "uzsakytos_prekes" VALUES (11,25,2.0);
INSERT INTO "uzsakytos_prekes" VALUES (12,22,2.0);
INSERT INTO "uzsakytos_prekes" VALUES (13,12,2.0);
INSERT INTO "uzsakytos_prekes" VALUES (14,1,3.0);
INSERT INTO "uzsakytos_prekes" VALUES (15,22,2.0);
INSERT INTO "uzsakytos_prekes" VALUES (16,31,2.0);
INSERT INTO "uzsakytos_prekes" VALUES (17,21,2.0);
INSERT INTO "uzsakytos_prekes" VALUES (18,11,2.0);
INSERT INTO "uzsakytos_prekes" VALUES (19,15,1.0);
INSERT INTO "uzsakytos_prekes" VALUES (20,4,2.0);
INSERT INTO "uzsakytos_prekes" VALUES (21,2,3.0);
INSERT INTO "uzsakytos_prekes" VALUES (22,33,2.0);
INSERT INTO "uzsakytos_prekes" VALUES (23,18,1.0);
COMMIT;
