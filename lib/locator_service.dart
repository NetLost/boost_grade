import 'package:boost_grade/domain/useCases/get_all_photos.dart';
import 'package:get_it/get_it.dart';

import 'data/dataSources/photo_data_source.dart';
import 'data/repositories/photo_repository_impl.dart';
import 'domain/repository/photo_repository.dart';
import 'presentation/bloc/photo_list_cubit/photo_list_cubit.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.instance;

Future<void> init() async {
  // Cubit
  sl.registerFactory(
    () => PhotoListCubit(getAllPhotos: sl()),
  );

  // UseCases
  sl.registerLazySingleton(
    () => GetAllPhotos(sl()),
  );

  // Repository
  sl.registerLazySingleton<PhotoRepository>(
    () => PhotoRepositoryImpl(
      photoDataSource: sl(),
    ),
  );

  sl.registerLazySingleton<PhotoDataSource>(
    () => PhotoDataSourceImpl(
      client: http.Client(),
    ),
  );
}
