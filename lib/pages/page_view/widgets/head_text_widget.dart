import 'package:flutter/material.dart';

class HeadTextPage extends StatelessWidget {
  const HeadTextPage({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) => Text(
        text,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w700,
        ),
      );
}
