/*Comment Di MySql */

/*PART 1 */
/*CARA BUAT DATABASE */
/*Dalam Database Server Terdapat Beberapa Database */
/*SHOW DATABASES : Menampilkan Semua Database Dalam Server Mysql*/

-- SHOW DATABASES

/*CREATE DATABASE <NAME>; */

/*Contoh Membuat Database Kucing */
/*Mysql Atau Sql Berakhiran Seperti JS*/

-- CREATE DATABASE Kucing;
-- Penamaan Database disarankan dengan _ seperti database toko_kucing
-- disarankan sintaks sql menggunakan kapital semua kecuali valuenya

-- CARA HAPUS DATABASE

-- Database Bisa Dihapus dengan DROP DATABASE <NamaDatabase>;

-- DROP DATABASE toko_kucing;

-- Gimana Cara Menggunakan Databasenya Ketika Sudah Dibuat?
-- Yaitu Dengan Cara USE <db name>;
-- Contoh Ingin menggunakan db toko_kucing :

-- USE toko_kucing;

-- Mengecek database apa yang sedang kita gunakan yaitu dengan
-- SELECT database();

-- Gimana Jika Kita Menggunakan Database Lalu Dihapus Dan Kita Mencoba Select Kembali?
-- Maka Hasilnya Akan NULL

-- TABLES

-- HAL PALING PENTING DALAM SQL ADALAH TABLES

-- Dalam Relational database,database adalah kumpulan dari tables

-- tables menyimpan data

-- contoh

-- tabel kucing

-- nama usia warna
-- 1 10  merah
-- 2 20  biru

-- BAGIAN TABLE

-- Ketika Orang Menyebutkan kolom table berarti headers atau seperti contoh diatas adalah nama usia dan warna.lalu baris adalah data yang sebenarnya yaitu 1 10 merah 2 20 biru

-- DATA TYPES

-- Table Harus Ditentukan data tipenya dan tiap kolom atau headers harus di atur tipe datanya sejak awal misalkan nama harus text usia harus angka agar ke depannya bisa digunakan dengan mudah

-- NUMERIC TYPES

-- INT 
-- SMALLINT
-- TINYINT
-- MEDIUMINT
-- BIGINT
-- DECIMAL
-- NUMERIC
-- FLOAT
-- DOUBLE
-- BIT

-- STRING TYPES

-- CHAR
-- VARCHAR
-- BINARY
-- VARBINARY
-- BLOB
-- TINYBLOB
-- MEDIUMBLOB
-- LONGBLOB
-- TEXT
-- TINYTEXT
-- MEDIUMTEXT
-- LONGTEXT
-- ENUM

-- DATE TYPES

-- DATE
-- DATETIME
-- TIMESTAMP
-- TIME
-- YEAR

-- Untuk sekarang number type pakai int harus angka full bukan decimal dan string menggunakan varchar.varchar adalah tipe data string yang bisa berisikan apa saja max 255 karakter

-- BAGAIMANA MENENTUKAN TIPE DATA HEADERS ATAU KOLOM DALAM SEBUAH TABEL?

-- Contoh nama warna menggunakan varchar dan umur int

-- Jawab :

-- varchar(100) = nama dan warna
-- int = umur

-- varchar(100) artinya karakter maksimalnya adalah 100 huruf

-- CARA BUAT TABLES

-- CREATE TABLE tablename (
--   column_name data_type,
--   column_name data_type,
-- )

-- Contoh Membuat Tabel Kucing Dengan Lebih Benar

-- CREATE TABLE kucing-kucing (
--   nama VARCHAR(20),
--   warna VARCHAR(20),
--   umur INT
-- );

-- Gimana Cara Cek Jika Tabel Dibuat Dengan Semestinya?

-- SHOW TABLES Menampilkan Semua Table Dalam Sebuah Database Yang Sedang Kita Kerjakan Secara Kasar

-- SHOW COLUMNS FROM <tablename> Lebih Halus menampilkan kolom dalam sebuah tabel yang telah dipilih

-- Atau bisa di bawah ini walau ada bedanya sedikit nanti..
-- DESC <tablename>

-- DELETE TABLE

-- DROP TABLE <tablename>

-- CARA MEMASUKKAN DATA KE DALAM TABLE

-- INSERT

-- INSERT INTO <tablename>(column_name,column_name)
-- VALUES (Data,Data);

-- Kalau Banyak Values Data Sekaligus?

-- VALUES (Data,data),(data,data),...

-- CARA MELIHAT DATA YANG SUDAH MASUK KE DALAM TABEL

-- SELECT * FROM <tablename>

-- TEST Membuat tabel orang dengan data
-- nm depan nm blkng umur
-- tina belcher 13
-- bob belcher 42
-- linda belcher 45
-- philip frond 38
-- calvin fischoeder 70

