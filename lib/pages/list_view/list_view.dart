import 'package:flutter/material.dart';
import 'package:flutter_example_resources/widgets/image_custom.dart';

class ListViewCustom extends StatelessWidget {
  const ListViewCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View Builder'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'To show an infinite number of items',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 1.45,
              child: ListView.builder(
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    child: ImageCustom(
                      index: index,
                      heightImage: 150,
                      borderRadius: 0,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
