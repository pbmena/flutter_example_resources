import 'package:flutter/material.dart';

class ImageCustom extends StatelessWidget {
  const ImageCustom({
    Key? key,
    required this.index,
    required this.heightImage,
    required this.borderRadius,
  }) : super(key: key);
  final int index;
  final double heightImage;
  final double borderRadius;

  @override
  Widget build(BuildContext context) => SizedBox(
        height: heightImage,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius),
          child: Image.network(
            'https://picsum.photos/200/300?a=$index',
            fit: BoxFit.cover,
          ),
        ),
      );
}
