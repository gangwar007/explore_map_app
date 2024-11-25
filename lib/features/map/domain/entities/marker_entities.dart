import 'package:google_maps_flutter/google_maps_flutter.dart';

class MarkerEntity {
  final String id; // Unique identifier for the marker
  final LatLng position; // Position of the marker on the map
  final String category; // Category of the marker (e.g., Cycle, Shopping, Restaurant)
  final String name; // Name of the location
  final String description; // Description of the location
  final BitmapDescriptor icon; // Custom icon for the marker

  const MarkerEntity({
    required this.id,
    required this.position,
    required this.category,
    required this.name,
    required this.description,
    required this.icon,
  });
}