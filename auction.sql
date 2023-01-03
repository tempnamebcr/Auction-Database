CREATE TABLE casa_licitatie (
casa_licitatie_nume VARCHAR(50) PRIMARY KEY NOT NULL,
casa_licitatie_telefon VARCHAR(12) NOT NULL,
casa_licitatie_adresa VARCHAR(100) NOT NULL
);
CREATE TABLE licitatori (
licitator_nume VARCHAR(30) PRIMARY KEY NOT NULL,
licitator_buget NUMBER(6) NOT NULL,
licitator_obiecte_castigate NUMBER(3) NOT NULL,
casa_licitatie_nume VARCHAR(50) NOT NULL, 
CONSTRAINT fkey_casa_licitatie FOREIGN KEY (casa_licitatie_nume)
REFERENCES casa_licitatie(casa_licitatie_nume)
);
CREATE TABLE obiect_licitat(
obiect_licitat_id NUMBER(3) PRIMARY KEY NOT NULL,
obiect_licitat_pret_start NUMBER(5) NOT NULL,
angajat_id NUMBER(3) NOT NULL,
CONSTRAINT fkey_angajat_id FOREIGN KEY (angajat_id)
REFERENCES angajati2(angajat_id)
);
CREATE TABLE angajati2 (
angajat_id NUMBER(3) PRIMARY KEY NOT NULL,
angajat_nume VARCHAR(30) NOT NULL,
angajat_functie VARCHAR(50) NOT NULL,
angajat_id_manager NUMBER(3),
angajat_data_angajare DATE,
casa_licitatie_nume VARCHAR(50) NOT NULL, 
CONSTRAINT fkey_casa_licitatie2 FOREIGN KEY (casa_licitatie_nume)
REFERENCES casa_licitatie(casa_licitatie_nume)
);
CREATE TABLE obiecte_vandute(
obiect_vandut_id NUMBER(3) PRIMARY KEY NOT NULL,
obiect_vandut_data_vanzare DATE,
angajat_id NUMBER(3) NOT NULL,
CONSTRAINT fkey_angajat_id2 FOREIGN KEY (angajat_id)
REFERENCES angajati2(angajat_id),
obiect_vandut_pret_vanzare NUMBER(6) NOT NULL
);
 
ALTER TABLE angajati2
ADD angajat_salariu NUMBER(6) NOT NULL;


--(3)
--insert
INSERT INTO casa_licitatie(casa_licitatie_nume, casa_licitatie_telefon, casa_licitatie_adresa) 
VALUES('afaceresrl', 0734789834, 'Strada Principala numarul 34');
INSERT INTO casa_licitatie(casa_licitatie_nume, casa_licitatie_telefon, casa_licitatie_adresa) 
VALUES('licitatiionline', 0744766723, 'Strada Soarelui numarul 55');

INSERT INTO obiecte_vandute(obiect_vandut_id, obiect_vandut_data_vanzare, angajat_id, obiect_vandut_pret_vanzare) 
VALUES (13, TO_DATE('21/04/2003', 'DD/MM/YYYY'), 15, 3500);
INSERT INTO obiecte_vandute(obiect_vandut_id, obiect_vandut_data_vanzare, angajat_id, obiect_vandut_pret_vanzare) 
VALUES (14, null, 15, 4000);
INSERT INTO obiecte_vandute(obiect_vandut_id, obiect_vandut_data_vanzare, angajat_id, obiect_vandut_pret_vanzare) 
VALUES (88, TO_DATE('23/01/2008', 'DD/MM/YYYY'), 15, 5500);
INSERT INTO obiecte_vandute(obiect_vandut_id, obiect_vandut_data_vanzare, angajat_id, obiect_vandut_pret_vanzare) 
VALUES (91, TO_DATE('12/11/2009', 'DD/MM/YYYY'), 12, 23000);
INSERT INTO obiecte_vandute(obiect_vandut_id, obiect_vandut_data_vanzare, angajat_id, obiect_vandut_pret_vanzare) 
VALUES (93, TO_DATE('07/01/2007', 'DD/MM/YYYY'), 11, 5000);
INSERT INTO obiecte_vandute(obiect_vandut_id, obiect_vandut_data_vanzare, angajat_id, obiect_vandut_pret_vanzare) 
VALUES (97, TO_DATE('03/03/2010', 'DD/MM/YYYY'), 15, 9000);
INSERT INTO obiecte_vandute(obiect_vandut_id, obiect_vandut_data_vanzare, angajat_id, obiect_vandut_pret_vanzare) 
VALUES (99, TO_DATE('13/02/2003', 'DD/MM/YYYY'), 13, 800);

