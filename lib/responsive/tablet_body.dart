import 'package:flutter/material.dart';
import 'package:responsivedashboard/constants.dart';
import 'package:responsivedashboard/widgets/ImageGallery.dart';
import 'package:responsivedashboard/widgets/list/NewsList.dart';
import 'package:responsivedashboard/widgets/list/PromoList.dart';
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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: defaultBackgroundColor,
        appBar: myAppBar,
        drawer: myDrawer,
        bottomNavigationBar: Container(
          color: appBarColor,
          child: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.newspaper),
                text: "News",
              ),
              Tab(
                icon: Icon(Icons.ads_click),
                text: "Promo",
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TabBarView(
            children: [
              Column(
                children: [
                  // first 4 boxes in grid
                  ImageGallery(),

                  // list of previous days
                  Expanded(
                    child: NewsList(),
                  ),
                ],
              ),
              PromoList()
            ],
          ),
        ),
      ),
    );
  }
}
