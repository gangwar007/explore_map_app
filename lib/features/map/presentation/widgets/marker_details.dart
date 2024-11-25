import 'package:flutter/cupertino.dart';

import '../../domain/entities/marker_entities.dart';

class MarkerDetails extends StatelessWidget {
  final MarkerEntity marker;

  const MarkerDetails(this.marker, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(marker.name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(marker.description),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}