import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/entities/photo_entity.dart';
import '../../../bloc/photo_list_cubit/photo_list_cubit.dart';
import '../../../bloc/photo_list_cubit/photo_list_state.dart';
import 'photo_list_item.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhotoListCubit, PhotoState>(
      builder: (context, state) {
        if (state is PhotoLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is PhotoLoaded) {
          final photo = state.photos;
          if (photo.isEmpty) {
            return const Center(child: Text("Not found photos"));
          }
          return ListView.builder(
              itemCount: photo.isNotEmpty ? photo.length : 0,
              itemBuilder: (context, int index) {
                PhotoEntity result = photo[index];
                return PhotoListItem(result: result);
              });
        } else if (state is PhotoError) {
          return const Center(child: Text("Error"));
        }

        return const SizedBox.shrink();
      },
    );
  }
}