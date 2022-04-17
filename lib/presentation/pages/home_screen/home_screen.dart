import 'package:flutter/material.dart';
import 'components/home_screen_item.dart';

class HomeScreen extends StatelessWidget {
  static final List<_PageButtonPayload> _titles = [
    _PageButtonPayload(
      '4 квадрата',
      MaterialPageRoute(builder: (context) => Container()),
    ),
    _PageButtonPayload(
      'Цветной список',
      MaterialPageRoute(builder: (context) => Container()),
    ),
    _PageButtonPayload(
      'Codelab',
      MaterialPageRoute(builder: (context) => Container()),
    ),
    _PageButtonPayload(
      'Асинхронный запрос',
      MaterialPageRoute(builder: (context) => Container()),
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
            'Главная',
            style: TextStyle(color: Colors.black, fontSize: 24.0),
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

  const _PageButtonPayload(this.title, this.route);
}
