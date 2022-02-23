import 'package:flutter/material.dart';

class IconCustom extends StatelessWidget {
  const IconCustom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => const Icon(
        Icons.horizontal_rule_rounded,
        size: 30,
        color: Colors.grey,
      );
}
