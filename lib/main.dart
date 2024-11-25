import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/map/data/datasources/map_data_source.dart';
import 'features/map/data/repositories/map_repo_imp.dart';
import 'features/map/domain/usecases/get_markers_usecase.dart';
import 'features/map/presentation/bloc/map_bloc.dart';
import 'features/map/presentation/screens/home_screen.dart';

void main() {
  runApp(const ExploreMapApp());
}

class ExploreMapApp extends StatelessWidget {
  const ExploreMapApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) {
            // Dependency injection for Clean Architecture layers
            final mapDataSource = MapDataSource();
            final mapRepository = MapRepositoryImpl(mapDataSource);
            final getMarkersUseCase = GetMarkersUseCase(mapRepository);

            return MapBloc(getMarkersUseCase);
          },
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Explore Map',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          brightness: Brightness.light,
        ),
        darkTheme: ThemeData(
          primarySwatch: Colors.blue,
          brightness: Brightness.dark,
        ),
        themeMode: ThemeMode.system,
        home:  HomeScreen(),
      ),
    );
  }
}