CREATE TABLE student
(
    std_id CHAR(3),
    std_name VARCHAR(20),
    std_age NUMBER
    );
    
INSERT INTO student VALUES('101','AHMET CAN',30);    
INSERT INTO student VALUES('102','MUSTAFA ALI',20);
INSERT INTO student VALUES('103','AYSE YILMAZ',18);    
INSERT INTO student VALUES('104','MELIH GOR',40); 

INSERT INTO student(std_id,std_name) VALUES('105','JOHN TRA');

SELECT * FROM student ;

DROP TABLE student;

CREATE TABLE products
( 
   urun_id NUMBER,
   urun_adi VARCHAR2(50),
   fiyat NUMBER(5,2),
   tett DATE,
   stok_adedi NUMBER(10)
   );
   
INSERT INTO products VALUES(101,'CIPS',5.5,'01-jan-2020',500);
INSERT INTO products VALUES(102,'LOKUM',10.0,'01.apr.2020',200);
INSERT INTO products VALUES(103,'BISKUVI',7.5,'01-mar-2020',1000);
INSERT INTO products VALUES(104,'CIKOLATA',15.0,'01-may-2020',300);
INSERT INTO products VALUES(105,'GOFRET',5.0,'01-feb-2020',300);
INSERT INTO products VALUES(106,'BONIBON',8.0,'01-may-2020',500);

SELECT * FROM products ;
DROP TABLE products;

SELECT * FROM ogrenciler;
DROP TABLE kitaplar;
SELECT * FROM kitaplar;

DROP TABLE kisiler;
SELECT * FROM kisiler;