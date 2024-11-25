part of 'map_bloc.dart';

abstract class MapState extends Equatable {
  @override
  List<Object?> get props => [];
}

class MapInitial extends MapState {}

class MapLoading extends MapState {}

class MapLoaded extends MapState {
  final List<MarkerEntity> markers;

  MapLoaded(this.markers);

  @override
  List<Object?> get props => [markers];
}

class MapError extends MapState {
  final String message;

  MapError(this.message);

  @override
  List<Object?> get props => [message];
}
