import 'package:boost_grade/domain/entities/photo_entity.dart';
import 'package:boost_grade/domain/repository/photo_repository.dart';

class GetAllPhotos {
  final PhotoRepository _photoRepository;

  GetAllPhotos(this._photoRepository);

  Future<List<PhotoEntity>> call() async {
    return await _photoRepository.getAllPhotos();
  }
}