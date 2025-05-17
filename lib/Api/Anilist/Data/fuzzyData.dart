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

  String toVariableString() {
    final parts = [
      if (year != null) 'year:$year',
      if (month != null) 'month:$month',
      if (day != null) 'day:$day',
    ];
    return '{${parts.join(',')}}';
  }

  String? getFormattedDate() {
    var monthName = <int, String>{
      1: "January",
      2: "February",
      3: "March",
      4: "April",
      5: "May",
      6: "June",
      7: "July",
      8: "August",
      9: "September",
      10: "October",
      11: "November",
      12: "December"
    };
    if (day != null && month != null && year != null) {
      return "$day ${monthName[month]} $year";
    } else if (month != null && year != null) {
      return "${monthName[month]} $year";
    } else if (year != null) {
      return year.toString();
    }
    return null;
  }
}
