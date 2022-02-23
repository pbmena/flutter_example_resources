import 'package:flutter/material.dart';

class ImageCustomWidget extends StatelessWidget {
  final int index;
  const ImageCustomWidget({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 140,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            'https://source.unsplash.com/random?sig=$index',
            fit: BoxFit.cover,
          ),
        ),
      );
}
