--Menampilkan 2 driver dengan pengiriman terbanyak bulan Mei 2023
SELECT "Shipping Driver", COUNT(*) as Jumlah_Pengiriman
FROM app.lampiran
WHERE EXTRACT (MONTH FROM "Sending Timw") = 5
GROUP BY "Shipping Driver"
ORDER BY  Jumlah_Pengiriman DESC
LIMIT 2;


--Menampilkan 10 barang  paling sering dikirim di bulan Mei 2023 
SELECT "Product Name", COUNT(*) as Jumlah_Pengiriman
FROM app.lampiran
WHERE EXTRACT (MONTH FROM "Sending Time") = 5 AND EXTRACT ( YEAR FROM  "Sendding Time") = 2023
GROUP BY "Product Name"
ORDER BY  Jumlah_Pengiriman DESC
LIMIT 10;


--Menampilkan semua pengiriman yang belum selesai
SELECT *
FROM app.lampiran
WHERE "Delivered Time" IS NULL  