INSERT INTO angajati2(angajat_id, angajat_nume, angajat_functie, angajat_id_manager, angajat_data_angajare, casa_licitatie_nume, angajat_salariu)
VALUES
(15, 'Nita Ionut','vanzator sef', 10 ,TO_DATE('11/07/2001', 'DD/MM/YYYY'), 'afaceresrl', 6000);
INSERT INTO angajati2(angajat_id, angajat_nume, angajat_functie, angajat_id_manager, angajat_data_angajare, casa_licitatie_nume, angajat_salariu)
VALUES
(10, 'Marius Constantin','CEO', 10 ,TO_DATE('01/01/2000', 'DD/MM/YYYY'), 'afaceresrl', 10000);
INSERT INTO angajati2(angajat_id, angajat_nume, angajat_functie, angajat_id_manager, angajat_data_angajare, casa_licitatie_nume, angajat_salariu)
VALUES
(11, 'George Nica','vanzator', 15 ,TO_DATE('03/08/2002', 'DD/MM/YYYY'), 'afaceresrl', 4000);
INSERT INTO angajati2(angajat_id, angajat_nume, angajat_functie, angajat_id_manager, angajat_data_angajare, casa_licitatie_nume, angajat_salariu)
VALUES
(14, 'Iasmina Ciobanu','vanzator', 15 ,TO_DATE('11/10/2009', 'DD/MM/YYYY'), 'afaceresrl', 3500);
INSERT INTO angajati2(angajat_id, angajat_nume, angajat_functie, angajat_id_manager, angajat_data_angajare, casa_licitatie_nume, angajat_salariu)
VALUES
(22, 'Georgian Dragoi','vanzator', 15 ,TO_DATE('11/10/2029', 'DD/MM/YYYY'), 'afaceresrl', 4000);
INSERT INTO angajati2(angajat_id, angajat_nume, angajat_functie, angajat_id_manager, angajat_data_angajare, casa_licitatie_nume, angajat_salariu)
VALUES
(13, 'Dragos Vlad','vanzator', 10 ,TO_DATE('21/11/2004', 'DD/MM/YYYY'), 'afaceresrl', 3000);
INSERT INTO angajati2(angajat_id, angajat_nume, angajat_functie, angajat_id_manager, angajat_data_angajare, casa_licitatie_nume, angajat_salariu)
VALUES
(12, 'Alex Tanasuica','vanzator', 10 ,TO_DATE('01/07/2005', 'DD/MM/YYYY'), 'afaceresrl', 3100);
INSERT INTO angajati2(angajat_id, angajat_nume, angajat_functie, angajat_id_manager, angajat_data_angajare, casa_licitatie_nume, angajat_salariu)
VALUES
(17, 'Radu Georgian','vanzator', 15 ,TO_DATE('29/09/2006', 'DD/MM/YYYY'), 'afaceresrl', 4500);
INSERT INTO angajati2(angajat_id, angajat_nume, angajat_functie, angajat_id_manager, angajat_data_angajare, casa_licitatie_nume, angajat_salariu)
VALUES
(18, 'Bianca Maria','asistent vanzator', 11 ,TO_DATE('09/06/2007', 'DD/MM/YYYY'), 'afaceresrl', 2500);
INSERT INTO angajati2(angajat_id, angajat_nume, angajat_functie, angajat_id_manager, angajat_data_angajare, casa_licitatie_nume, angajat_salariu)
VALUES
(1, 'Stefan Sebastian','CEO', 1 ,TO_DATE('03/03/2002', 'DD/MM/YYYY'), 'licitatiionline', 10000);

