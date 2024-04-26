import 'package:flutter/material.dart';
import 'package:responsivedashboard/constants.dart';
import '../util/my_box.dart';
import '../util/my_tile.dart';

class ImageGallery extends StatelessWidget {
  const ImageGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: 4,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://picsum.photos/seed/img$index/200/200')),
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey[400],
              ),
            ),
          );
        },
      ),
    );
  }
}
