import 'package:flutter/material.dart';
// import 'package:kenburns_nullsafety/kenburns_nullsafety.dart';

class MediaInfoPage extends StatelessWidget {

  const MediaInfoPage({super.key,
    required this.mediaTitle});

  final String mediaTitle;
  @override
  Widget build(BuildContext context) {
    // final theme = Theme.of(context).colorScheme;
    debugPrint(mediaTitle);
    return Scaffold(
      body: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              IconButton(onPressed: () => Navigator.of(context).pop(), icon:const Icon(Icons.arrow_back) ),
              Container(
                margin: const EdgeInsets.all(32.0),
                child: const CircularProgressIndicator(), // ProgressBar equivalent
              ),
              Container(
                padding:const  EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                child: Column(
                  children: <Widget>[
                    _buildTableRow("Mean Score", "Your Score", "Suffix", context),
                    _buildTableRow("Status", "Status Here", "",context),
                    _buildTableRow("Total Episodes", "Total", "",context),
                    _buildTableRow("Duration", "Duration", "",context),
                    _buildTableRow("Format", "Format", "",context),
                    _buildTableRow("Source", "Source", "",context),
                    _buildTableRow("Studio", "Studio", "",context),
                    _buildTableRow("Author", "Author", "",context),
                    _buildTableRow("Season", "Season", "",context),
                    _buildTableRow("Start Date", "Start Date", "",context),
                    _buildTableRow("End Date", "End Date", "",context),
                    _buildTableRow("Popularity", "Popularity", "",context),
                    _buildTableRow("Favorites", "Favorites", "",context),
                    const SizedBox(height: 16.0), // Spacer
                    _buildTextSection("Name (Romaji)", "Romaji Name"),
                    _buildTextSection("Name", "Name"),
                    _buildDescriptionSection("Description", "Your Description"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTableRow(String title, String value, String suffix , BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.grey.withOpacity(0.58),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontFamily: 'Poppins-Bold',
              color: theme.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
          if (suffix.isNotEmpty)
            Text(
              suffix,
              style: const TextStyle(
                fontFamily: "Poppins-Bold",
                fontWeight: FontWeight.bold,
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildTextSection(String title, String content) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              color: Colors.grey.withOpacity(0.58),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4.0),
          Text(
            content,
            style: const TextStyle(
              fontFamily: 'Poppins-Bold',
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDescriptionSection(String title, String content) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'Poppins-Bold',
              fontSize: 16.0,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            content,
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontFamily: 'Poppins-Bold',
            ),
          ),
        ],
      ),
    );
  }
}
