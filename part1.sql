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
-- ('Consider The Lobster','David','Foster Wallace',2005,92,343),
-- ('10% Happier','Dan','Harris',2014,29,256),
-- ('Fake_Book','Freida','Harris',2001,287,428),
-- ('Lincoln In The Bardo','George','Saunders',2017,1000,367);

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
-- UPPER(),LOWER() SELECT UPPER()

-- STRING FUNCTION EXERCISE

-- Balik Dan uppercase kata ini = 'Kenapa Kucingku Menatapku Dengan Tatapan Benci?'

-- SELECT REVERSE(UPPER('Kenapa Kucingku Menatapku Dengan Tatapan Benci?'));

-- Aku-Suka-Kucing

-- Merubah Spasi Dengan Tanda -> Di Judul Buku

-- SELECT judul FROM buku_buku;
-- SELECT REPLACE(judul,' ','->') AS Judul FROM buku_buku;

-- Membalik Nama depan pengarang

-- SELECT nama_depan_pengarang FROM buku_buku;

-- SELECT 
--   CONCAT (nama_depan_pengarang) AS "nama depan",
--   REVERSE (nama_depan_pengarang) AS "nama depan terbalik";

-- Menggabungkan nama pengarang kemudian menjadikan upper

-- SELECT nama_depan_pengarang,nama_belakang_pengarang FROM buku_buku;

-- SELECT 
-- 	CONCAT(UPPER(nama_depan_pengarang),' ',UPPER(nama_belakang_pengarang)) AS "nama lengkap dengan huruf besar" FROM buku_buku;


-- buat blurb

-- Contoh : Judul Buku diterbitkan sejak tahun ....

-- SELECT judul,tahun_rilis FROM buku_buku;

-- SELECT CONCAT(judul,' Diterbitkan Sejak Tahun ',tahun_rilis) AS blurb FROM buku_buku;

-- Tampilkan Judul Buku Dan Panjang Karakter Judul Tersebut

-- SELECT judul FROM buku_buku;

-- SELECT 
-- 	judul AS Judul,
--     CHAR_LENGTH(judul) AS "Jumlah Huruf"
--     FROM buku_buku;

-- Menampilkan Judul Buku Lebih Pendek,nama Pengarang(belakang,depan),dan stok

-- Jadi : Judul Pendek,pengarang,stok ada angka

-- SELECT judul,nama_depan_pengarang,nama_belakang_pengarang,jumlah_stock FROM buku_buku;

-- SELECT 
-- 	CONCAT(SUBSTRING(judul,1,10),'...') AS "Judul Pendek",
--     CONCAT(nama_belakang_pengarang,',',nama_depan_pengarang) AS "Nama Pengarang",
--     CONCAT(jumlah_stock,' Jumlah Stok Bukunya') AS "Stok Buku"
-- FROM buku_buku;

-- SELECT Lebih Spesifik

-- DISTINCT 

-- SELECT DISTINCT nama_belakang_pengarang FROM buku_buku;

-- Menampilkan Data Yang Spesifik Misalkan Menampilkan Nama Pengarang Yang Lebih Dari 1 Karena Menerbitkan Lebih Dari 1 Buku Bisa Di Anulir.


-- ORDER BY - Mensortir Hasil Kita

-- SELECT column_name FROM table_name ORDER BY column_name/angka column_name yang terpilih misalkan column_name sebelumnya ada 3 bisa milih antara 1,2,3/column_name di ORDER BY bisa lebih dari 1 dalam kondisi tertentu;
-- Ascending Defaultnya.Kalau Mau Descending + DESC di belakangnya

-- LIMIT - Batas Berapa Banyak Data Yang Ingin Diambil

-- LIMIT angka;

-- SELECT column_name FROM table_name ORDER BY column_name LIMIT angka awal optional dimulai di 0,berapa banyak yang dimau;

-- ORDER BY Baru Limit = Contoh Mengambil Data Buku Keluaran Terlama 3 JudulBuku Saja

-- LIKE - Mengambil Data Yang Tidak Sespesifik WHERE

-- SELECT column_name FROM table_name WHERE nama_depan_pengarang LIKE '%da%'; -%% itu wildcards dan wajib kalau belakang nya aja yang persen berarti harus mirip banget bukan yang mengandung kalimat aja.Tanpa %% maka akan menjadi yang bener2 da aja.

