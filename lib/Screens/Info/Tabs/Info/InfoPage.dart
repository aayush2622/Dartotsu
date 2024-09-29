import 'package:dantotsu/Screens/Info/Tabs/Info/Widgets/GenreWidget.dart';
import 'package:flutter/material.dart';

import '../../../../Adaptor/Media/Widgets/Chips.dart';
import '../../../../DataClass/Media.dart';
import '../../../../Theme/Colors.dart';
import '../Watch/Widgets/Countdown.dart';

class InfoPage extends StatefulWidget {
  final media mediaData;

  const InfoPage({super.key, required this.mediaData});

  @override
  State<StatefulWidget> createState() => InfoPageState();
}

class InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            color: theme.surface,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ..._buildReleasingIn(),
                ..._buildInfoSections(),
                ..._buildNameSections(),
                GenreWidget(context, widget.mediaData.genres),
                ..._buildTags(),
              ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildReleasingIn() {
    var show = (widget.mediaData.anime?.nextAiringEpisode != null &&
        widget.mediaData.anime?.nextAiringEpisodeTime != null &&
        (widget.mediaData.anime!.nextAiringEpisodeTime! -
                DateTime.now().millisecondsSinceEpoch / 1000) <=
            86400 * 28);
    return [
      if (show) ...[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
            'EPISODE ${widget.mediaData.anime!.nextAiringEpisode! + 1} WILL BE RELEASED IN',
            style: TextStyle(
                color: color.fg,
                fontWeight: FontWeight.bold,
                fontSize: 14)
            ),
          ],
        ),
        const SizedBox(height: 6),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CountdownWidget(
                nextAiringEpisodeTime:
                    widget.mediaData.anime!.nextAiringEpisodeTime!),
          ],
        ),
        const SizedBox(height: 12),
      ],
    ];
  }

  List<Widget> _buildInfoSections() {
    var mediaData = widget.mediaData;
    return [
      _buildInfoRow("Mean Score", _formatScore(mediaData.meanScore, 10)),
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
  List<Widget> _buildTags(){
    var theme = Theme.of(context).colorScheme;
    return [
      Text("Tags", style: TextStyle(
        fontSize: 15,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        color: theme.onSurface,
      )),
      const SizedBox(height: 16.0),
      ChipsWidget(chips: [..._generateChips(widget.mediaData.tags)]),
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
                color: Colors.grey.withOpacity(0.68),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontFamily: 'Poppins',
              color: theme.onSurface,
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
        children: [
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

  List<ChipData> _generateChips(List<String> labels) {
    return labels.map((label) {
      return ChipData(
          label: label, action: () {} // TODO: Implement AFTER SEARCH
          );
    }).toList();
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
