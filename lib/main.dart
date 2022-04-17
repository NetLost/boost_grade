import 'package:boost_grade/presentation/bloc/photo_list_cubit/photo_list_cubit.dart';
import 'package:flutter/material.dart';
import 'app_settings/app_themes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'presentation/pages/home_screen/home_screen.dart';
import 'locator_service.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PhotoListCubit>(
            create: (context) => di.sl<PhotoListCubit>())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Главная',
        theme: ThemeData(
          appBarTheme: AppThemes.appBarTheme(),
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
