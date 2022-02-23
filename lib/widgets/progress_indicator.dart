import 'package:flutter/material.dart';

class ProgressIndicatorCustom extends StatelessWidget {
  const ProgressIndicatorCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: size.height / 8,
            width: size.width / 3.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[300],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CircularProgressIndicator.adaptive(),
              SizedBox(height: 12),
              Text('Loading...')
            ],
          )
        ],
      ),
    );
  }
}
