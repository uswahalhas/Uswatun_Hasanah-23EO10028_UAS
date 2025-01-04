# Tugas UAS - Laporan Nota/Struk Shopee

## Deskripsi Proyek
Proyek ini adalah tugas UAS yang melibatkan desain database untuk laporan nota/struk dari transaksi Shopee. Tugas ini mencakup normalisasi database hingga bentuk 3NF, pembuatan ERD dengan kardinalitas, implementasi ACID Compliance untuk transaksi, dan manajemen user dengan hak akses berbeda.

## Tabel yang Digunakan
- **Pelanggan**: Menyimpan data pelanggan/penerima.
- **Pesanan**: Menyimpan informasi pesanan dan pembayaran.
- **Detail Pesanan**: Menyimpan rincian produk yang dipesan.
- **Biaya**: Menyimpan rincian biaya tambahan terkait pesanan.

## Fitur-fitur
1. **Normalisasi hingga 3NF**: Data dikelompokkan dalam tabel-tabel yang terhubung dengan foreign key.
2. **ERD (Entity Relationship Diagram)**: Diagram hubungan antar entitas dalam database.
3. **ACID Compliance**: Penggunaan transaksi database untuk memastikan integritas data.
4. **User Management**:
   - **Super User**: Dapat melakukan DML di semua tabel.
   - **Admin**: Hanya dapat melakukan insert dan update pada tabel tertentu.
   - **User Biasa**: Hanya dapat melihat data tanpa perubahan.

## Cara Menggunakan
1. Clone repositori ini ke mesin lokal Anda:
   ```bash
 git clone https://github.com/uswahalhas/Uswatun_Hasanah-23EO10028_UAS.git