-- LIKE '____' 4 underscore berapa banyak underscore menentukan banyak karakter
-- jika ingin mencari yang mengandung persen atau _ maka sebelumnya menggunakan \
-- LIKE tidak case insensitive
-- TEST

-- menampilkan judul buku yang hanya ada kata stories nya

-- SELECT judul FROM buku_buku WHERE judul LIKE '%stories%';

-- temukan buku yang paling panjang

-- -- SELECT judul,jumlah_halaman FROM buku_buku ORDER BY jumlah_halaman DESC LIMIT 1;

-- -- SELECT CONCAT(judul,' - ',tahun_rilis) AS rangkuman FROM buku_buku ORDER BY tahun_rilis DESC LIMIT 3;

-- temukan semua buku yang nama akhir pengarangnya punya tanda spasi

-- SELECT judul,nama_belakang_pengarang FROM buku_buku WHERE nama_belakang_pengarang LIKE '% %';

-- Temukan 3 buku yang paling sedikit stoknya dengan nama pengarang secara alfabet

-- SELECT judul,tahun_rilis,jumlah_stock FROM buku_buku ORDER BY jumlah_stock,nama_depan_pengarang LIMIT 3;

-- Menampilkan Semua Buku Dengan di sortir nama belakang pengarang secara berurutan baru judul bukunya

-- SELECT judul,nama_belakang_pengarang FROM buku_buku ORDER BY nama_belakang_pengarang,judul;

-- Meneriakkan Semua Nama Pengarang Secara alfabet

-- SELECT CONCAT('PENGARANG FAVORITKU ADALAH ',UPPER(nama_belakang_pengarang),' ',UPPER(nama_depan_pengarang),'!') AS Teriak FROM buku_buku ORDER BY nama_belakang_pengarang;


-- Aggregate Functions

-- COUNT - Menghitung Jumlah Sesuatu Data

-- SELECT COUNT(*) FROM table_name; - Berapa Banyak Buku Dalam table Itu;

-- SELECT COUNT(DISTINCT nama_depan_pengarang,column_name optional) FROM buku_buku; - Berapa Banyak nama Depan Pengarang Dalam Tabel Secara Spesifik

-- Bisa Menggabungkan COUNT di dalamnya 2 column_name;

-- Menghitung Semua Judul Buku Yang Mengandukung Kata The

-- SELECT COUNT(judul) FROM buku_buku WHERE judul LIKE '%the%';

-- GROUP BY - Mengelompokkan Data Yang Berkaitan Menjadi Satu Baris 

-- Contoh Mengambil Data Buku Berdasarkan nama pengarang di kelompokkan dan di lihat mana yang paling laku

-- SELECT judul,nama_belakang_pengarang,COUNT(*) FROM buku_buku GROUP BY nama_belakang_pengarang,column_name 2 optional;

-- MIN AND MAX - SELECT MIN/MAX(column_name) FROM table_name;

-- + GROUP BY

-- SELECT nama_depan_pengarang,nama_belakang_pengarang,MIN(tahun_rilis) FROM buku_buku GROUP BY nama_belakang_pengarang,nama_depan_pengarang;  //2 column_name GROUP BY Karena Ada Yang sama Contohnya Harris

-- Cara Menampilkan Data Tahun Berapa Buku Pertama Pengarang Rilis

-- SUM - Menjumlahkan Semua Data

-- SELECT SUM(column_name (number type)) FROM table_name;

-- + GROUP BY 

-- SELECT nama_depan_pengarang,nama_belakang_pengarang, SUM(jumlah_halaman) FROM buku_buku GROUP BY nama_belakang_pengarang,nama_depan_pengarang; 

-- Mengetahui Jumlah Halaman Buku Yang Ditulis Tiap Pengarang;

-- AVG - AVERAGE - RATA-RATA 

-- SELECT AVG(column_name(num type)) FROM table_name;

-- SELECT nama_depan_pengarang,nama_belakang_pengarang, AVG(jumlah_halaman) FROM buku_buku GROUP BY nama_belakang_pengarang,nama_depan_pengarang; 

-- TEST

-- Menampilkan Jumlah Buku Dalam Database

-- SELECT COUNT(judul) FROM buku_buku;

-- Menampilkan Jumlah Buku Yang Terbit Di Tahunnya

-- SELECT tahun_rilis,COUNT(*) FROM buku_buku GROUP BY tahun_rilis;

-- Menampilkan Jumlah Buku Yang Ada Di Stok

