import 'package:flutter/material.dart';
import 'package:flutter_example_resources/pages/page_view/widgets/widgets.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({Key? key}) : super(key: key);

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page View'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SizedBox(height: 10),
            HeadTextPage(text: 'Page Small View'),
            SizedBox(height: 10),
            SizedBox(
              height: 200,
              child: PageViewCustom(
                viewFraction: 0.4,
                iCount: 10,
                hImg: 200,
                padEnds: false,
              ),
            ),
            SizedBox(height: 40),
            HeadTextPage(text: 'Page Large View'),
            SizedBox(height: 10),
            SizedBox(
              height: 300,
              child: PageViewCustom(
                viewFraction: 0.8,
                iCount: 10,
                hImg: 300,
                padEnds: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
