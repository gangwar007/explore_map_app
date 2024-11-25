import '../entities/marker_entities.dart';

abstract class MapRepository {
  Future<List<MarkerEntity>> getMarkers(String category);
}