-- SELECT SUM(jumlah_stock) AS "Stok Toko" FROM buku_buku;

-- Menampilkan Rata-Rata Tahun Rilis Tiap Pengarang

-- SELECT CONCAT(nama_belakang_pengarang,'-',nama_depan_pengarang) AS Pengarang,AVG(tahun_rilis) FROM buku_buku GROUP BY nama_belakang_pengarang,nama_belakang_pengarang;

-- Menemukan Nama Lengkap Pengarang Yang Membuat Buku Terpanjang

-- SELECT CONCAT(nama_depan_pengarang,'-',nama_belakang_pengarang) AS Pengarang,judul,jumlah_halaman FROM buku_buku ORDER BY jumlah_halaman DESC LIMIT 1;

-- Menampilkan Tahun Jumlah Buku yang rilis Dan Rata-rata Halamannya

-- SELECT tahun_rilis AS tahun,COUNT(*) AS 'Jumlah Buku',AVG(jumlah_halaman) AS 'Rata-Rata Halaman' FROM buku_buku GROUP BY tahun_rilis;

-- DATA TYPE PART 2

-- CHAR - VERSI KAKU DARI VARCHAR CHAR(4) 4 BYTES TIDAK PEDULI ISI DATANYA KALAU VARHCAR(4) Bisa 1-5 bytes tergantung isinya.Biasanya digunakan Jika Kita Tahu Isinya Pasti Beberapa Karakter SAJA.Seperti Ya/Tidak Menjadi Y/N.Maksimal 255

-- NUMBERS - INT - Angka Penuh - DECIMAL - Angka Pecahan 

-- DECIMAL (5,2) 5 - Total Digit Angka Yang Bisa Masuk, 2 Total Decimal Belakang Angka Penuh.Misalkan 123.23; 5 max 65 2 max 30

-- Kalau Value yang masuk lebih besar maka akan di tampilkan data terbesarnya.dan di bulatin
-- jika decimal melebihi jumlahnya

-- FLOAT - DOUBLE - Menyimpan Data Lebih Besar Dengan Ruang Kecil - F 4byte D 8 byte 7&15 digit precision - Jika Melebihi 7 & 15 digit data nya berubah

-- DATES & TIMES 

-- DATE - Tanggal Tanpa Jam YYYY-MM-DD Format 

-- TIME - Jam Tanpa Tanggal HH:MM:SS Format

-- DATETIME - Jam + Tanggal YYYY-MM-DD HH:MM:SS memasukkan data harus dengan '' jadi anggap seperti string

-- -- CURDATE()
-- -- CURTIME()
-- -- NOW()

-- FORMATTING DATES

-- DAY() - ANGKA  SELECT DAY(column_name)FROM buku_buku
-- DAYNAME() -> HARINYA,DAYOFWEEK() -> ANGKA, DAYOFYEAR() -> ANGKA kalau bukan tipe date/datetime maka NULL

-- MONTH(),MONTHNAME(),

-- HOUR(),MINUTE

-- DATE_FORMAT(date/data,'format');
-- %W,%M,%Y = Hari,Bulan,Tahun Str,Str,num

-- Ada Juga TIME_FORMAT(time,'format');

-- DATE MATH

-- DATEDIFF(date/data,date2/data2);

-- date + expression unit
-- date - expression unit

-- DATE_ADD(data/date,INTERVAL expression unit)
-- DATE_SUB(data/date,INTERVAL expression unit)

-- TIMESTAMPS min 1970 max 2038 4 bytes 8 date time bytes

-- CREATE TABLE table_name (
--   content VARCHAR(100) NOT NULL,
--   created_at TIMESTAMP DEFAULT NOW() ON UPDATE NOW()
-- );

-- Ketika kita update data maka timestamp yang sebelumnya akan berubah mengikuti now terbaru

-- membuat table dengan harga lebih kecil dari 1 juta

-- CREATE TABLE barang(
--   nama_barang CHAR(20),
--   harga DECIMAL(5,0),
--   jumlah_stok INT,
-- )

-- Menampilkan Hari Ini Dengan Format mm/dd/yyyy

-- SELECT judul,DATE_FORMAT(NOW(),'%m/%d/%Y') FROM buku_buku;

-- Menampilkan 2 Januari Pukul 3:15

-- SELECT judul,DATE_FORMAT(NOW(),'%d %M Pukul %H:minute ada di dokumentasi') FROM buku_buku;

