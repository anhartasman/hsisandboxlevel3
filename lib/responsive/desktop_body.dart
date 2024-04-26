import 'package:flutter/material.dart';

import 'package:responsivedashboard/widgets/item/PromoItem.dart';
import 'package:responsivedashboard/widgets/ImageGallery.dart';
import 'package:responsivedashboard/widgets/list/NewsList.dart';
import 'package:responsivedashboard/widgets/list/PromoList.dart';
import '../constants.dart';
import '../util/my_box.dart';
import '../util/my_tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      appBar: myAppBar,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // open drawer
            myDrawer,

            // first half of page
            Expanded(
              flex: 2,
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
            // second half of page
            Expanded(
              child: PromoList(),
            ),
          ],
        ),
      ),
    );
  }
}
