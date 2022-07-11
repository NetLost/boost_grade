import 'package:flutter/material.dart';

import '../../../../domain/entities/photo_entity.dart';

class PhotoListItem extends StatelessWidget {
  const PhotoListItem({
    Key? key,
    required this.result,
  }) : super(key: key);

  final PhotoEntity result;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 14.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0),
            ),
            child: SizedBox(
              width: double.infinity,
              height: 200,
              child: Image.network(
                result.url,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  return loadingProgress == null
                      ? child
                      : const Center(child: CircularProgressIndicator());
                },
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 70,
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8.0),
                bottomRight: Radius.circular(8.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 20.0,
                left: 16.0,
                right: 59.0,
                top: 18.0,
              ),
              child: Text(
                result.title,
                maxLines: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
