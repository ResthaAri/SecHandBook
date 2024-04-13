import 'package:flutter/material.dart';

class BooksPage extends StatelessWidget {
  const BooksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Books'),
        backgroundColor: const Color.fromARGB(127, 204, 169, 141),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildBookItem(
                title: 'Himpunan',
                imagePath: 'assets/images/Himpunan.png',
                description:
                    '"Himpunan" adalah sebuah novel yang mengisahkan tentang perjalanan sekelompok orang yang berusaha menyatukan keberagaman mereka dalam menghadapi tantangan dan peristiwa yang menantang.',
                price: '60.000',
                phoneNumber: '0812266374819',
                label: 'Fiksi',
                color: Color.fromRGBO(187, 222, 251, 1),
              ),
              const SizedBox(height: 20),
              _buildBookItem(
                title: 'Non-Fiksi',
                imagePath: 'assets/images/atlas.png',
                description: 'Atlas, total halaman 201',
                price: '30.000',
                phoneNumber: '081336644449',
                label: 'Non-Fiksi',
                color: Color.fromRGBO(200, 230, 201, 1),
              ),
              const SizedBox(height: 20),
              _buildBookItem(
                title: 'Laut Bercerita',
                imagePath: 'assets/images/laut_bercerita.png',
                description:
                    'Novelnya bahas tentang aktivis gitu, seru banget.',
                price: '70.000',
                phoneNumber: '081223364789',
                label: 'Fiksi',
                color: Color.fromRGBO(187, 222, 251, 1),
              ),
              const SizedBox(height: 20),
              _buildBookItem(
                title: 'Fiksi',
                imagePath: 'assets/images/prajurit.png',
                description:
                    'Novel "7 Prajurit Bapak" mengisahkan tentang tujuh prajurit yang dipanggil oleh seorang bapak untuk menjalankan tugas penting yang berhubungan dengan keselamatan desa atau kerajaan mereka. Melalui perjalanan mereka, mereka menghadapi berbagai rintangan dan mengalami pertumbuhan karakter yang signifikan. Novel ini mengeksplorasi tema-tema seperti persahabatan, pengorbanan, dan keberanian dalam menghadapi tantangan.',
                price: '30.000',
                phoneNumber: '081336623456',
                label: 'Fiksi',
                color: Color.fromRGBO(187, 222, 251, 1),
              ),
              const SizedBox(height: 20),
              _buildBookItem(
                title: 'Non-Fiksi',
                imagePath: 'assets/images/banksoal.png',
                description:
                    'Halo adik-adik pejuang UTBK, aku ada buku bank soal tahun 2022, kalo kalian minat bisa chat aku ya',
                price: '10.000',
                phoneNumber: '0813342139',
                label: 'Non-Fiksi',
                color: Color.fromRGBO(200, 230, 201, 1),
              ),
              const SizedBox(height: 20),
              _buildBookItem(
                title: 'Non-Fiksi',
                imagePath: 'assets/images/penghantar ilkom.png',
                description:
                    'Kalo kalian semester 1 atau 2 jurusan ilmu komunikasi mungkin perlu buku ini bisa hubungi aku ya',
                price: '15.000',
                phoneNumber: '081336672839',
                label: 'Non-Fiksi',
                color: Color.fromRGBO(200, 230, 201, 1),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBookItem({
    required String title,
    required String imagePath,
    required String description,
    required String price,
    required String phoneNumber,
    required String label,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 100,
            height: 150,
            margin: const EdgeInsets.only(right: 20),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  description,
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 10),
                Text(
                  'Price: $price',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Phone: $phoneNumber',
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 10),
                Text(
                  'Label: $label',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
