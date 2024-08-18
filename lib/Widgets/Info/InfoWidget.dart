import 'package:flutter/material.dart';
// import 'package:kenburns_nullsafety/kenburns_nullsafety.dart';
import '../../DataClass/Media.dart';

class InfoWidget extends StatelessWidget {

  final String mediaTitle;
  final List<media> mediaList;
  const InfoWidget({super.key,
    required this.mediaTitle,
  required this.mediaList});

  @override
  Widget build(BuildContext context) {
    // final theme = Theme.of(context).colorScheme;
    final AnimeData = mediaList.first;
    debugPrint(mediaList.first.startDate.toString());
    // print(AnimeData.source);

    // Validation for values here
    // if(AnimeData.anime?.mediaAuthor != null){
    //   final Author = AnimeData.anime!.mediaAuthor;
    // }
    return  Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding:const  EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                child: Column(
                  children: <Widget>[
                    _buildTableRow("Mean Score", "${AnimeData.meanScore!/10}/", AnimeData.userScore.toString(), context),
                    _buildTableRow("Status", AnimeData.status.toString(), "",context),
                    _buildTableRow("Total Episodes", AnimeData.userProgress.toString(), "",context),
                    _buildTableRow("Duration", "Duration", "",context),
                    _buildTableRow("Format", AnimeData.format.toString(), "",context),
                    _buildTableRow("Source", AnimeData.source.toString(), "",context),
                    _buildTableRow("Studio", AnimeData.anime!.mainStudio.toString(), "",context),
                    _buildTableRow("Author", AnimeData.anime!.mediaAuthor.toString(), "",context),
                    _buildTableRow("Season", AnimeData.anime!.season.toString(), "",context),
                    _buildTableRow("Start Date", AnimeData.startDate.toString(), "",context),
                    _buildTableRow("End Date", AnimeData.endDate.toString(), "",context),
                    _buildTableRow("Popularity", AnimeData.popularity.toString(), "",context),
                    _buildTableRow("Favorites", AnimeData.favourites.toString(), "",context),
                    const SizedBox(height: 16.0), // Spacer
                    _buildTextSection("Name (Romaji)", AnimeData.nameRomaji),
                    _buildTextSection("Name", AnimeData.name.toString()),
                    _buildDescriptionSection("Description", AnimeData.description.toString()),
                  ],
                ),
              ),
            ],
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
