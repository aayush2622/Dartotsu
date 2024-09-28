import 'package:flutter/material.dart';
import 'CachedNetworkImage.dart';
Widget GenreItem(BuildContext context ,String title,String imageUrl) {
  double height = 72;
  var screenWidth = MediaQuery.of(context).size.width;
  double width = screenWidth * 0.4;
  if (width > 256) width = 256;
  double radius = 10;
  return GestureDetector(
    onTap: () => print("tapped"),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      margin: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          cachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.cover,
            width: width,
            height: height,
          ),

          Container(
            width: width,
            height: height,
            color: Colors.black.withOpacity(0.6),
            child:Center(
              child: Text(
                title,
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 1.6,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),


        ],
      ),
    ),
  );
}