-- buat table tweet yang menyimpan username,isi cuitan,kapan dibuat

-- CREATE TABLE tweet (
--   username CHAR(20),
--   isi_cuitan CHAR(140),
--   created_at TIMESTAMP DEFAULT NOW() ON UPDATE NOW();
-- );

-- LOGICAL OPERATOR AND OR NOT XOR 

-- != - NOT EQUAL 
-- NOT LIKE - Kebalikan LIKE 
-- > - Greater Than SELECT judul FROM buku_buku WHERE tahun_rilis > 2000;
-- Mengambil Buku Yang rilis diatas tahun 2000
-- >= - Greater Then Or Equal

-- Jika Hanya SELECT 99 > 1; Hasilnya Akan 1 Atau True;

-- < - Less Than

-- <= 

-- CASE SENSITIVE NOT MATTER WHEN COMPARE CHAR

-- && - LOGICAL AND / Bisa Pakai && Atau AND

-- Menampilkan Data Buku Karangan Egger Yang Terbit Tahun 2010 Ke atas

-- SELECT * FROM buku_buku WHERE nama_belakang_pengarang = 'Eggers' && tahun_rilis > 2010;

-- || LOGICAL OR

-- BETWEEN 

-- SELECT judul FROM buku_buku WHERE tahun_rilis BETWEEN 2004 AND/Harus AND 2015


-- NOT BETWEEN - Kebalikan BETWEEN

-- SELECT judul FROM buku_buku WHERE tahun_rilis NOT BETWEEN 2000 AND 2004;

-- CATATAN : UNTUK DATE TYPE HARUS DI CAST AGAR SERUPA SATU SAMA LAINNYA

-- CAST() - Merubah Tipe Data

-- SELECT CAST('2017-05-02' AS DATETIME);

-- IN Mempermudah Menampilkan Data Yang Berkaitan Misalkan Tampilkan Buku Yang Pengarangnya Nama nya A ATAU B ATAU C Kita Bisa Pakai OR Tapi Kita Bisa Pakai IN Juga!

-- SELECT judul,nama_belakang_pengarang FROM buku_buku WHERE nama_belakang_pengarang IN('Carver','Lahiri','Smith');

-- SELECT column_name FROM table_name WHERE column_name IN(data,data,data optional);

-- NOT IN - Kebalikan Dari OR Berarti AND

-- % - MODULO 

-- SELECT judul FROM buku_buku WHERE tahun_rilis >= 2000 AND tahun_rilis % 2 != 0;

-- CASE STATEMENTS 

-- SELECT column_name,CASE WHEN column_name >= 2000 WHEN optional WHEN optional THEN optional THEN 'Modern Lit'
-- ELSE  '20th Century Lit'
-- END AS Era
-- FROM table_name;

-- tiap when ada then

-- Test

-- TAMPILKAN DATA BUKU YANG TERBIT SEBELUM TAHUN 1980 

-- SELECT judul,nama_depan_pengarang,tahun_rilis FROM buku_buku WHERE tahun_rilis>1980;

-- TAMPILKAN DATA BUKU YANG PENGARANGNYA ADALAH EGGERS ATAU CHABON

-- SELECT judul,nama_belakang_pengarang FROM buku_buku WHERE nama_belakang_pengarang IN('Eggers','Chabon');

-- TAMPILKAN BUKU KARANGAN LAHIRI TERBIT DIATAS TAHUN 2000

-- SELECT judul,nama_belakang_pengarang,tahun_rilis FROM buku_buku WHERE nama_belakang_pengarang='Lahiri' AND tahun_rilis >= 2000;

-- TAMPILKAN BUKU YANG MEMILIKI JUMLAH HALAMAN ANTARA 100-200

-- SELECT judul,jumlah_halaman FROM buku_buku WHERE jumlah_halaman BETWEEN 100 AND 200;

-- TAMPILKAN BUKU YANG NAMA PENGARANGNYA DEPANNYA C ATAU S

-- SELECT judul,nama_belakang_pengarang FROM buku_buku WHERE nama_belakang_pengarang LIKE 'c%' || nama_belakang_pengarang LIKE 's%';

-- Tampilkan Data Jika judul ada stories nya menjadi short stories tipenya
-- just kids dan a Heartbreaking work menjadi memoir
-- sisanya novel

