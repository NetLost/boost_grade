import 'package:flutter/material.dart';
import 'widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {

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
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            customButton('4 квадрата', () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Container(),
                ),
              );
            }),
            const SizedBox(height: 20.0,),
            customButton('Цветной список', () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Container(),
                ),
              );
            }),
            const SizedBox(height: 20.0,),
            customButton('Codelab', () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Container(),
                ),
              );
            }),
            const SizedBox(height: 20.0,),
            customButton('Асинхронный запрос', () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Container(),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
