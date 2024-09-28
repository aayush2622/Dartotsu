import 'package:flutter/material.dart';

import '../../../../DataClass/Media.dart';

class InfoPage extends StatefulWidget {
  final media mediaData;

  const InfoPage({super.key, required this.mediaData});

  @override
  State<StatefulWidget> createState() => InfoPageState();
}

class InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Column(
                children: [
                  ..._buildInfoSections(),
                  ..._buildNameSections(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildInfoSections() {
    var mediaData = widget.mediaData;
    return [
      _buildInfoRow(
          "Mean Score", _formatScore(mediaData.meanScore, mediaData.userScore)),
      _buildInfoRow("Status", mediaData.status?.toString()),
      _buildInfoRow("Total Episodes", mediaData.userProgress?.toString()),
      _buildInfoRow("Average Duration",
          _formatEpisodeDuration(mediaData.anime?.episodeDuration)),
      _buildInfoRow(
          "Format", mediaData.format?.toString().replaceAll("_", " ")),
      _buildInfoRow(
          "Source", mediaData.source?.toString().replaceAll("_", " ")),
      _buildInfoRow("Studio", mediaData.anime?.mainStudio?.name),
      _buildInfoRow("Author", mediaData.anime?.mediaAuthor?.name),
      _buildInfoRow("Season",
          _formatSeason(mediaData.anime?.season, mediaData.anime?.seasonYear)),
      _buildInfoRow("Start Date", mediaData.startDate?.getFormattedDate()),
      _buildInfoRow("End Date", mediaData.endDate?.getFormattedDate()),
      _buildInfoRow("Popularity", mediaData.popularity?.toString()),
      _buildInfoRow("Favorites", mediaData.favourites?.toString()),
    ];
  }

  List<Widget> _buildNameSections() {
    var mediaData = widget.mediaData;
    return [
      const SizedBox(height: 16.0),
      _buildTextSection("Name (Romaji)", mediaData.nameRomaji),
      _buildTextSection("Name", mediaData.name?.toString()),
      _buildDescriptionSection("Description", mediaData.description),
    ];
  }

  Widget _buildInfoRow(String title, String? value) {
    if (value == null || value.isEmpty) return Container();

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
              fontFamily: 'Poppins',
              color: theme.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextSection(String title, String? content) {
    if (content == null || content.isEmpty) return Container();

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
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
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDescriptionSection(String title, String? content) {
    if (content == null || content.isEmpty) return Container();

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16.0,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            content,
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontFamily: 'Poppins',
            ),
          ),
        ],
      ),
    );
  }

  String? _formatScore(int? meanScore, int? userScore) {
    if (meanScore == null) return null;
    return "${meanScore / 10} / ${userScore?.toString() ?? ''}";
  }

  String? _formatSeason(String? season, int? year) {
    if (season == null || year == null) return null;
    return "$season $year";
  }

  String _formatEpisodeDuration(int? episodeDuration) {
    if (episodeDuration == null) return '';

    final hours = episodeDuration ~/ 60;
    final minutes = episodeDuration % 60;

    final formattedDuration = StringBuffer();

    if (hours > 0) {
      formattedDuration.write('$hours hour');
      if (hours > 1) formattedDuration.write('s');
    }

    if (minutes > 0) {
      if (hours > 0) formattedDuration.write(', ');
      formattedDuration.write('$minutes min');
      if (minutes > 1) formattedDuration.write('s');
    }

    return formattedDuration.toString();
  }
}