-- SELECT judul,
-- CASE WHEN judul LIKE '%stories%' THEN 'Short Stories' 
-- WHEN judul='Just Kids' && judul LIKE '%a Heartbreaking work%' THEN 'Memoir' 
-- ELSE 'Novel' END
-- AS Tipe FROM buku_buku;

-- TAMPILKAN DATA JUMLAH BUKU YANG DI TERBITKAN OLEH TIAP PENGARANG

-- SELECT nama_belakang_pengarang,CASE 
-- WHEN COUNT(nama_belakang_pengarang) = 1 THEN '1 Book'
-- ELSE CONCAT(COUNT(nama_belakang_pengarang),' Books')END AS 'Jumlah Buku Yang Terbit'
-- FROM buku_buku GROUP BY nama_belakang_pengarang;

-- RELATIONSHIPS AND JOINS

-- BASICS

-- ONE TO ONE RELATIONSHIP NOT COMMON
-- ONE TO MANY RELATIONSHIP COMMON CONTOH TIAP BUKU PUNYA BANYAK REVIEW TAPI REVIEW HANYA PUNYA 1 BUKU YANG DI REVIEW
-- MANY TO MANY RELATIONSHIP CONTOH PENGARANG DENGAN BUKU BUKU BISA DIBUAT OLEH BEBERAPA PENGARANG DAN PENGARANG BISA MEMBUAT BANYAK BUKU

-- 1:MANY MOST COMMON CONTOH CUSTOMERS DAN ORDERS 2 TABEL

-- 1 PELANGGAN BISA MEMESAN BANYAK MAKANAN TAPI BANYAK MAKANAN ITU HANYA TERTUJU KE 1 PELANGGAN ITU

-- INI SEMUANYA PERLU FOREIGN KEY YAITU REFRENSI DARI PRIMARY KEY YANG BERKAITAN DENGAN TABEL YANG KITA INGINKAN

-- CREATE DATABASE toko_makanan;

-- CREATE TABLE para_pelanggan (
--     id_pelanggan INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
-- 	nama_depan VARCHAR(100) NOT NULL,
--     nama_belakang VARCHAR(100) NOT NULL,
--     email VARCHAR(100) NOT NULL
-- );

-- CREATE TABLE pesanan (
-- 	id_pesanan INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--     tanggal_pesanan DATE NOT NULL DEFAULT NOW(),
--     total_pesanan DECIMAL(5,2) NOT NULL,
--     id_pelanggan INT,
--     FOREIGN KEY (id_pelanggan)REFERENCES para_pelanggan(id_pelanggan) ON DELETE CASCADE
    
-- )

-- Foreign Key membatasi kita memasukkan data agar sesuai dengan yang di refrensikan

-- FOREIGN KEY (column_name)REFERENCES table_name_that_want_to_refrences(column_name_that_want_to_refrences)

-- JOIN - Menggabungkan 2 Tabel Menjadi Satu Untuk Ditampilkan Dan Tidak Berubah Untuk Strukturnya

-- SELECT * para_pelanggan,pesanan - CROSS JOIN - INI SALAH

-- IMPLICIT INNER JOIN - USELESS 

-- SELECT * para_pelanggan,pesanan WHERE para_pelanggan.id_pelanggan = pesanan.id_pesanan;

-- SELECT * table_name,table_name2 WHERE table_name.column_name = table_name2.column_name2; - CROSS JOIN - INI BENAR

-- EXPLICIT INNER JOIN - CARA LEBIH BAIK 

-- SELECT * FROM para_pelanggan JOIN pesanan ON para_pelanggan.id_pelanggan = pesanan.id_pelanggan;

-- SELECT column_name FROM table_name JOIN table_name2 ON table_name.column_name = table_name2.column_name2;

-- SELECT nama_depan,nama_belakang,tanggal_pesanan,total_pesanan FROM para_pelanggan JOIN pesanan ON para_pelanggan.id_pelanggan = pesanan.id_pelanggan;

-- -- ARBITRARY JOIN - JANGAN PAKAI

-- Mengetahui Pelanggan Yang Memesan Paling Banyak

-- SELECT nama_depan,nama_belakang,SUM(total_pesanan) AS jumlahPesanan FROM para_pelanggan JOIN pesanan ON para_pelanggan.id_pelanggan = pesanan.id_pelanggan GROUP BY pesanan.id_pelanggan ORDER BY jumlahPesanan DESC; -- EXPLICIT INNER JOIN

