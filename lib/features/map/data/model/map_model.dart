import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../domain/entities/marker_entities.dart';


class MarkerModel extends MarkerEntity {
  const MarkerModel({
    required String id,
    required LatLng position,
    required String category,
    required String name,
    required String description,
    required BitmapDescriptor icon,
  }) : super(
    id: id,
    position: position,
    category: category,
    name: name,
    description: description,
    icon: icon,
  );

  factory MarkerModel.fromJson(Map<String, dynamic> json) {
    return MarkerModel(
      id: json['id'],
      position: LatLng(json['lat'], json['lng']),
      category: json['category'],
      name: json['name'],
      description: json['description'],
      icon: BitmapDescriptor.defaultMarker, // Customize icon if needed
    );
  }
}