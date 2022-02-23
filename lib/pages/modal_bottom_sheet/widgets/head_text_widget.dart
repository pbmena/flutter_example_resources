import 'package:flutter/material.dart';

class HeadTextWidget extends StatelessWidget {
  const HeadTextWidget({Key? key, required this.text}) : super(key: key);
  final String? text;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Text(
          text!,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.grey[600],
          ),
        ),
      );
}
