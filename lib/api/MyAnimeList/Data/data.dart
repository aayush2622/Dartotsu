import 'package:json_annotation/json_annotation.dart';

import 'media.dart';

part 'Generated/data.g.dart';

@JsonSerializable()
class MediaResponse {
  @JsonKey(name: "data")
  List<Datum>? data;
  @JsonKey(name: "paging")
  Paging? paging;

  MediaResponse({
    this.data,
    this.paging,
  });

  factory MediaResponse.fromJson(Map<String, dynamic> json) =>
      _$AFromJson(json);

  Map<String, dynamic> toJson() => _$AToJson(this);
}

@JsonSerializable()
class Datum {
  @JsonKey(name: "node")
  Media? node;
  @JsonKey(name: "ranking")
  Ranking? ranking;

  Datum({
    this.node,
    this.ranking,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}

@JsonSerializable()
class Paging {
  @JsonKey(name: "previous")
  String? previous;
  @JsonKey(name: "next")
  String? next;

  Paging({
    this.previous,
    this.next,
  });

  factory Paging.fromJson(Map<String, dynamic> json) => _$PagingFromJson(json);

  Map<String, dynamic> toJson() => _$PagingToJson(this);
}
