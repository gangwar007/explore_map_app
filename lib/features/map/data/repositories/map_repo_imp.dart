import '../../domain/entities/marker_entities.dart';
import '../../domain/repositories/map_repository.dart';
import '../datasources/map_data_source.dart';

class MapRepositoryImpl implements MapRepository {
  final MapDataSource dataSource;

  MapRepositoryImpl(this.dataSource);

  @override
  Future<List<MarkerEntity>> getMarkers(String category) async {
    final markers = await dataSource.fetchMarkers();
    return markers.where((marker) => marker.category == category).toList();
  }
}