import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'dart:math' as math;

import '../../widgets/custom_floating_action_button.dart';

const itemCount = 1000;

class ColorListScreen extends HookWidget {
  const ColorListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final defaultColors = List<Color>.filled(itemCount, Colors.grey);
    final colors = useState<List<Color>>(defaultColors);
    final changeColor = useCallback(
      () => colors.value = List<Color>.generate(
          itemCount,
          (index) => Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)),
      [colors],
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Цветной список'),
      ),
      floatingActionButton: CustomFloatingActionButton(onTap: changeColor),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          separatorBuilder: ((context, index) {
            return const SizedBox(
              height: 10.0,
            );
          }),
          itemCount: itemCount,
          itemBuilder: (context, index) {
            return Container(
              height: 70,
              color: colors.value[index],
            );
          },
        ),
      ),
    );
  }
}
