import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/map_bloc.dart';
import '../widgets/map_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore Map'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
           const MapWidget(),
          Positioned(
            bottom: 86.0,
            right: 16.0,
            child: Column(
              children: [
                FloatingActionButton(
                  heroTag: "Cycle",
                  child: const Icon(Icons.directions_bike),
                  onPressed: () {
                    context.read<MapBloc>().add(LoadMarkers('Cycle'));
                  },
                ),
                const SizedBox(height: 8),
                FloatingActionButton(
                  heroTag: "Shopping",
                  child: const Icon(Icons.shopping_bag),
                  onPressed: () {
                    context.read<MapBloc>().add(LoadMarkers('Shopping'));
                  },
                ),
                const SizedBox(height: 8),
                FloatingActionButton(
                  heroTag: "Restaurant",
                  child: const Icon(Icons.restaurant),
                  onPressed: () {
                    context.read<MapBloc>().add(LoadMarkers('Restaurant'));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}