-- Jawab

-- CREATE DATABASE kota_imajinasi;
-- USE kota_imajinasi;
-- CREATE TABLE warga(nama_depan VARCHAR(20),nama_belakang VARCHAR(20),umur INT );
-- INSERT INTO warga(nama_depan,nama_belakang,umur) VALUES('Tina','Belcher',13);
-- INSERT INTO warga(nama_depan,nama_belakang,umur) VALUES('Bob','Belcher', 42);
-- INSERT INTO warga(nama_belakang,nama_depan,umur) VALUES('Belcher','Linda', 45),('Frond', 'Philip',38),('Fischoeder', 'Calvin',70);

-- Gimana Kalau Kita Memasukkan Data Yang Salah Atau Melebihi Batasnya?

-- Maka Akan Muncul Warning Ketika SQL Di Jalankan.

-- Cara Menampilkan Errornya Adalah Dengan 

-- SHOW WARNINGS;

-- Jika Melebihi Batas Varchar maka data akan di potong sebagian

-- Bagaimana Jika Kita Tidak Memasukkan Data Ke columns?

-- Maka Otomatis sql akan memberikan value NULL yang berarti tidak ada

-- dan sql tidak akan memberikan warning ketika kita lupa memberikan value,

-- Jadi gimana jika tidak ada value yang NULL?

-- yaitu dengan menggunakan value NOT NULL KETIKA MEMBUAT TABLE

-- //Jawaban 

-- CREATE TABLE warga2 (nama_depan VARCHAR(20) NOT NULL,nama_belakang VARCHAR(20) ,umur INT NOT NULL)

-- LALU BAGAIMANA JIKA KITA LUPA MEMBERIKAN DATA DAN INGIN OTOMATIS SQL MEMBERIKAN DATA DEFAULT SECARA KUSTOM?

-- Jawabannya Adalah Dengan Mengcreate Table Dengan Default Yang Diatur

-- //Jawaban 

-- CREATE TABLE warga2 (nama_depan VARCHAR(20) NOT NULL DEFAULT 'tanpa nama',nama_belakang VARCHAR(20) ,umur INT NOT NULL DEFAULT 99)

-- default column adalah kolom yang bisa menentukan value apa ketika data kita tidak diisi
-- null colum adalah kolom yang menentukan apakah kita bisa memberikan data NULL atau tidak
-- key colum adalah pembeda antara satu baris data dengan yang lainnya walau isi baris datanya kemungkinan sama

-- primary key adalah identitas unik sebuah baris data
-- ada juga foreign key tapi nanti dibahas..

-- //Jawaban 

-- CREATE TABLE warga2 (no_ktp INT NOT NULL,nama_depan VARCHAR(20) NOT NULL DEFAULT 'tanpa nama',nama_belakang VARCHAR(20) ,umur INT NOT NULL DEFAULT 99, PRIMARY KEY(no_ktp));

-- gimana caranya agar otomatis no ktp terisi dan tetep unik?

-- mudahnya dengan AUTO_INCREMENT

-- //Jawaban 

-- CREATE TABLE warga2 (no_ktp INT NOT NULL AUTO_INCREMENT,nama_depan VARCHAR(20) NOT NULL DEFAULT 'tanpa nama',nama_belakang VARCHAR(20) ,umur INT NOT NULL DEFAULT 99, PRIMARY KEY(no_ktp));


-- TEST PART 1

-- Membuat Database Sebuah Kota Di Dalamnya Ada Tabel Warga Yang Memiliki Kolom no_ktp,nama,status,pekerjaan Dan memiliki primary key no_ktp not null untuk semuanya jika pekerjaan tidak diisi defaultnya adalah pencari kerja

-- CREATE DATABASE kota_baru;
-- USE kota_baru;
-- CREATE TABLE warga (
--   no_ktp INT NOT NULL AUTO_INCREMENT,
--   nama VARCHAR(40) NOT NULL DEFAULT 'tanpa nama',
--   status_warga VARCHAR(40) NOT NULL DEFAULT 'lajang',
--   pekerjaan VARCHAR(25) NOT NULL DEFAULT 'pencari kerja',
--   PRIMARY KEY(no_ktp)
-- );
-- INSERT INTO warga (nama) VALUES ('Muhammad Billy');
-- INSERT INTO warga (nama,pekerjaan) VALUES ('Achmad Ghuraba','Pelajar'),('Ali Muhammad','Mahasiswa');
-- INSERT INTO warga (nama,pekerjaan,status_warga) VALUES ('Betty','Penulis','menikah'),('Budi','Bankir','menikah');

-- Test 2

-- Membuat Database Perusahaan

-- Membuat Tabel Karyawan dengan kolom

-- id : number auto-increment mandatory primary key
-- last_name : text mandatory
-- first_name : text mandatory
-- middle_name : text not mandatory
-- age : number mandatory
-- current_status : text mandatory default 'employed';

