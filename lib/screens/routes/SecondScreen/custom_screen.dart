import 'package:flutter/material.dart';

class CustomScreen extends StatelessWidget {
  const CustomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Special Offered'),
        backgroundColor: const Color.fromARGB(127, 204, 169,
            141), // Contoh penggunaan Color.fromRGBO dengan warna merah setengah transparan
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          const Text(
            'Special Full Series Of The Story',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: 5, // Jumlah kotak
              itemBuilder: (context, index) {
                return CustomBox(
                  boxInfo: customBoxes[index], // Info kotak dari list
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CustomBox extends StatelessWidget {
  final Map<String, dynamic> boxInfo;

  const CustomBox({Key? key, required this.boxInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: boxInfo['backgroundColor'],
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(boxInfo['imageName']),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            boxInfo['Judul novel'], // Judul
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            boxInfo['description'], // Deskripsi produk
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              const Icon(Icons.money),
              const SizedBox(width: 5),
              Text(
                boxInfo['price'], // Harga
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              const Icon(Icons.phone),
              const SizedBox(width: 5),
              Text(
                boxInfo['phoneNumber'], // Nomor telepon
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: CustomScreen(),
  ));
}

// Informasi untuk setiap kotak disimpan dalam list
List<Map<String, dynamic>> customBoxes = [
  {
    'backgroundColor': Colors.blue[100],
    'Judul novel': 'Bumi Series',
    'imageName': 'assets/images/bumi series full ver.png',
    'description':
        'Seri Bumi adalah sebuah seri novel karya Pramoedya Ananta Toer yang menggambarkan perjalanan sejarah Indonesia pada awal abad ke-20 melalui lensa pengalaman seorang tokoh utama bernama Minke. Novel-novel dalam seri ini, seperti Bumi Manusia, Anak Semua Bangsa, Jejak Langkah, dan Rumah Kaca, menggambarkan konflik sosial, politik, dan budaya di masa kolonial Belanda serta perjuangan rakyat Indonesia untuk meraih kemerdekaan.',
    'price': '816.000',
    'phoneNumber': '081223345633',
  },
  {
    'backgroundColor': Colors.green[100],
    'Judul novel': 'Cruel Crown',
    'imageName': 'assets/images/cruel crown full.png',
    'description':
        'Cruel Crown adalah sebuah buku yang terdiri dari dua cerita pendek yang berlatar di dunia novel Red Queen karya Victoria Aveyard. Cerita pertama, Queen Song, mengikuti kisah tentang Coriane Jacos, ibu dari Cal dan istri dari Raja Tiberias VI. Cerita kedua, Steel Scars, mengikuti perjalanan Farley, seorang anggota pemberontak Red yang kuat. Cruel Crown memberikan latar belakang yang lebih dalam untuk karakter-karakter kunci dalam dunia Red Queen dan memperluas alur cerita yang sudah ada.',
    'price': '300.000',
    'phoneNumber': '08767892234',
  },
  {
    'backgroundColor': Colors.blue[100],
    'imageName': 'assets/images/komik naruto vol 1-72.png',
    'Judul novel': 'Komik Naruto vol 1-72',
    'description':
        'Komik Naruto vol 1-72 terdiri dari serangkaian volume yang mengikuti petualangan Naruto Uzumaki, seorang ninja remaja, dalam perjalanan untuk menjadi Hokage, pemimpin tertinggi di desanya. Setiap volume menampilkan pertarungan, pertumbuhan karakter, dan eksplorasi dunia ninja yang penuh dengan misteri dan bahaya.',
    'price': '8.500.000',
    'phoneNumber': '08767892765',
  },
  {
    'backgroundColor': Colors.green[100],
    'imageName': 'assets/images/risa-full-ver.png',
    'Judul novel': 'Teman Kecil Risa',
    'description':
        'Teman Kecil Risa adalah sebuah novel yang ditulis oleh Risa Saraswati. Cerita ini mengisahkan tentang perjalanan seorang gadis kecil bernama Risa dan persahabatannya dengan berbagai makhluk di dunia fantasi. Melalui petualangannya, Risa belajar banyak tentang persahabatan, keberanian, dan menemukan kekuatan dalam dirinya sendiri. Novel ini menghadirkan kisah yang menginspirasi dan penuh imajinasi, cocok untuk pembaca dari berbagai usia.',
    'price': '357.000',
    'phoneNumber': '08767764834',
  },
  {
    'backgroundColor': Colors.blue[100],
    'imageName': 'assets/images/sherlock-holmes full ver.png',
    'Judul novel': 'Sherlock Holmes',
    'description':
        'Sherlock Holmes adalah seorang detektif fiksi terkenal yang diciptakan oleh penulis Sir Arthur Conan Doyle. Bersama dengan sahabatnya, Dr. John Watson, Holmes memecahkan berbagai misteri dan kasus kriminal yang rumit dengan menggunakan keterampilan pengamatan yang tajam, logika yang cermat, dan deduksi yang luar biasa. Karakter Holmes telah menjadi ikon dalam dunia sastra detektif dan telah diadaptasi ke dalam berbagai bentuk media, termasuk buku, film, televisi, dan permainan.',
    'price': '700.000',
    'phoneNumber': '08765592234',
  },
];
