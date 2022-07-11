import 'package:boost_grade/domain/entities/photo_entity.dart';

class PhotoModel extends PhotoEntity {
  const PhotoModel({
    required int albumId,
    required int id,
    required String title,
    required String url,
    required String thumbnailUrl,
  }) : super(
          albumId: albumId,
          id: id,
          title: title,
          url: url,
          thumbnailUrl: thumbnailUrl,
        );

  factory PhotoModel.fromJson(Map<String, dynamic> json) {
    return PhotoModel(
      albumId: json['albumId'],
      id: json['id'],
      thumbnailUrl: json['thumbnailUrl'],
      title: json['title'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'albumId': albumId,
      'id': id,
      'title': title,
      'url': url,
      'thumbnailUrl': thumbnailUrl
    };
  }
}
