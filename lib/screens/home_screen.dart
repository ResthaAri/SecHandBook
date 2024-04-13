import 'package:SecHandBook/screens/routes/SecondScreen/books_screen.dart';
import 'package:SecHandBook/screens/routes/SecondScreen/custom_screen.dart';
import 'package:flutter/material.dart';
import 'package:SecHandBook/components/asset_image_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 225, 204, 195),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 213, 121, 81),
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Text(
                'Second-hand Books',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
              ),
            ),

            // "book is a window to the world" dengan background coklat dan italic
            const Text(
              'book is a window to the world',
              textAlign: TextAlign.center,
              style: TextStyle(fontStyle: FontStyle.italic),
            ),

            const SizedBox(height: 10),
            // Baris "Books" dan "Show All >"
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Books',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {
                    // Ketika tombol "Show All" ditekan, navigasikan ke halaman kedua
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BooksPage()),
                    );
                  },
                  child: const Text('Show All >'),
                ),
              ],
            ),
            const SizedBox(height: 5),
            // Gambar-gambar dengan ukuran 150:200
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Container(
                    width: 150,
                    height: 200,
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    child: const AssetImageWidget(
                      imagePath: 'assets/images/dikta_hukum.png',
                      width: 150,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 200,
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    child: const AssetImageWidget(
                      imagePath: 'assets/images/Himpunan.png',
                      width: 150,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 200,
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    child: const AssetImageWidget(
                      imagePath: 'assets/images/laut_bercerita.png',
                      width: 150,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Divider(),
            // Baris "Special Offered" dan "Show All >"
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Special Offered',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {
                    // Ketika tombol "Show All >" ditekan, navigasikan ke halaman SpecialOfferedScreen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CustomScreen()),
                    );
                  },
                  child: const Text('Show All >'),
                ),
              ],
            ),
            const SizedBox(height: 5),
            // Gambar-gambar dengan ukuran 250:150
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Container(
                    width: 250,
                    height: 150,
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    child: const AssetImageWidget(
                      imagePath: 'assets/images/harry pother full ver.png',
                      width: 200,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: 250,
                    height: 150,
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    child: const AssetImageWidget(
                      imagePath: 'assets/images/sherlock-holmes full ver.png',
                      width: 200,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: 250,
                    height: 150,
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    child: const AssetImageWidget(
                      imagePath: 'assets/images/bumi series full ver.png',
                      width: 200,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: 250,
                    height: 150,
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    child: const AssetImageWidget(
                      imagePath: 'assets/images/risa-full-ver.png',
                      width: 200,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Divider(),
            // "The Longest" Text
            const Text(
              'The Longest',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // Gambar-gambar single dengan teks deskripsi dan harga
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Container(
                    width: 200,
                    height: 400,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: const Column(
                      children: [
                        AssetImageWidget(
                          imagePath:
                              'assets/images/sherlock-holmes single ver.png',
                          width: 150,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 10),
                        Text(
                          '"How to Think Like Sherlock Holmes" by Peter Hollins',
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          'Harga: RP 40.000',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 400,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: const Column(
                      children: [
                        AssetImageWidget(
                          imagePath: 'assets/images/sherlock-holmes 4 ver.png',
                          width: 600,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Sherlock-Homlmes, ada 4 buku, real pics.',
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          'Harga: RP 90.000',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
