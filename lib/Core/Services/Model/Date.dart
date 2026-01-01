import 'package:json_annotation/json_annotation.dart';

part 'Generated/Date.g.dart';

@JsonSerializable()
class Date {
  int? year;
  int? month;
  int? day;

  Date({this.year, this.month, this.day});

  factory Date.fromJson(Map<String, dynamic> json) => _$DateFromJson(json);

  Map<String, dynamic> toJson() => _$DateToJson(this);

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
