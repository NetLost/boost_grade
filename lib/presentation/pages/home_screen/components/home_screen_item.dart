import 'package:flutter/material.dart';

class HomeScreenItem extends StatelessWidget {
  final String name;
  final VoidCallback onTap;
  const HomeScreenItem({
    Key? key,
    required this.name,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 21),
        height: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.blue),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: const TextStyle(fontSize: 20),
            ),
            const Icon(Icons.arrow_forward)
          ],
        ),
      ),
    );
  }
}