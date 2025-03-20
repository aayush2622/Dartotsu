import 'package:flutter/material.dart';

Widget ReleasingIndicator() {
  return Positioned(
    bottom: -3,
    left: -2,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Container(
        width: 16,
        height: 16,
        decoration: BoxDecoration(
          color: const Color(0xFF6BF170),
          border: Border.all(
            color: const Color(0xFF208358),
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    ),
  );
}