-- CREATE DATABASE PERUSAHAAN_A;
-- Use PERUSAHAAN_A;
-- CREATE TABLE Karyawan (
--   id INT NOT NULL AUTO_INCREMENT,
--   last_name VARCHAR(20) NOT NULL,
--   first_name VARCHAR(20) NOT NULL,
--   middle_name VARCHAR(20),
--   age INT NOT NULL,
--   current_status VARCHAR(25) NOT NULL DEFAULT 'employed',
--   PRIMARY KEY (id)
-- );

-- INSERT INTO Karyawan (last_name,first_name,age) VALUES ('Muhamamd','Jibril',23);

-- MYSQL CRUD

-- Create - INSERT INTO - Membuat Data Dan Dimasukkan Ke Dalam Tabel
-- Read - SELECT - SELECT * - Artinya Membaca Semua Kolom Atau Headers Dalam Sebuah Tabel -
-- * Artinya Semuanya Dan Jika Ingin Spesifik Bisa Menggunakan nama headersnya seperti SELECT name from cats;bisa di pisah dengan , jika ingin lebih dari satu headers atau kolom
-- WHERE sintaks artinya mengambil data dari tabel dengan lebih spesifik misalkan mengambil data dengan kucing yang berumur 10 tahun saja.
-- Contoh SELECT * from cats WHERE name = 'Egg';
-- SELECT column_name from table_name WHERE column_name = Value;

-- Ketika Mengambil Data Ini Tidak Case Insensitive;

-- //Menampilkan hanya id kucing

-- SELECT cat_id from cats;

-- //Menampilkan hanya nama dan breed

-- SELECT name,breed from cats;

-- //Menampilkan kucing-kucing yang breednya tabby

-- SELECT * from cats WHERE breed = 'Tabby';

-- //Menampilkan umur kucing yang sama dengan idnya

-- SELECT cat_id,age FROM cats WHERE cat_id = age;

-- Cara Membuat Alias Untuk Mempermudah membaca tabel

-- Alias tidak akan merubah nama kolom yang sebenarnya hanya mempengaruhi ketika kita membaca.seperti kita mempunyai tabel kucing id kita beri alias id saja.

-- SELECT cat_id AS id FROM cats;
-- SELECT column_name AS alias_name FROM table_name;

-- UPDATE - Mengubah Data Yang Telah Masuk UPDATE SET WHERE - Mengubah Jenis Kucing Tabby Menjadi Short Hair

-- UPDATE cats SET breed = 'Shorthair' WHERE breed= 'Tabby';

-- UPDATE table_name SET column_name = Value WHERE column_name = Value;

-- SEBELUM UPDATE DATA USAHAKAN DI SELECT DULU DATA YANG INGIN DI UPDATE!

-- DELETE - Menghapus Data Dalam Tabel

-- DELETE FROM kucing_kucing WHERE name = 'Egg';

-- DELETE FROM table_name WHERE column_name = Value;

-- PASTIKAN SELECT DULU SEBELUM DELETE DAN UPDATE UNTUK MEMASTIKAN DATA YANG INGIN DI HAPUS ATAU DI UPDATE BENAR!

-- Jika Tanpa WHERE akan Menghapus Semua Data Beda Dengan Drop table yang menghapus table bukan hanya mengosongkan saja

-- Mega Challenge

-- Spring Cleaning

-- Penyimpanan Kloset Tahunan Kita

-- Buat db baju-baju_db
-- buat table baru baju-baju
-- data table :
-- baju_id not null primary key jenis varhcar warna varchar ukuran_baju varchar terakhir_dipakai int
-- 1 t-shirt white s 10
-- 2 t-shirt green s 200
-- 3 polo shirt black m 10
-- 4 tank top blue s 50
-- 5 t-shirt pink s 0
-- 6 polo shirt  red m 5
-- 7 tank top  white s   200
-- 8 tank top  blue  m   15

-- CREATE DATABASE baju_baju_db;
-- USE baju_baju_db;
-- CREATE TABLE baju_baju(
--   baju_id INT NOT NULL AUTO_INCREMENT,
--   jenis VARCHAR(20) NOT NULL,
--   warna VARCHAR(15) NOT NULL,
--   ukuran_baju VARCHAR(6) NOT NULL,
--   terakhir_dipakai INT,
--   PRIMARY KEY (baju_id)
-- );

-- INSERT INTO baju_baju(jenis,warna,ukuran_baju,terakhir_dipakai) 
-- VALUES ('t-shirt','Putih','S',10),
-- ('t-shirt','Hijau','S',200),
-- ('polo shirt','Hitam','M',10),
-- ('tank top','Biru','S',50),
-- ('t-shirt','Pink','S',0),
-- ('polo shirt','Merah','M',5),
-- ('tank top','Putih','S',200),
-- ('tank top','Biru','M',15);

