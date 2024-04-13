import 'package:flutter/material.dart';
import 'package:SecHandBook/screens/routes/addbook_screen.dart';

class YourBookScreen extends StatefulWidget {
  const YourBookScreen({Key? key}) : super(key: key);

  @override
  _YourBookScreenState createState() => _YourBookScreenState();
}

class _YourBookScreenState extends State<YourBookScreen> {
  String _selectedStatus = 'For Sale';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('YOUR BOOK'),
        backgroundColor: const Color.fromARGB(127, 204, 169, 141),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Your Auction Book',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 10),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              leading: Icon(Icons.book),
              title: Text('Himpunan II'),
              trailing: DropdownButton<String>(
                value: _selectedStatus,
                onChanged: (newValue) {
                  setState(() {
                    _selectedStatus = newValue!;
                  });
                },
                items: <String>['For Sale', 'Sold Out']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),

          SizedBox(height: 10),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.green[100],
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              leading: Icon(Icons.book),
              title: Text('Hana dan Piano La'),
              trailing: DropdownButton<String>(
                value: _selectedStatus,
                onChanged: (newValue) {
                  setState(() {
                    _selectedStatus = newValue!;
                  });
                },
                items: <String>['For Sale', 'Sold Out']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),

// Navigasi ke sceen selanjutnya yang ada crud
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddBookScreen()),
                );
              },
              child: Text('Add Book'),
            ),
          ),
        ],
      ),
    );
  }
}
