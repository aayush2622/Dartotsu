import 'dart:async';

import 'package:flutter/material.dart';

class CountdownWidget extends StatefulWidget {
  final int nextAiringEpisodeTime;

  const CountdownWidget({super.key, required this.nextAiringEpisodeTime});

  @override
  CountdownWidgetState createState() => CountdownWidgetState();
}

class CountdownWidgetState extends State<CountdownWidget> {
  String countdownText = '';
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startCountdown();
  }

  void _startCountdown() {
    int currentTimeMillis = DateTime.now().millisecondsSinceEpoch;
    int remainingTimeMillis =
        (widget.nextAiringEpisodeTime + 10000) * 1000 - currentTimeMillis;
    Duration duration = Duration(milliseconds: remainingTimeMillis);

    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      if (duration.inSeconds > 0) {
        setState(() {
          duration -= const Duration(seconds: 1);

          int days = duration.inDays;
          int hours = duration.inHours % 24;
          int minutes = duration.inMinutes % 60;
          int seconds = duration.inSeconds % 60;

          countdownText =
              '$days days $hours hours $minutes minutes $seconds seconds';
        });
      } else {
        timer.cancel();
        setState(() {
          countdownText = "Episode is now airing!";
        });
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          countdownText.isNotEmpty ? countdownText : "",
          style: TextStyle(
            color: theme.colorScheme.onSurface,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
      ],
    );
  }
}
