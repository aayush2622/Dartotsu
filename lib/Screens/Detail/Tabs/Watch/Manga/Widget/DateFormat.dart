import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

String? dateFormat(
  String? timestamp, {
  required BuildContext context,
  String? stringDate,
  bool forHistoryValue = false,
  bool useRelativeTimesTamps = true,
  String dateFormat = "",
  bool showHOURorMINUTE = false,
}) {
  final dateTime = stringDate != null
      ? DateTime.parse(stringDate)
      : DateTime.fromMillisecondsSinceEpoch(int.parse(timestamp!));
  stringDate = null;
  final date = DateTime(dateTime.year, dateTime.month, dateTime.day);
  if (stringDate == null) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = DateTime(now.year, now.month, now.day - 1);
    final twoDaysAgo = DateTime(now.year, now.month, now.day - 2);
    final threeDaysAgo = DateTime(now.year, now.month, now.day - 3);
    final fourDaysAgo = DateTime(now.year, now.month, now.day - 4);
    final fiveDaysAgo = DateTime(now.year, now.month, now.day - 5);
    final sixDaysAgo = DateTime(now.year, now.month, now.day - 6);
    final aWeekAgo = DateTime(now.year, now.month, now.day - 7);
    final formatter = DateFormat("dd MMM yyyy");

    if (date == today && useRelativeTimesTamps) {
      if (showHOURorMINUTE) {
        final difference = now.difference(dateTime);
        if (difference.inMinutes < 60) {
          return difference.inMinutes.toString();
        } else if (difference.inHours < 24) {
          difference.inHours.toString();
        }
      }

      return "Today";
    } else if (date == yesterday && useRelativeTimesTamps) {
      return "Yesterday";
    } else if (useRelativeTimesTamps) {
      if (date.isAfter(twoDaysAgo) ||
          date.isAfter(twoDaysAgo) ||
          date.isAfter(threeDaysAgo) ||
          date.isAfter(fourDaysAgo) ||
          date.isAfter(fiveDaysAgo) ||
          date.isAfter(sixDaysAgo) ||
          date.isAfter(aWeekAgo)) {
        final difference = today.difference(date).inDays;
        return difference.toString();
      }
    }
    return forHistoryValue
        ? DateTime(dateTime.year, dateTime.month, dateTime.day).toString()
        : formatter.format(date);
  }
  return date.toString();
}
