import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profil'),
        backgroundColor: const Color.fromARGB(127, 204, 169, 141),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Username'),
            subtitle: Text('Restha Aristita'),
          ),
          ListTile(
            leading: Icon(Icons.perm_identity),
            title: Text('Nama'),
            subtitle: Text('Ni made Restha Aristita'),
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text('Password'),
            subtitle: Text('restha.undiksha'),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Email'),
            subtitle: Text('restha@student.undiksha.ac.id'),
          ),
          ListTile(
            leading: Icon(Icons.work),
            title: Text('Pekerjaan'),
            subtitle: Text('Pelajar'),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Telepon'),
            subtitle: Text('0813322261789'),
          ),
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text('Alamat'),
            subtitle: Text('Bali, Indonesia'),
          ),
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back'),
            ),
          ),
        ],
      ),
    );
  }
}
