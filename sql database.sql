-- Desain ERD untuk Nota Shopee

-- Tabel Pelanggan
CREATE TABLE Pelanggan (
    Nama_Penerima VARCHAR(100) PRIMARY KEY,
    Alamat_Penerima TEXT,
    Nomor_Telepon VARCHAR(20)
);

-- Tabel Pesanan
CREATE TABLE Pesanan (
    No_Pesanan VARCHAR(20) PRIMARY KEY,
    Tanggal_Pembayaran DATE,
    Total_Pembayaran DECIMAL(10, 2),
    Nama_Penerima VARCHAR(100),
    Metode_Pembayaran VARCHAR(50),
    FOREIGN KEY (Nama_Penerima) REFERENCES Pelanggan(Nama_Penerima)
);

-- Tabel Detail Pesanan
CREATE TABLE Detail_Pesanan (
    ID_Detail SERIAL PRIMARY KEY,
    No_Pesanan VARCHAR(20),
    Nama_Produk VARCHAR(100),
    Variasi VARCHAR(50),
    Harga DECIMAL(10, 2),
    Jumlah INT,
    FOREIGN KEY (No_Pesanan) REFERENCES Pesanan(No_Pesanan)
);

-- Tabel Biaya
CREATE TABLE Biaya (
    No_Pesanan VARCHAR(20) PRIMARY KEY,
    Subtotal DECIMAL(10, 2),
    Biaya_Pengiriman DECIMAL(10, 2),
    Diskon DECIMAL(10, 2),
    Koin_Ditukar DECIMAL(10, 2),
    FOREIGN KEY (No_Pesanan) REFERENCES Pesanan(No_Pesanan)
);

CREATE TABLE Penerima (
    ID_Penerima SERIAL PRIMARY KEY,  -- ID unik untuk setiap penerima
    Nama_Penerima VARCHAR(100) NOT NULL,
    Alamat_Penerima TEXT NOT NULL,
    Nomor_Telepon VARCHAR(20) NOT NULL
);

BEGIN;  -- Memulai transaksi

--Menambahkan data ke Tabel Pelanggan

INSERT INTO Pelanggan (Nama_Penerima, Alamat_Penerima, Nomor_Telepon)
VALUES ('uswahalhas2601', 'Al Fiel Mart...', '62882003281817');

select * from pelanggan;

--Menambahkan data ke Tabel Pesanan

INSERT INTO Pesanan (No_Pesanan, Tanggal_Pembayaran, Total_Pembayaran, Nama_Penerima, Metode_Pembayaran)
VALUES 
('240506KHNSPMXJ', '2024-05-06', 17950.00, 'uswahalhas2601', 'ShopeePay'),
('231111AKUMTNPT', '2023-11-13', 25752.00, 'uswahalhas2601', 'COD');

select * from pesanan;

-- Menambahkan data ke Tabel Penerima
INSERT INTO Penerima (ID_Penerima, Nama_Penerima, Alamat_Penerima, Nomor_Telepon)
VALUES 
(1, 'uswahalhas2601', 'Al Fiel Mart', '62882003281817');

select * from penerima;

-- Menambahkan data ke tabel Detail Pesanan
INSERT INTO Detail_Pesanan (No_Pesanan, Nama_Produk, Variasi, Harga, Jumlah)
VALUES 
('240506KHNSPMXJ', 'Casing iPhone 11', '#Y1 iPhone 7 Plus/8 Plus', 10600.00, 1),
('231111AKUMTNPT', 'Al-Quran', '-', 24000.00, 1);

SELECT * FROM Detail_Pesanan;

-- Menambahkan data ke Tabel Biaya Tambahan
INSERT INTO Biaya_Tambahan (Nomor_Pesanan, Subtotal_Pengiriman, Biaya_Layanan, Diskon_Pengiriman, Koin_Ditukarkan)
VALUES 
('240506KHNSPMXJ', 'Rp19.000', 'Rp1.000', '-Rp10.000', '-Rp2.650'),
('231111AKUMTNPT', 'Rp15.500', 'Rp1.952', '-Rp15.500', '-Rp200');

SELECT * FROM biaya;

-- Jika semua operasi berhasil, commit transaksi untuk menyimpan perubahan
COMMIT;

-- Jika ada kesalahan, rollback transaksi untuk membatalkan perubahan
-- ROLLBACK;

--Membuat Role super_user
CREATE ROLE super_user LOGIN PASSWORD '123456';
ALTER ROLE super_user WITH SUPERUSER;

-- Membuat pengguna dengan password '123456'
CREATE USER super_user1 WITH PASSWORD '123456';

-- Memberikan akses Super User kepada super_user1
GRANT super_user TO super_user1;

-- Membuat pengguna super_user1 dengan password 123456
CREATE USER super_user1 WITH PASSWORD '123456';

-- Memberikan hak akses Super User
ALTER ROLE super_user1 WITH SUPERUSER;

-- Membuat pengguna Admin dengan password 123456
CREATE USER admin1 WITH PASSWORD '123456';
GRANT admin TO admin1;

-- Membuat role basic_user (pengguna biasa)
CREATE ROLE basic_user;

-- Membuat pengguna biasa dengan password 123456
CREATE USER user1 WITH PASSWORD '123456';

-- Memberikan akses role basic_user kepada pengguna user1
GRANT basic_user TO user1;








