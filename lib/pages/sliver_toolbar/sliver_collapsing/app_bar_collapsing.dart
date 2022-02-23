import 'package:flutter/material.dart';
import 'package:flutter_example_resources/widgets/widgets.dart';

class CollapsingToolbar extends StatefulWidget {
  const CollapsingToolbar({Key? key}) : super(key: key);

  @override
  State<CollapsingToolbar> createState() => _CollapsingToolbarState();
}

class _CollapsingToolbarState extends State<CollapsingToolbar> {
  Future<String> getData() async {
    await Future.delayed(const Duration(seconds: 3));
    throw 'An error occured';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 250,
            floating: true,
            pinned: true,
            leading: GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: const Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 20,
              ),
            ),
            flexibleSpace: buildFlexibleSpace(),
          ),
          buildFillRemaining(),
        ],
      ),
    );
  }

  Widget buildFlexibleSpace() => FlexibleSpaceBar(
        background: Stack(
          children: [
            const Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              right: 0,
              child: ImageCustom(index: 8, heightImage: 200, borderRadius: 0),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Opacity(
                opacity: 0.3,
                child: Container(
                  height: MediaQuery.of(context).size.height / 12.0,
                  color: Colors.grey[700],
                ),
              ),
            ),
          ],
        ),
        title: const Text(
          'Collapsing Toolbar',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
        collapseMode: CollapseMode.parallax,
      );

  Widget buildFillRemaining() => SliverToBoxAdapter(
        child: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Padding(
                padding: EdgeInsets.all(8.0),
                child: ProgressIndicatorCustom(),
              );
            }
            if (snapshot.hasError) {
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) => Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  child: ImageCustom(
                    index: index,
                    heightImage: 180,
                    borderRadius: 30,
                  ),
                ),
                shrinkWrap: true,
                primary: false,
                itemCount: 50,
              );
            } else {
              return Center(child: Text(snapshot.error.toString()));
            }
          },
        ),
      );
}
