import 'package:flutter/material.dart';

class SampleText extends StatelessWidget {
  final String caption;
  const SampleText({Key? key, required this.caption}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
        duration: const Duration(milliseconds: 2000),
        child: Container(
            key: ValueKey(caption),
            padding: const EdgeInsets.all(50),
            color: int.parse(caption) % 2 == 0 ? Colors.green : Colors.blue,
            child: Text(caption)));
  }
}
