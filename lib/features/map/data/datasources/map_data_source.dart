import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../model/map_model.dart';

class MapDataSource {
  Future<List<MarkerModel>> fetchMarkers() async {
    // Predefined marker data
    return [

      // Cycle Markers
      MarkerModel(
        id: 'cycle1',
        position: LatLng(37.7749, -122.4194),
        category: 'Cycle',
        name: 'Cycle Shop Downtown',
        description: 'A great place to buy bikes and accessories in the city center.',
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      MarkerModel(
        id: 'cycle2',
        position: const LatLng(37.7849, -122.4094),
        category: 'Cycle',
        name: 'Urban Cyclery',
        description: 'Offering modern bikes for urban commuting.',
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      MarkerModel(
        id: 'cycle3',
        position: LatLng(37.7649, -122.4294),
        category: 'Cycle',
        name: 'Trail Bikes',
        description: 'Perfect spot to find bikes for mountain trails.',
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      MarkerModel(
        id: 'cycle4',
        position: LatLng(37.7549, -122.4394),
        category: 'Cycle',
        name: 'Cyclist Haven',
        description: 'Your one-stop shop for all cycling needs.',
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),
      MarkerModel(
        id: 'cycle5',
        position: LatLng(37.7949, -122.4194),
        category: 'Cycle',
        name: 'Bikes & Beyond',
        description: 'Find high-end bikes and expert servicing here.',
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      ),

      // Shopping Markers
      MarkerModel(
        id: 'shopping1',
        position: LatLng(37.7849, -122.4294),
        category: 'Shopping',
        name: 'Shopping Paradise',
        description: 'A great place to shop for everything you need.',
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
      ),
      MarkerModel(
        id: 'shopping2',
        position: LatLng(37.7749, -122.4194),
        category: 'Shopping',
        name: 'Downtown Mall',
        description: 'An upscale shopping destination.',
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
      ),
      MarkerModel(
        id: 'shopping3',
        position: LatLng(37.7649, -122.4294),
        category: 'Shopping',
        name: 'Fashion Square',
        description: 'Trendy clothes and accessories.',
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
      ),
      MarkerModel(
        id: 'shopping4',
        position: LatLng(37.7549, -122.4394),
        category: 'Shopping',
        name: 'Electronics Hub',
        description: 'Best gadgets and electronics deals.',
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
      ),
      MarkerModel(
        id: 'shopping5',
        position: LatLng(37.7949, -122.4094),
        category: 'Shopping',
        name: 'Local Market',
        description: 'Affordable items and local products.',
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
      ),

      // Restaurant Markers
      MarkerModel(
        id: 'restaurant1',
        position: LatLng(37.7649, -122.4194),
        category: 'Restaurant',
        name: 'Gourmet Delight',
        description: 'Delicious food and amazing ambiance.',
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      ),
      MarkerModel(
        id: 'restaurant2',
        position: LatLng(37.7749, -122.4094),
        category: 'Restaurant',
        name: 'The Food Lounge',
        description: 'Exquisite dishes for every taste.',
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      ),
      MarkerModel(
        id: 'restaurant3',
        position: LatLng(37.7849, -122.4294),
        category: 'Restaurant',
        name: 'Dine Divine',
        description: 'Perfect place for fine dining.',
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      ),
      MarkerModel(
        id: 'restaurant4',
        position: LatLng(37.7549, -122.4194),
        category: 'Restaurant',
        name: 'Casual Eats',
        description: 'Affordable and tasty meals.',
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      ),
      MarkerModel(
        id: 'restaurant5',
        position: LatLng(37.7949, -122.4394),
        category: 'Restaurant',
        name: 'Chef\'s Special',
        description: 'Signature dishes by top chefs.',
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      ),
    ];
  }
}