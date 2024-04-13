import 'package:SecHandBook/screens/routes/yourbook_screen.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:SecHandBook/utils/my_http_overrides.dart';
import 'package:SecHandBook/screens/home_screen.dart';
import 'package:SecHandBook/screens/profile_screen.dart';
import 'package:SecHandBook/screens/news_screen.dart';
import 'package:SecHandBook/screens/komunitas.dart';
import 'package:SecHandBook/screens/routes/setting_screen.dart';
import 'package:SecHandBook/screens/routes/addbook_screen.dart';
import 'package:SecHandBook/screens/routes/SecondScreen/books_screen.dart';
import 'package:SecHandBook/screens/routes/SecondScreen/custom_screen.dart';
import 'package:SecHandBook/screens/routes/SecondScreen/edit_profile_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SHB',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Home Screen'),
      routes: {
        '/editprofil-screen': (context) => const EditProfileScreen(),
        '/custom-screen': (context) => const CustomScreen(),
        '/books-screen': (context) => const BooksPage(),
        '/news-screen': (context) => const NewsScreen(),
        '/addbook-screen': (context) => const AddBookScreen(),
        '/setting-screen': (context) => const SettingScreen(),
        '/yourbook-screen': (context) => const YourBookScreen(),
        '/komunitas-screen': (context) => const KomunitasScreen()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const KomunitasScreen(),
    const ProfileScreen(),
  ];

  final List<String> _appBarTitles = const [
    'SecHandBook',
    'Community',
    'Profile',
  ]; // List of titles corresponding to each screen

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitles[_selectedIndex]),
      ),
      body: _screens[_selectedIndex],
      drawer: Drawer(
        // ini side-bar
        child: Column(
          children: [
            // Bagian atas sidebar
            Container(
              color:
                  const Color(0xFFD7CCC8), // Warna latar belakang light brown
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
              child: const Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profil.png'),
                    radius: 30,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ni Made Restha Aristita',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('2215091036/4C'),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(), // Garis pemisah antara bagian atas dan bawah
            ListTile(
              title: const Text('Your Book'),
              leading: const Icon(Icons.add),
              onTap: () {
                Navigator.pushNamed(context, '/news-screen');
              },
            ),
            ListTile(
              title: const Text('Books'),
              leading: const Icon(Icons.menu_book),
              onTap: () {
                Navigator.popAndPushNamed(context, '/books-screen');
              },
            ),
            ListTile(
              title: const Text('Special'),
              leading: const Icon(Icons.folder_special),
              onTap: () {
                Navigator.pushNamed(context, '/custom-screen');
              },
            ),
            ListTile(
              title: const Text('Setting'),
              leading: const Icon(Icons.settings),
              onTap: () {
                Navigator.pushNamed(context, '/setting-screen');
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[100],
        onTap: _onItemTapped,
      ),
    );
  }
}
