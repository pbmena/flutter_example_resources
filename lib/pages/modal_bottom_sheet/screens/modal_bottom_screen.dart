import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class ModalBottomScreen extends StatelessWidget {
  const ModalBottomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Show Modal Bottom Sheet'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.teal[400],
            elevation: 5,
            alignment: Alignment.center,
            onPrimary: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
            textStyle: const TextStyle(
              fontWeight: FontWeight.w900,
            ),
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: const Text('Show Modal Bottom'),
          ),
          onPressed: () => buildBottomSheet(context),
        ),
      ),
    );
  }

  void buildBottomSheet(context) => showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        barrierColor: Colors.black38,
        builder: (context) => FractionallySizedBox(
          heightFactor: 0.6,
          child: PhysicalModel(
            color: Colors.white,
            elevation: 5,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(60),
              topRight: Radius.circular(60),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                IconCustom(),
                HeadTextWidget(text: 'Show Modal Bottom'),
                SizedBox(height: 15),
                ListViewWidget(),
              ],
            ),
          ),
        ),
      );
}
