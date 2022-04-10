import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../widgets/custom_floating_action_button.dart';

const count = 4;

class FourSquaresScreen extends HookWidget {
  const FourSquaresScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final defaultColors = List<Color>.filled(count, Colors.grey);
    final colors = useState<List<Color>>(defaultColors);
    final changeColor = useCallback(
      () => colors.value = List<Color>.generate(
          count,
          (index) => Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      [colors],
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '4 квадрата',
          style: TextStyle(color: Colors.black, fontSize: 24.0),
        ),
      ),
      floatingActionButton: CustomFloatingActionButton(onTap: changeColor),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 100.0, horizontal: 15.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(count, (index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(color: colors.value[index]),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
