import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../domain/entities/marker_entities.dart';
import '../../domain/usecases/get_markers_usecase.dart';

part 'map_event.dart';
part 'map_state.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  final GetMarkersUseCase getMarkersUseCase;

  MapBloc(this.getMarkersUseCase) : super(MapInitial()) {
    on<LoadMarkers>((event, emit) async {
      emit(MapLoading());
      try {
        final markers = await getMarkersUseCase(event.category);
        emit(MapLoaded(markers));
      } catch (e) {
        emit(MapError('Failed to load markers'));
      }
    });
  }
}
