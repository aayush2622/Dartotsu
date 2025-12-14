import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountdownWidget extends StatefulWidget {
  final int nextAiringEpisodeTime;

  const CountdownWidget({super.key, required this.nextAiringEpisodeTime});

  @override
  CountdownWidgetState createState() => CountdownWidgetState();
}

class CountdownWidgetState extends State<CountdownWidget> {
  var countdownText = ''.obs;
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

    _updateCountdownText(duration);

    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      if (duration.inSeconds > 0) {
        duration -= const Duration(seconds: 1);
        _updateCountdownText(duration);
      } else {
        timer.cancel();
        countdownText.value = "Episode is now airing!";
      }
    });
  }

  void _updateCountdownText(Duration duration) {
    int days = duration.inDays;
    int hours = duration.inHours % 24;
    int minutes = duration.inMinutes % 60;
    int seconds = duration.inSeconds % 60;

    List<String> parts = [];
    if (days > 0) parts.add('$days days');
    if (hours > 0) parts.add('$hours hours');
    if (minutes > 0) parts.add('$minutes minutes');
    parts.add('$seconds seconds');

    countdownText.value = parts.join(' ');
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Obx(() {
      return SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: Text(
          countdownText.isNotEmpty ? countdownText.value : '',
          style: TextStyle(
            color: theme.colorScheme.onSurface,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          textAlign: TextAlign.center,
        ),
      );
    });
  }
}
