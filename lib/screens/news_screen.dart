import 'package:flutter/material.dart';
import 'package:SecHandBook/dto/news.dart';
import 'package:SecHandBook/screens/routes/yourbook_screen.dart';
import 'package:SecHandBook/services/data_service.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  Future<List<News>>? _news;

  @override
  void initState() {
    super.initState();
    _news = DataService.fetchNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 225, 204, 195),
      appBar: AppBar(
        title: const Text('YOUR BOOK'),
        backgroundColor: const Color.fromARGB(127, 204, 169, 141),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                // Navigasi ke screen selanjutnya yang ada CRUD
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => YourBookScreen()),
                );
              },
              child: Text('Add Book'),
            ),
          ),
          Expanded(
            child: FutureBuilder<List<News>>(
              future: _news,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      final post = snapshot.data![index];
                      return Padding(
                        padding: const EdgeInsets.all(2.4),
                        child: Card(
                          color: index % 2 == 0
                              ? Colors.blue[100]
                              : Colors.green[100], // Ganti warna sesuai indeks
                          child: ListTile(
                            title: Text(post.title),
                            subtitle: Text(post.body),
                          ),
                        ),
                      );
                    },
                  );
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
                return const CircularProgressIndicator();
              },
            ),
          ),
        ],
      ),
    );
  }
}