-- LEFT JOIN 

-- SELECT nama_depan,nama_belakang,total_pesanan FROM para_pelanggan LEFT JOIN pesanan ON para_pelanggan.id_pelanggan = pesanan.id_pelanggan;

-- Mengambil Bagian Kiri Yaitu column_name pertama disini para_pelanggan tidak peduli benar atau tidaknya sesuai dengan ON nya;

-- HASIL DIATAS ADALAH WALAUPUN ADA PELANGGAN YANG BELUM MEMESAN TETAP DATA DITAMPILKAN DENGAN NULL KARENA TIDAK PEDULI BENAR ONNYA MAKA YANG BAGIAN KIRI ATAU table_name 1 AKAN TAMPIL.

-- JIKA DATA NULL KITA BISA MENGGUNAKAN IFNULL(SUM(total_pesanan),0/value yang ingin dimasukkan);

-- RIGHT JOIN - KEBALIKAN LEFT JOIN

-- ON DELETE CASCADE -- Menghapus data yang mengandung foreign key ketika data yang di refrensikan hilang.Contoh ketika si a memesan 2 makanan maka jika a hilang 2 pesanan itu juga hilang.sebelumnya tidak bisa kita hapus pesanan karena si a masih ada sekarang bisa.



-- Membuat 2 tabel paramurid dan pararapot

-- para murid column = id,first_name
-- pararapot = title,grade,murid.id

-- CREATE DATABASE dalam_kelas;
-- USE dalam_kelas;

-- CREATE TABLE para_murid (
--   id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--   nama_depan VARCHAR(30) NOT NULL
-- )

-- CREATE TABLE rapor (
--   judul VARCHAR(20) NOT NULL,
--   nilai INT NOT NULL DEFAULT 0,
--   id INT,
--   FOREIGN KEY (id) REFERENCES para_murid(id) ON DELETE CASCADE
-- )

-- INSERT INTO para_murid (nama_depan) VALUES ('Caleb'),('Samantha'),('Raj'),('Carlos'),('Lisa');

-- INSERT INTO rapor (id,judul,nilai) VALUES (1,'My First Book Report',60),(1,'My Second Book Report',75),(2,'Russian Lit Through The Ages',94),(2,'De Montaigne And The Art Of The Essay',98),(4,'Borges And Magical Realism',89);

-- Tampilkan Data Dengan Nama Murid judul rapor dan nilainya Dan Nilai Paling Besar Di atas

-- SELECT nama_depan,judul,nilai FROM para_murid JOIN rapor ON para_murid.id = rapor.id ORDER BY nilai DESC;

-- Tampilkan Data Semua Murid judul rapor nilai tidak peduli ada nilai atau tidak

-- SELECT nama_depan,judul,nilai FROM para_murid LEFT JOIN rapor ON para_murid.id = rapor.id;

-- Tampilkan Data Murid Diatas Ubah Null Menjadi Missing Atau 0

-- SELECT nama_depan,IFNULL(judul,'HILANG'),IFNULL(nilai,0) FROM para_murid LEFT JOIN rapor ON para_murid.id = rapor.id;

-- Membuat Rata-rata nilai tiap murid dan paling atas nilai paling besar

-- SELECT nama_depan,AVG(IFNULL(nilai,0)) AS 'Rata-rata' FROM para_murid LEFT JOIN rapor ON para_murid.id = rapor.id GROUP BY para_murid.id ORDER BY nilai DESC;

-- Kemudian Menambah Status Lulus Tidaknya Dengan Nilai Dibawah 50 Gagal

-- SELECT nama_depan,AVG(IFNULL(nilai,0)) AS 'Rata-rata' ,CASE 
-- WHEN nilai IS NULL THEN 'GAGAL'
-- WHEN nilai > 75 THEN 'LULUS' ELSE 'GAGAL' END AS Kelulusan FROM para_murid 
-- LEFT JOIN rapor ON para_murid.id = rapor.id 
-- GROUP BY para_murid.id 
-- ORDER BY nilai DESC;

-- MANY MANY RELATIONSHIP - RELATIONSHIP YANG UMUM DIPAKE LEBIH RUMIT DARI ONE TO MANY

-- CONTOH : BUKU - PENGARANG - Buku punya banyak pengarang,Dan tiap pengarang punya beberapa buku terbitan
-- MURID - KELAS 
-- POST - TAGS 

