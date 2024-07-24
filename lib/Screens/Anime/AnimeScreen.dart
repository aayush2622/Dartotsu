import 'package:dantotsu/DataClass/Media.dart';
import 'package:dantotsu/api/Anilist/AnilistQueries.dart';
import 'package:flutter/material.dart';

class AnimeScreen extends StatelessWidget {
  const AnimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anime'),
        backgroundColor: Colors.blue, // Customize color as needed
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Example Search Bar
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Search for Anime',
                prefixIcon: Icon(Icons.search),
              ),
            ),
            const SizedBox(height: 16),
            // Example List of Anime
            Expanded(
              child: ListView.builder(
                itemCount: 20, // Replace with your list length
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(16.0),
                      title: Text('Anime Title $index'),
                      subtitle: Text('Anime Description $index'),
                      leading: const Icon(Icons.movie),
                      onTap: () {
                        // Navigate to Anime Details
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AnimeDetailScreen(index)),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AnimeDetailScreen extends StatefulWidget {
  final int animeIndex;

  const AnimeDetailScreen(this.animeIndex, {super.key});

  @override
  _AnimeDetailScreenState createState() => _AnimeDetailScreenState();
}

class _AnimeDetailScreenState extends State<AnimeDetailScreen> {
  media? mediaData ;

  @override
  void initState() {
    super.initState();
    fetchMediaDetails();
  }

  Future<void> fetchMediaDetails() async {
    try {
      var media = await mediaDetails((await getMedia(21, mal: false))!);
      setState(() {
        mediaData = media!;
      });
    } catch (error) {
      print('Error fetching media details: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anime Details'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: mediaData == null
            ? const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 16),
          ],
        )
            : Text('Details for Anime: ${mediaData!.name}'),
      ),
    );
  }
}
