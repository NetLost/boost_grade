import 'package:boost_grade/presentation/bloc/photo_list_cubit/photo_list_cubit.dart';
import 'package:boost_grade/presentation/pages/async_request_screen/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widgets/custom_floating_action_button.dart';

class AsyncRequestScreen extends StatelessWidget {
  const AsyncRequestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Цветной список'),
      ),
      floatingActionButton: CustomFloatingActionButton(onTap: () async {
        BlocProvider.of<PhotoListCubit>(context, listen: false).loadPhoto();
      }),
      body: const Body(),
    );
  }
}