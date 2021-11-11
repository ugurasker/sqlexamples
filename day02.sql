CREATE TABLE calisanlar
(
   id CHAR(5),
   isim VARCHAR(50) NOT NULL UNIQUE,
   maas NUMBER(5) NOT NULL,
   ise_baslama DATE,
   CONSTRAINT id_pk PRIMARY KEY(id)
);
INSERT INTO calisanlar VALUES('10001','Ahmet Aslan',7000,'13-APR-2018');
INSERT INTO calisanlar VALUES( '10002', 'Mehmet Y?lmaz' ,12000, '14-APR-18');
INSERT INTO calisanlar VALUES('10003', 'Ayse Yildiz', 5000, '14-APR-18');
INSERT INTO calisanlar VALUES('10004', 'Veli Han', 5000, '14-APR-18');
INSERT INTO calisanlar VALUES('10005', 'Mustafa Ali', 5000, '14-APR-18');
INSERT INTO calisanlar VALUES('10006', 'Canan Yas', 4000, '12-APR-19');

SELECT * FROM calisanlar;

DROP TABLE calisanlar;

DELETE calisanlar 
WHERE id='10001';

CREATE TABLE adresler
(
    adres_id CHAR(5) --REFERENCES calisanlar(id),
    sokak VARCHAR2(50),
    cadde VARCHAR2(30),
    sehir VARCHAR2(15),
    CONSTRAINT id_fk FOREIGN KEY (adres_id) REFERENCES calisanlar(id)
);

INSERT INTO adresler VALUES('10001','Mutlu sok','40 cad','IST');
INSERT INTO adresler VALUES('10001','Can Sok', '50.Cad.','Ankara');
INSERT INTO adresler VALUES('10002','A?a Sok', '30.Cad.','Antep');
INSERT INTO adresler VALUES('10005','BA?a Sok', '70.Cad.','urfa');
INSERT INTO adresler VALUES('10007','tA?a Sok', '80.Cad.','sakarya');

DROP TABLE adresler;

SELECT * FROM calisanlar;
SELECT * FROM adresler;
SELECT * FROM calisanlar, adresler
WHERE id = '10001';

CREATE TABLE sehirler 
(
    alan_kodu NUMBER(3) DEFAULT 34,
    isim VARCHAR2(20) DEFAULT 'ISTANBUL',
    nufus NUMBER(8) CHECK(nufus>0)
);
INSERT INTO sehirler VALUES(54, 'SAKARYA', 1250000);
--parcali veri girisi/ default boyle calisiyor
INSERT INTO sehirler (nufus) VALUES(5000000);

SELECT * FROM sehirler;


