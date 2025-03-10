import 'package:flutter/material.dart';

Widget buildBottomTools() {
  return Container(
    padding: const EdgeInsets.all(16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          icon: const Icon(Icons.volume_up, color: Colors.white),
          onPressed: () {
            // Implement audio editing
          },
        ),
        IconButton(
          icon: const Icon(Icons.cut, color: Colors.white),
          onPressed: () {
            // Implement trim functionality
          },
        ),
        IconButton(
          icon: const Icon(Icons.rotate_right, color: Colors.white),
          onPressed: () {
            // Implement rotation
          },
        ),
        IconButton(
          icon: const Icon(Icons.filter, color: Colors.white),
          onPressed: () {
            // Implement filters
          },
        ),
        IconButton(
          icon: const Icon(Icons.brightness_medium, color: Colors.white),
          onPressed: () {
            // Implement brightness adjustment
          },
        ),
        IconButton(
          icon: const Icon(Icons.face, color: Colors.white),
          onPressed: () {
            // Implement effects/stickers
          },
        ),
      ],
    ),
  );
}