INSERT INTO licitatori(licitator_nume, licitator_buget, licitator_obiecte_castigate, casa_licitatie_nume)
VALUES('Marius Constantin', 90000, 25, 'afaceresrl');
INSERT INTO licitatori(licitator_nume, licitator_buget, licitator_obiecte_castigate, casa_licitatie_nume)
VALUES('Stefan Marius', 30000, 33, 'afaceresrl');
INSERT INTO licitatori(licitator_nume, licitator_buget, licitator_obiecte_castigate, casa_licitatie_nume)
VALUES('Nica George', 10000, 14, 'afaceresrl');
INSERT INTO licitatori(licitator_nume, licitator_buget, licitator_obiecte_castigate, casa_licitatie_nume)
VALUES('Tita Alex', 34000, 10, 'afaceresrl');
INSERT INTO licitatori(licitator_nume, licitator_buget, licitator_obiecte_castigate, casa_licitatie_nume)
VALUES('Sima Florea', 9000, 7, 'afaceresrl');

INSERT INTO obiect_licitat(obiect_licitat_id, obiect_licitat_pret_start, angajat_id) 
VALUES(55, 2000, 11);
INSERT INTO obiect_licitat(obiect_licitat_id, obiect_licitat_pret_start, angajat_id) 
VALUES(22, 300, 11);
INSERT INTO obiect_licitat(obiect_licitat_id, obiect_licitat_pret_start, angajat_id) 
VALUES(37, 900, 13);
INSERT INTO obiect_licitat(obiect_licitat_id, obiect_licitat_pret_start, angajat_id) 
VALUES(45, 1000, 12);
INSERT INTO obiect_licitat(obiect_licitat_id, obiect_licitat_pret_start, angajat_id) 
VALUES(35, 300, 15);
INSERT INTO obiect_licitat(obiect_licitat_id, obiect_licitat_pret_start, angajat_id) 
VALUES(11, null, 15);

-- update 
UPDATE angajati2
SET angajat_salariu = (angajat_salariu + 1000)
WHERE angajat_id_manager = 10;

UPDATE angajati2
SET angajat_id_manager = 1, casa_licitatie_nume ='licitatiionline'
WHERE angajat_id = 18;

--delete 

DELETE FROM obiecte_vandute
WHERE obiect_vandut_id = 91;

DELETE FROM licitatori
WHERE licitator_obiecte_castigate = 7;

--select
SELECT * FROM angajati2
WHERE angajat_data_angajare > TO_DATE('01/06/2005', 'DD/MM/YYYY');

SELECT * FROM obiect_licitat
WHERE obiect_licitat_pret_start >500 ;

SELECT * FROM licitatori
WHERE licitator_obiecte_castigate < 15;

--merge
MERGE INTO licitatori USING angajati2 
ON (licitatori.casa_licitatie_nume = angajati2.casa_licitatie_nume)
WHEN MATCHED THEN 
UPDATE SET licitatori.liciitator_buget=angajati2.angajat_id + licitatori.liciitator_buget
WHEN NOT MATCHED THEN
INSERT  (angajat_id, angajat_nume, angajat_functie) VALUES (angajati2.angajat_id, angajati2.angajat_nume, angajati2.angajat_functie);
SELECT COUNT (*) FROM licitatori;
SELECT COUNT (*) FROM angajati2;


