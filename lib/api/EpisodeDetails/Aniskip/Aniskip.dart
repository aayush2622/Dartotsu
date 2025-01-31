import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class AniSkip {
  static Future<List<Stamp>?> getResult({
    required int? malId,
    required int episodeNumber,
    required int episodeLength,
    required bool useProxyForTimeStamps,
  }) async {
    if (malId == null) {
      return null;
    }
    final url =
        "https://api.aniskip.com/v2/skip-times/$malId/$episodeNumber?types[]=ed&types[]=mixed-ed&types[]=mixed-op&types[]=op&types[]=recap&episodeLength=$episodeLength";

    try {
      final response = await http.get(
        Uri.parse(useProxyForTimeStamps
            ? "https://corsproxy.io/?${Uri.encodeComponent(url)}"
            : url),
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        final aniSkipResponse = AniSkipResponse.fromJson(data);
        return aniSkipResponse.found ? aniSkipResponse.results : null;
      } else {
        debugPrint('Failed to fetch data with status: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      debugPrint('Error fetching AniSkip results: $e');
      return null;
    }
  }
}

class AniSkipResponse {
  final bool found;
  final List<Stamp>? results;
  final String? message;
  final int statusCode;

  AniSkipResponse({
    required this.found,
    required this.results,
    this.message,
    required this.statusCode,
  });

  factory AniSkipResponse.fromJson(Map<String, dynamic> json) {
    return AniSkipResponse(
      found: json['found'] as bool,
      results: (json['results'] as List<dynamic>?)
          ?.map((item) => Stamp.fromJson(item as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
      statusCode: json['statusCode'] as int,
    );
  }
}

class Stamp {
  final AniSkipInterval interval;
  final String skipType;
  final String skipId;
  final double episodeLength;

  Stamp({
    required this.interval,
    required this.skipType,
    required this.skipId,
    required this.episodeLength,
  });

  factory Stamp.fromJson(Map<String, dynamic> json) {
    return Stamp(
      interval:
          AniSkipInterval.fromJson(json['interval'] as Map<String, dynamic>),
      skipType: json['skipType'] as String,
      skipId: json['skipId'] as String,
      episodeLength: (json['episodeLength'] as num).toDouble(),
    );
  }

  String getType() {
    switch (skipType) {
      case 'op':
        return 'Opening';
      case 'ed':
        return 'Ending';
      case 'recap':
        return 'Recap';
      case 'mixed-ed':
        return 'Mixed Ending';
      case 'mixed-op':
        return 'Mixed Opening';
      default:
        return skipType;
    }
  }
}

class AniSkipInterval {
  final double startTime;
  final double endTime;

  AniSkipInterval({
    required this.startTime,
    required this.endTime,
  });

  factory AniSkipInterval.fromJson(Map<String, dynamic> json) {
    return AniSkipInterval(
      startTime: (json['startTime'] as num).toDouble(),
      endTime: (json['endTime'] as num).toDouble(),
    );
  }
}
