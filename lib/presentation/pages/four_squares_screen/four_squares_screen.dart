import 'package:boost_grade/app_settings/app_strings.dart';
import 'package:boost_grade/utils/app_utils.dart';
import 'package:flutter/material.dart';
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
      () => colors.value =
          List<Color>.generate(count, (index) => AppUtils.getRandomColor()),
      [colors],
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          AppStrings.firstItemName,
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
                  color: colors.value[index],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
