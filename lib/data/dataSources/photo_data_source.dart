import 'dart:convert';

import 'package:boost_grade/app_settings.dart';
import 'package:boost_grade/data/models/photo_model.dart';
import 'package:http/http.dart' as http;

abstract class PhotoDataSource {
  Future<List<PhotoModel>> getAllPhotos();
}

class PhotoDataSourceImpl implements PhotoDataSource {
  final http.Client client;

  PhotoDataSourceImpl({required this.client});

  @override
  Future<List<PhotoModel>> getAllPhotos() async {
    final responce = await client
        .get(Uri.parse(AppSettings.url), headers: {'Content-type': 'application/json'});
        
    if (responce.statusCode == 200) {
      final photos = json.decode(responce.body);
      return (photos as List)
          .map((photo) => PhotoModel.fromJson(photo))
          .toList();
    } else {
      throw Exception();
    }
  }
}
