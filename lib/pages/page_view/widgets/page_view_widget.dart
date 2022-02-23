import 'package:flutter/material.dart';
import 'package:flutter_example_resources/widgets/image_custom.dart';

class PageViewCustom extends StatelessWidget {
  const PageViewCustom({
    Key? key,
    required this.viewFraction,
    required this.iCount,
    required this.hImg,
    required this.padEnds,
  }) : super(key: key);

  final double viewFraction;
  final int iCount;
  final double hImg;
  final bool padEnds;

  @override
  Widget build(BuildContext context) => PageView.builder(
        controller: PageController(viewportFraction: viewFraction),
        physics: const ClampingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        padEnds: padEnds,
        itemCount: iCount,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: PhysicalModel(
              elevation: 5,
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: ImageCustom(
                  index: index,
                  heightImage: hImg,
                  borderRadius: 30,
                ),
              ),
            ),
          );
        },
      );
}
