import 'package:boost_grade/domain/entities/photo_entity.dart';
import 'package:equatable/equatable.dart';

abstract class PhotoState extends Equatable {
  const PhotoState();

  @override
  List<Object?> get props => [];
}

class PhotoEmpty extends PhotoState {
  @override
  List<Object?> get props => [];
}

class PhotoLoading extends PhotoState {
  @override
  List<Object?> get props => [];
}

class PhotoLoaded extends PhotoState {
  final List<PhotoEntity> photos;

  const PhotoLoaded(this.photos);

  @override
  List<Object?> get props => [photos];
}

class PhotoError extends PhotoState {
  @override
  List<Object?> get props => [];
}