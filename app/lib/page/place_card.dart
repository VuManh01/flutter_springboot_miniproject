import 'package:flutter/material.dart';

import '../model/Place.dart';

class PlaceCard extends StatelessWidget {
  final Place place;

  const PlaceCard({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            place.imageUrl,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
        ),
        const Positioned(
          top: 8,
          right: 8,
          child: Icon(Icons.favorite, color: Colors.red),
        ),
        Positioned(
          bottom: 8,
          left: 8,
          right: 8,
          child: Text(
            place.name,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              backgroundColor: Colors.black45,
            ),
          ),
        )
      ],
    );
  }
}
