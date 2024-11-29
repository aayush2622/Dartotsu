class userData {
  final int id;
  final String name;
  final String? pfp;
  final String? banner;
  final String? status;
  final double? score;
  final int? progress;
  final int? totalEpisodes;
  final int? nextAiringEpisode;

  //final List<Activity> activity;

  userData({
    required this.id,
    required this.name,
    this.pfp,
    this.banner,
    this.status,
    this.score,
    this.progress,
    this.totalEpisodes,
    this.nextAiringEpisode,
    //List<Activity>? activity,
  });
}
