import 'package:flutter/material.dart';

class HeadText extends StatelessWidget {
  const HeadText({
    Key? key,
    required this.headText,
  }) : super(key: key);
  final String headText;

  @override
  Widget build(BuildContext context) {
    return Text(
      headText,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
