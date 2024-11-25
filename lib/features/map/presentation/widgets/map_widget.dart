import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../bloc/map_bloc.dart';
import 'marker_details.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({super.key});

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget>
    with SingleTickerProviderStateMixin {
  GoogleMapController? mapController;
  late AnimationController animationController;
  late Animation<double> scaleAnimation;
  late BitmapDescriptor markerIcon;

  @override
  void initState() {
    _updateMarker();
    super.initState();
  }

  Future<void> _updateMarker() async {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    )..addListener(() {
      Future.delayed(const Duration(milliseconds: 200), () async {
        final BitmapDescriptor icon = await BitmapDescriptor.asset(
            ImageConfiguration(
              size:
              Size(24 * scaleAnimation.value, 24 * scaleAnimation.value),
            ),
            'assets/images/location_pin.png');
        setState(() {
          markerIcon = icon;
        });
      });
    })..repeat(reverse: true);
    scaleAnimation = Tween<double>(begin: 0.1, end: 2.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.bounceOut,
      ),
    );

    animationController.forward();
    Future.delayed(const Duration(seconds: 2), () {
      animationController.animateTo(0.5);
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapBloc, MapState>(
      builder: (context, state) {
        if (state is MapLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is MapLoaded) {
          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 1000),
            switchInCurve: Curves.easeIn,
            child: GoogleMap(
              key: ValueKey(state.markers),
              initialCameraPosition: const CameraPosition(
                target: LatLng(37.7749, -122.4194),
                zoom: 13,
              ),
              onMapCreated: (controller) {
                mapController = controller;
                _updateMarker();
              },
              markers: state.markers.map((marker) {
                return Marker(
                  markerId: MarkerId(marker.id),
                  position: marker.position,
                  icon: markerIcon,
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (_) => MarkerDetails(marker),
                    );
                  },
                );
              }).toSet(),
            ),
          );
        }
        return const Center(child: Text('Select a category.'));
      },
    );
  }
}