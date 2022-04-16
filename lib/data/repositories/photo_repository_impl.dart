import 'package:boost_grade/data/dataSources/photo_data_source.dart';
import 'package:boost_grade/domain/entities/photo_entity.dart';
import 'package:boost_grade/domain/repository/photo_repository.dart';

class PhotoRepositoryImpl implements PhotoRepository{
  final PhotoDataSource photoDataSource;

  PhotoRepositoryImpl({required this.photoDataSource});
  @override
  Future<List<PhotoEntity>> getAllPhotos() async {
    try {
      return await photoDataSource.getAllPhotos();
    } on Exception {
      throw Exception();
    }
  }
}