-- CONTOH YANG AKAN DI BUAT APLIKASI MEREVIEW ACARA TV

-- KITA SEBAGAI REVIEWER MEMBUAT REVIEW DAN RATE ACARA TV DAN ACARA TV ITU MEMILIKI BANYAK REVIEW OLEH REVIEWER LAIN JUGA

-- ADA 2 TABEL TABEL ACARA TV DAN TABEL PARA PENILAI.PARA PENILAI MEMBERIKAN NILAI DI ACARA TV ITU YANG BISA KITA BUAT TABEL TERSENDIRI.TABEL NILAI ATAU REVIEW TERDIRI DARI ACARA TV ITU SENDIRI,REVIEWER,DAN NILAI YANG DIBERIKAN

-- UNION JOIN

-- Reviewers
-- id
-- nama_depan
-- nama_belakang

-- 1 blue steele
-- 2 wyatt earp

-- Reviews
-- id
-- rating
-- series_id = series.id
-- reviwer_id = reviewers.id

-- 1 8.9 1 2
-- 2 9.5 2 2



-- Series
-- id
-- title
-- released_year
-- genre

-- 1 archer 2009 animation
-- 2 fargo 2014 drama

-- CREATE DATABASE tv_show_app;
-- USE tv_show_app;

-- CREATE TABLE reviewers (
--   id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--   nama_depan VARCHAR(100) NOT NULL,
--   nama_belakang VARCHAR(100) NOT NULL
-- );

-- CREATE TABLE series (
--   id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--   judul VARCHAR(100) NOT NULL,
--   tahun_rilis YEAR(4) NOT NULL,
--   genre VARCHAR(100) NOT NULL
-- );

-- CREATE TABLE reviews (
--   id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--   rating DECIMAL(2,1) NOT NULL,
--   id_series INT,
--   id_reviewer INT,
--   FOREIGN KEY (id_series) REFERENCES series(id) ON DELETE CASCADE,
--   FOREIGN KEY (id_reviewer) REFERENCES reviewers(id) ON DELETE CASCADE
-- );

-- INSERT INTO series (judul,tahun_rilis,genre) VALUES
-- ('Archer',2009,'Animation'),
-- ('Arrested Development',2003,'Comedy'),
-- ("Bob's Burgers",2011,'Animation'),
-- ('Bojack Horseman',2014,'Animation'),
-- ('Breaking Bad',2008,'Drama'),
-- ('Curb Your Enthusiasm',2000,'Comedy'),
-- ('Fargo',2014,'Drama'),
-- ('Freaks And Geeks',1999,'Comedy'),
-- ('General Hospital',1963,'Drama'),
-- ('Halt And Catch Fire',2014,'Drama'),
-- ('Malcolm In The Middle',2000,'Comedy'),
-- ('Pushing Daisies',2007,'Comedy'),
-- ('Seinfeld',1989,'Comedy'),
-- ('Stranger Things',2016,'Drama');

-- INSERT INTO reviewers (nama_depan,nama_belakang) VALUES
-- ('Thomas','Stoneman'),
-- ('Wyatt','Skaggs'),
-- ('Kimbra','Masters'),
-- ('Domingo','Cortes'),
-- ('Colt','Steele'),
-- ('Pinkie','Petit'),
-- ('Marlon','Crafford');

-- INSERT INTO reviews (id_series,id_reviewer,rating) VALUES
-- (1,1,8.0),(1,2,7.5),(1,3,8.5),(1,4,7.7),(1,5,8.9),
-- (2,1,8.1),(2,4,6.0),(2,3,8.0),(2,6,7.1),(2,5,8.0),
-- (3,1,7.0),(3,6,7.5),(3,4,8.0),(3,3,7.1),(3,5,8.0),
-- (4,1,7.5),(4,3,7.8),(4,4,8.3),(4,2,7.6),(4,5,8.5),
-- (5,1,9.5),(5,3,9.0),(5,4,9.1),(5,2,9.3),(5,5,9.9),
-- (6,2,6.5),(6,3,7.8),(6,4,8.8),(6,2,8.4),(6,5,9.1),
-- (7,2,9.1),(7,5,9.7),
-- (8,4,8.5),(8,2,7.8),(8,6,8.8),(8,5,9.3),
-- (9,2,5.5),(9,3,6.8),(9,4,5.8),(9,6,4.3),(9,5,4.5),
-- (10,5,9.9),
-- (13,3,8.0),(13,4,7.2),
-- (14,2,8.5),(14,3,8.9),(14,4,8.9);