-- SELECT baju_id FROM baju_baju WHERE ukuran_baju='M';
-- UPDATE baju_baju SET ukuran_baju='L' WHERE jenis='polo shirt';
-- SELECT * FROM baju_baju WHERE terakhir_dipakai = 15;
-- UPDATE baju_baju SET terakhir_dipakai = 0 WHERE terakhir_dipakai = 15;
-- SELECT * FROM baju_baju WHERE warna = 'Putih';
-- UPDATE baju_baju SET ukuran_baju = 'XS',warna = 'Putih Kotor' WHERE warna = 'Putih';
-- SELECT * FROM baju_baju;
-- DELETE FROM baju_baju WHERE terakhir_dipakai = 200;
-- SELECT * FROM baju_baju;
-- DELETE FROM baju_baju WHERE jenis = 'tank top';
-- SELECT * FROM baju_baju;
-- DELETE FROM baju_baju;
-- DROP TABLE baju_baju;

-- MYSQL String Function

-- Cara Menjalankan File Sql Dengan CLI Mysql

-- source file_name.sql

-- Books Data
-- CREATE DATABASE toko_buku;
-- USE toko_buku;
-- CREATE TABLE buku_buku (
--   buku_id INT NOT NULL AUTO_INCREMENT,
--   judul VARCHAR(100) NOT NULL,
--   nama_depan_pengarang VARCHAR(100) NOT NULL,
--   nama_belakang_pengarang VARCHAR(100) NOT NULL,
--   tahun_rilis INT,
--   jumlah_stock INT,
--   jumlah_halaman INT,
--   PRIMARY KEY (buku_id)
-- );

-- INSERT INTO buku_buku(judul,nama_depan_pengarang,nama_belakang_pengarang,tahun_rilis,jumlah_stock,jumlah_halaman) VALUES 
-- ('The Namesake', 'Jhumpa','Lahiri',2003,32,291),
-- ('Norse Mythology','Neil','Gaiman',2016,43,304),
-- ('American Gods','Neil','Gaiman',2001,21,465),
-- ('Interpreter Of Maladies','Jhumpa','Lahiri',1996,97,198),
-- ('A Hologram For The King : A Novel','Dave','Eggers',2012,154,352),
-- ('The Circle','Dave','Eggers',2013,26,504),
-- ('The Amazing Adventure Of Kavalier & Clay','Michael','Chabon',2000,68,634),
-- ('Just Kids','Patti','Smith',2010,55,304),
-- ('A Heartbreaking Work Of Staggering Genius','Dave','Eggers',2001,104,437),
-- ('Coraline','Neil','Gaiman',2003,100,208),
-- ('What We Talk About When We Talk About Love: Stories','Raymond','Carver',1981,23,176),
-- ('Where I"m Calling From: Selected Stories','Raymond','Carver',1989,12,526),
-- ('White Noise','Don','DeLillo',1985,49,320),
-- ('Connery Row','John','Steinbeck',1945,95,181),
-- ('Oblivion:Stories','David','Foster Wallace',2004,172,329),
-- ('Consider The Lobster','David','Foster Wallace',2005,92,343);

-- Concat Menggabungkan DATA Agar Output Lebih Rapi

-- Syntax : 

-- CONCAT(column,anothercolumn);
-- CONCAT(column,'text',anothercolumn,'more text');
-- Contoh : CONCAT(nama_depan_pengarang,nama_belakang_pengarang);

-- Harus Pakai SELECT Sebelum CONCAT

-- Jadi : SELECT CONCAT(column,anothercolumn) As 'full name' FROM table_name;

-- INI TIDAK MERUBAH DATA HANYA KETIKA MENAMPILKANNYA AJA


-- CONCAT_WS : With Separator

-- SELECT CONCAT_WS('-'judul,nama_depan_pengarang,nama_belakang_pengarang) FROM buku_buku;

-- SUBSTRING

-- Memilih Dari String Menjadi Bagian

-- SELECT SUBSTRING('Hello World',1,4);
-- Bisa Satu Argumen 1 aja Maka Sisanya Akan Di print
-- SELECT SUBSTRING('Hello World',7);
-- Hasilnya Akan World
-- Bisa Negatif Jika Ingin Mengambil String Dari Belakang dam satu argumen aja

-- SELECT SUBSTRING(column_name,0,0) FROM table_name;

-- Bisa Dicombine Antar Function

-- REPLACE Mengganti bagian string

-- SELECT REPLACE('Hello World','Hell','#%$^');

-- SELECT REPLACE('text'/column_string_type,'Word Want To Change','Changed Word') FROM table_name;
-- Case Sensitive

-- REVERSE

-- CHAR_LENGTH
-- UPPER(),LOWER()