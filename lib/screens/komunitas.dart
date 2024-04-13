import 'package:flutter/material.dart';

class KomunitasScreen extends StatelessWidget {
  const KomunitasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 225, 204, 195),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Welcome to Our Community',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            Text(
              'Join our community to connect with other book enthusiasts, share your thoughts, and discover new books!',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {},
              child: Text('Join Community'),
            ),
            SizedBox(height: 20.0),
            Text(
              'Recent Discussions',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5.0),
            Card(
              elevation: 3.0,
              child: ListTile(
                leading: Icon(Icons.question_answer),
                title: Text('FiksiIndonesia'),
                subtitle: Text('9876 users'),
                trailing: ElevatedButton(
                  onPressed: () {},
                  child: Text('Join'),
                ),
              ),
            ),
            Card(
              elevation: 3.0,
              child: ListTile(
                leading: Icon(Icons.question_answer),
                title: Text('Sastra'),
                subtitle: Text('3456 users'),
                trailing: ElevatedButton(
                  onPressed: () {},
                  child: Text('Join'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
