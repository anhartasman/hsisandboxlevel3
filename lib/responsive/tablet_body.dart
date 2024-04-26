import 'package:flutter/material.dart';
import 'package:responsivedashboard/constants.dart';
import 'package:responsivedashboard/widgets/ImageGallery.dart';
import 'package:responsivedashboard/widgets/list/NewsList.dart';
import '../util/my_box.dart';
import '../util/my_tile.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({Key? key}) : super(key: key);

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      appBar: myAppBar,
      drawer: myDrawer,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // first 4 boxes in grid
            AspectRatio(
              aspectRatio: 4,
              child: ImageGallery(),
            ),

            // list of previous days
            Expanded(
              child: NewsList(),
            ),
          ],
        ),
      ),
    );
  }
}
