import 'package:flutter/material.dart';

Widget buildSummary(
    IconData icons,
    String heading,
    String title,
    ) {

  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,

    children: [

      Icon(
        icons,
        color: Colors.blueAccent,
        size: 20,
      ),

      const SizedBox(width: 12),

      Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          Text(
            heading,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 4),

          Text(
            title,
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey.shade600,
            ),
          ),
        ],
      ),
    ],
  );
}