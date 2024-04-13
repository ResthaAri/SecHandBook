import 'package:flutter/material.dart';
import 'package:SecHandBook/screens/routes/SecondScreen/edit_profile_screen.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting'),
         backgroundColor: Color.fromARGB(255, 225, 204, 195),
      ),
      body: Container(
       
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            _buildSettingItem(
              title: 'Profil & Pengaturan Akun',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EditProfileScreen()),
                );
              },
            ),
            const Divider(),
            _buildSettingItem(title: 'Aktivitas Anda'),
            const Divider(),
            _buildSettingItem(title: 'Keamanan'),
            const Divider(),
            _buildSettingItem(title: 'Bahasa & Language'),
            const Divider(),
            _buildSettingItem(title: 'Pusat Bantuan'),
            const Divider(),
            _buildSettingItem(title: 'Peraturan Komunitas'),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingItem({required String title, VoidCallback? onPressed}) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
      onTap: onPressed,
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }
}