--(4)
--any
SELECT * from angajati2
WHERE angajat_salariu > ANY (SELECT angajat_salariu FROM angajati2 WHERE angajat_functie ='vanzator')
ORDER BY angajat_salariu DESC;
--all
SELECT * from angajati2
WHERE angajat_salariu > ALL (SELECT angajat_salariu FROM angajati2 WHERE angajat_functie ='vanzator')
ORDER BY angajat_salariu DESC;
--egalitate
SELECT a.*, o_v.* 
FROM angajati2 a, obiecte_vandute o_v
WHERE a.angajat_id= o_v.angajat_id;
--externa
SELECT ov.obiect_vandut_data_vanzare, ov.obiect_vandut_pret_vanzare, a2.angajat_nume FROM angajati2 a2, 
obiecte_vandute ov WHERE  ov.angajat_id =a2.angajat_id(+); 
--subordonate
SELECT * FROM angajati2
WHERE angajat_id_manager = 
(SELECT angajat_id_manager FROM angajati2 WHERE upper(angajat_nume)= 'DRAGOS VLAD');
--(5)
--upper
SELECT * FROM angajati2
WHERE angajat_id_manager = 
(SELECT angajat_id_manager FROM angajati2 WHERE upper(angajat_nume)= 'DRAGOS VLAD');
--concatenare
SELECT 'Angajatul: ' || angajat_nume || ' lucreaza pentru persoana cu id ul ' || angajat_id_manager
FROM angajati2;
--substr
SELECT * from licitatori
WHERE SUBSTR(licitator_nume,1,1)='S';
--sysdate
SELECT * FROM angajati2 
WHERE angajat_data_angajare BETWEEN 
TO_DATE('21/11/2004', 'DD/MM/YYYY')
AND
(SELECT SYSDATE data_curenta FROM DUAL);
--months-between add_months, next day, last day
SELECT angajat_nume,angajat_data_angajare, round(MONTHS_BETWEEN(sysdate, angajat_data_angajare)) luni,
ADD_MONTHS(angajat_data_angajare, 5),
NEXT_DAY(angajat_data_angajare, 'WEDNESDAY'), 
LAST_DAY(angajat_data_angajare)
FROM angajati2;
--to-number
SELECT TO_NUMBER('1242.45', '9999.99')
FROM DUAL;
--nvl
SELECT NVL(obiect_vandut_data_vanzare, TO_DATE('01/01/2000', 'DD/MM/YYYY')) FROM obiecte_vandute;
--count
SELECT COUNT(*)nr_angajati
FROM angajati2
WHERE angajat_salariu > 3500;
--sum
SELECT SUM(angajat_salariu)plata_salarii
FROM angajati2 WHERE casa_licitatie_nume='afaceresrl';
--max
SELECT MAX(angajat_data_angajare)cel_mai_recent_angajat
FROM angajati2;
--(6)
--TOP-DOWN
SELECT angajat_nume, angajat_id, angajat_id_manager, LEVEL FROM angajati2
CONNECT BY PRIOR angajat_id= angajat_id_manager
START WITH angajat_id = 10;
--BOTTOM-UP
SELECT angajat_nume, LEVEL-1 nrSuperiori, SYS_CONNECT_BY_PATH(angajat_nume, '/') numeSuperiori
FROM angajati2
START WITH angajat_id = 10
CONNECT BY PRIOR angajat_id = angajat_id_manager
ORDER BY LEVEL desc;

--(7)
--DECODE
SELECT angajat_nume,
DECODE(SIGN(angajat_salariu - 5000), -1,
'MIC', +1 ,'MARE')
tip_salariu
FROM angajati2;
--CASE
SELECT licitator_nume, licitator_obiecte_castigate,
CASE WHEN licitator_obiecte_castigate <10 THEN 'INCEPATOR'
WHEN licitator_obiecte_castigate <20 THEN 'INTERMEDIAR'
WHEN licitator_obiecte_castigate <30 THEN 'EXPERT'
ELSE 'NEMAIVAZUT' END categorie
FROM licitatori;
--(8)
--MINUS
SELECT * FROM licitatori WHERE licitator_obiecte_castigate BETWEEN 5 AND 35 
MINUS SELECT * FROM licitatori WHERE licitator_obiecte_castigate IN(7,14);
--(9)
--VIEW
CREATE OR REPLACE VIEW v_angajati_15
AS SELECT * FROM angajati2
WHERE angajat_id_manager=15;
UPDATE v_angajati_15
SET angajat_salariu=angajat_salariu+500;
--INDEX
SELECT * FROM angajati2 WHERE LOWER(angajat_nume) = 'bianca maria';
CREATE INDEX idx_lower_angajati2 ON angajati2(LOWER(angajat_nume));
--SECVENTA
CREATE SEQUENCE seq_oblicitat
START WITH 200 INCREMENT BY 5
MAXVALUE 300 NOCYCLE;
INSERT INTO obiect_licitat VALUES (seq_oblicitat.NEXTVAL,200,13);

