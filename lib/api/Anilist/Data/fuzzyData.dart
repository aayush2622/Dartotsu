import 'package:json_annotation/json_annotation.dart';

part 'Generated/fuzzyData.g.dart';

@JsonSerializable()
class FuzzyDate {
  int? year;
  int? month;
  int? day;

  FuzzyDate({this.year, this.month, this.day});

  factory FuzzyDate.fromJson(Map<String, dynamic> json) =>
      _$FuzzyDateFromJson(json);

  Map<String, dynamic> toJson() => _$FuzzyDateToJson(this);
}