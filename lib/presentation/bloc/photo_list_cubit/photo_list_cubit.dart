import 'package:boost_grade/domain/useCases/get_all_photos.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'photo_list_state.dart';

class PhotoListCubit extends Cubit<PhotoState> {
  final GetAllPhotos getAllPhotos;

  PhotoListCubit({required this.getAllPhotos}) : super(PhotoEmpty());

  void loadPhoto() async {
    emit(PhotoLoading());

    try {
      final photos = await getAllPhotos();
      emit(PhotoLoaded(photos));
    } on Exception {
      emit(PhotoError());
    }
  }
}