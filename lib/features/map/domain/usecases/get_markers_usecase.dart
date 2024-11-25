import '../entities/marker_entities.dart';
import '../repositories/map_repository.dart';

class GetMarkersUseCase {
  final MapRepository repository;

  GetMarkersUseCase(this.repository);

  Future<List<MarkerEntity>> call(String category) async {
    return repository.getMarkers(category);
  }
}