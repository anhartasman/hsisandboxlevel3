import 'package:flutter/material.dart';
import 'package:responsivedashboard/constants.dart';
import 'package:responsivedashboard/widgets/item/PromoItem.dart';

class PromoList extends StatelessWidget {
  const PromoList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return PromoItem("Promo ${index + 1}", (index + 1));
      },
    );
  }
}
