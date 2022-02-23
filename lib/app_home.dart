import 'package:flutter/material.dart';
import 'package:flutter_example_resources/widgets/widgets.dart';

class AppHomeSplashLaunch extends StatelessWidget {
  const AppHomeSplashLaunch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Launch'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const HeadText(headText: 'Choose an example:'),
            const SizedBox(height: 20),
            ElevatedButtonCustom(
                textButton: 'Go to ModalBottomSheet',
                onPressed: () =>
                    Navigator.of(context).pushNamed('/showModalBottomSheet')),
            const SizedBox(height: 5),
            ElevatedButtonCustom(
                textButton: 'Go to Sliver Toolbar',
                onPressed: () =>
                    Navigator.of(context).pushNamed('/persistentHeader')),
            const SizedBox(height: 5),
            ElevatedButtonCustom(
                textButton: 'Go to Collapsing Toolbar',
                onPressed: () =>
                    Navigator.of(context).pushNamed('/collapsingToolbar')),
            const SizedBox(height: 5),
            ElevatedButtonCustom(
                textButton: 'Go to PageView',
                onPressed: () =>
                    Navigator.of(context).pushNamed('/pageViewScreen')),
            const SizedBox(height: 5),
            ElevatedButtonCustom(
                textButton: 'Go to GridView',
                onPressed: () =>
                    Navigator.of(context).pushNamed('/gridViewCustom')),
            const SizedBox(height: 5),
            ElevatedButtonCustom(
                textButton: 'Go to ListView',
                onPressed: () =>
                    Navigator.of(context).pushNamed('/listViewCustom')),
          ],
        ),
      ),
    );
  }
}
