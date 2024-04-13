import 'package:flutter/material.dart';
import 'package:SecHandBook/screens/routes/SecondScreen/edit_profile_screen.dart'; // Impor file editprofile_screen.dart

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 225, 204, 195),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/profil.png'),
            ),
            const SizedBox(height: 10),
            const Text(
              'Restha Aristita',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Pelajar',
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 130, 59, 5),
              ),
            ),
            const SizedBox(height: 20),
            const ListTile(
              leading: Icon(Icons.email),
              title: Text('restha@student.undiksha.ac.id'),
            ),
            const ListTile(
              leading: Icon(Icons.phone),
              title: Text('0813322261789'),
            ),
            const ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Bali, Indonesia'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke layar edit profil sekunder
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const EditProfileScreen()), 
                );
              },
              child: const Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
