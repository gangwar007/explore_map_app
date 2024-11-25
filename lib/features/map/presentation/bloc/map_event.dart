part of 'map_bloc.dart';

abstract class MapEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoadMarkers extends MapEvent {
  final String category;

  LoadMarkers(this.category);

  @override
  List<Object?> get props => [category];
}
