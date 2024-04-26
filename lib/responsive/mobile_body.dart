import 'package:flutter/material.dart';
import 'package:responsivedashboard/constants.dart';
import 'package:responsivedashboard/util/my_box.dart';
import 'package:responsivedashboard/util/my_tile.dart';
import 'package:responsivedashboard/widgets/ImageGallery.dart';
import 'package:responsivedashboard/widgets/list/NewsList.dart';
import 'package:responsivedashboard/widgets/list/PromoList.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
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
