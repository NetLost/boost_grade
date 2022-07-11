import 'package:boost_grade/domain/entities/photo_entity.dart';

abstract class PhotoRepository {
  Future<List<PhotoEntity>> getAllPhotos();
}