-- Challenge 1

-- SELECT judul,rating FROM series JOIN reviews ON reviews.id_series = series.id LIMIT 15;

-- Challenge 2

-- Menampilkan data series yang ada ratingnya beserta rating rata2nya

-- SELECT judul,AVG(rating) AS 'Rata-rata Rating' FROM series JOIN reviews ON series.id = reviews.id_series GROUP BY series.id ORDER BY rating;

-- Challenge 3

-- Menampilkan data reviewers beserta rating yang diberikan

-- SELECT nama_depan,nama_belakang,rating FROM reviewers JOIN reviews ON reviewers.id = reviews.id_reviewer;

-- Challenge 4

-- Menampilkan seri yang belum di review

-- SELECT judul AS 'seri belum di review' FROM series LEFT JOIN reviews ON reviews.id_series = series.id WHERE rating IS NULL;

-- Challenge 5

-- Menampilkan Rating rata2 Tiap Genre

-- SELECT genre,ROUND(AVG(rating),2) AS Ratarata FROM series JOIN reviews ON series.id = reviews.id_series GROUP BY genre;

-- ROUND(data,berapa digit)

-- Challenge 6 

-- Menampilkan data reviewers secara penuh dan menentukan active tidaknya

-- SELECT nama_depan,
-- nama_belakang,
-- COUNT(reviews.id_reviewer),
-- IFNULL(ROUND(MIN(rating),2),0),
-- IFNULL(ROUND(MAX(rating),2),0),
-- IFNULL(ROUND(AVG(rating),2),0),
-- CASE WHEN COUNT(reviews.id_reviewer) = 0 THEN 'INACTIVE' 
-- ELSE 'ACTIVE' END AS Status 
-- FROM reviewers 
-- LEFT JOIN reviews ON reviewers.id = reviews.id_reviewer 
-- GROUP BY reviewers.id ORDER BY Status ;

-- Challenge 7 

-- Menampilkan Judul Rating Reviewers

-- SELECT judul,rating,CONCAT(nama_depan,'',nama_belakang) AS reviewer  FROM reviewers JOIN reviews ON reviewers.id = reviews.id_reviewer JOIN series ON series.id = reviews.id_series ORDER BY judul;

-- INSTAGRAM CLONE MOCK DATABASE

users table id,username,created_at
photos table id,image_url,user_id,created_at
likes table user_id,photo_id,created_at
hashtags table 
comments table id,comment_text,user_id,photo_id,created_at
follows table follower_id,followee_id,created_at


follower pengikut yang mengikuti followee

CREATE DATABASE instagram_mock;
USE instagram_mock;

CREATE TABLE users (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(100) NOT NULL UNIQUE,
  created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE photos (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  image_url VARCHAR (255) NOT NULL,
  user_id INT NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT NOW()
  FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE comments (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  comment_text VARCHAR(255) NOT NULL,
  user_id INT NOT NULL,
  photo_id INT NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  FOREIGN KEY (user_id) REFERENCES users(id) 
  FOREIGN KEY (photo_id) REFERENCES photos(id) 
);

CREATE TABLE likes (
  user_id INT NOT NULL,
  photo_id INT NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  FOREIGN KEY (user_id) REFERENCES users(id) 
  FOREIGN KEY (photo_id) REFERENCES photos(id),
  PRIMARY KEY (user_id,photo_id) -- memberikan aturan agar like hanya bisa dilakukan sekali per user
);

CREATE TABLE follows (
  follower_id INT NOT NULL
  followee_id INT NOT NULL
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  FOREIGN KEY (follower_id) REFERENCES users(id),
  FOREIGN KEY (followee_id) REFERENCES users(id),
  PRIMARY KEY (follower_id,followee_id) --memberikan aturan agar kita hanya bisa follow sekali
);

CREATE TABLE tags (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  tag_name VARCHAR(255) NOT NULL UNIQUE,
  created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE photo_tags (
  photo_id INT NOT NULL,
  tag_id INT NOT NULL,
  FOREIGN KEY (photo_id) REFERENCES photos(id),
  FOREIGN KEY (tag_id) REFERENCES tags(id),
  PRIMARY KEYY (photo_id,tag_id)
);

DATA Nanti Kalau Ada Quota Karena Perlu Download





























































