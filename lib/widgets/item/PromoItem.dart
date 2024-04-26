import 'package:flutter/material.dart';
import 'package:responsivedashboard/constants.dart';
import '../../util/my_box.dart';
import '../../util/my_tile.dart';

class PromoItem extends StatelessWidget {
  final String title;
  final int imgId;
  const PromoItem(this.title, this.imgId, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey[200],
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Image.network('https://picsum.photos/seed/$imgId/300/100'),
            )
          ],
        ),
      ),
    );
  }
}
