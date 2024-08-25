import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;
import '../Main.dart';

class _RefreshController extends GetxController {
  var activity = <int, RxBool>{};

  void all() {
    activity.forEach((key, value) {
      activity[key]?.value = true;
    });
  }

  RxBool getOrPut(int key, bool initialValue) {
    return activity.putIfAbsent(key, () => RxBool(initialValue));
  }
}
var Refresh = Get.put(_RefreshController(), permanent: true);

Future<void> snackString(
    String? s, {
      String? clipboard,
    }) async {
  var context = navigatorKey.currentContext;
  var theme = Theme.of(context!).colorScheme;
  try {
    if (s != null) {
      final snackBar = SnackBar(
        content: GestureDetector(
          onTap: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
          onLongPress: () {
            copyToClipboard(clipboard ?? s);
          },
          child: Text(
            s,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: theme.onSurface,
            ),
          ),
        ),
        backgroundColor: theme.surface,
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom + 32,
          left: 32,
          right: 32,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        duration: const Duration(seconds: 2),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  } catch (e, stackTrace) {
    debugPrint(e.toString());
    debugPrint(stackTrace.toString());
  }
}

void copyToClipboard(String text) {
  var context = navigatorKey.currentContext;
  var theme = Theme.of(context!).colorScheme;
  Clipboard.setData(ClipboardData(text: text));
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        'Copied to clipboard',
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: theme.onSurface,
        ),
      ),
      backgroundColor: theme.surface,
      duration: const Duration(milliseconds: 45),
    ),
  );
}

Future<void> openLinkInBrowser(String url) async {
  var uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
    debugPrint('Opening $url in your browser!');
  } else {
    debugPrint('Oops! I couldn\'t open $url. Maybe it\'s broken?');
  }
}

void navigateToPage(BuildContext context, Widget page) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  page),
  );
}

Future<void> downloadImage(String url, String filename) async {
  String getFileExtension(String? contentType) {
    if (contentType == null) return 'jpg';
    if (contentType.contains('jpeg')) return 'jpg';
    if (contentType.contains('png')) return 'png';
    if (contentType.contains('gif')) return 'gif';
    // Add other formats as needed
    return 'jpg'; // Default extension
  }
  try {
    Directory directory = await getApplicationDocumentsDirectory();
    String filePath = '${directory.path}/$filename';
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      String? contentType = response.headers['content-type'];
      String fileExtension = getFileExtension(contentType);

      filePath += '.$fileExtension';
      File file = File(filePath);
      await file.writeAsBytes(response.bodyBytes);

      print('Image downloaded and saved to $filePath');
    } else {
      print('Failed to download image. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error downloading image: $e');
  }
}
