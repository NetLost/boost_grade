import 'package:boost_grade/app_settings/app_strings.dart';
import 'package:flutter/material.dart';
import '../four_squares_screen/four_squares_route.dart';
import 'components/home_screen_item.dart';

class HomeScreen extends StatelessWidget {
  static final List<_PageButtonPayload> _titles = [
    _PageButtonPayload(
      title: AppStrings.firstItemName,
      route: FourSquaresRoute(),
    ),
    _PageButtonPayload(
      title: AppStrings.secondtItemName,
      route: MaterialPageRoute(builder: (context) => Container()),
    ),
    _PageButtonPayload(
      title: AppStrings.thirdItemName,
      route: MaterialPageRoute(builder: (context) => Container()),
    ),
    _PageButtonPayload(
      title: AppStrings.fourthItemName,
      route: MaterialPageRoute(builder: (context) => Container()),
    ),
  ];

  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 50),
          child: Text(
            AppStrings.appBarName,
            style: TextStyle(
              color: Colors.black,
              fontSize: 24.0,
              shadows: [
                Shadow(
                  color: Color.fromRGBO(0, 0, 0, 0.3),
                  offset: Offset(0, 4),
                  blurRadius: 10
                )
              ]
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 22.0),
        child: ListView.separated(
          itemCount: _titles.length,
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 16.0,
            );
          },
          itemBuilder: (context, index) => HomeScreenItem(
            name: _titles[index].title,
            onTap: () => Navigator.push(context, _titles[index].route),
          ),
        ),
      ),
    );
  }
}

class _PageButtonPayload {
  final String title;
  final MaterialPageRoute route;

  const _PageButtonPayload({required this.title, required this.route});
}