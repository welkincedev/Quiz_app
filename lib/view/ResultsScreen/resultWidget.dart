import 'package:flutter/material.dart';

Widget buildSummary(IconData icons, String heading, String title) {
  return Row(
      children: [
        Icon(icons, color: Colors.blueAccent, size: 20),
        Column(
          children: [
            Text("data")
          ],
        )
      ]
  );
}
