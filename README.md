# Proyek-SBD_8B

# ToGe

Kelompok 8B
Abdul Malik Karim Amrulloh (1906440593)
Fadlurrahman Thorriq Musyaffa (1906381722)
Mochamad Ferdy Fauzan (1906381741)
Zidan Avecena Yahya (1906381691)


Hal yang harus diperhatikan:
> server memiliki database bernama "toge_database" dengan username bernama "postgres".

Cara menjalankan Website ToGe:
1. Buka command prompt
2. Pindah ke direktori \PostgreSQL\bin untuk mengimport file database (.sql)
3. Jalankan command psql ```psql -U postgres -d toge_database < direktori file\toge.sql```
4. Pindah ke direktori folder ToGe pada command prompt
5. Jalankan command ```npm install```
6. Jalankan command ```node index.js```
7. Tunggu hingga muncul kalimat "Server berjalan" pada command prompt, dengan catatan bahwa command prompt tidak boleh ditutup / close hingga Anda selesai menggunakan website ToGe
8. Buka http://localhost:5000 di browser pilihan Anda. 
Pada tahap ini Anda sudah dapat menggunakan website ToGe lengkap dengan fitur-fitur yang disediakan
9. Untuk mengakhiri web server maka Anda dapat menekan tombol ctrl + c atau dengan menutup command prompt yang menjalankan command ```node index.js``` secara langsung.
