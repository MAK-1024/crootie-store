import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';

class ImageList extends StatelessWidget {
  const ImageList({super.key});

  @override
  Widget build(BuildContext context) {



    final List<String> imageUrls = [
      'https://i5.walmartimages.com/asr/96554892-e5ec-4838-9cad-449077916242_1.4d5a8a03103fc019f5214f4478df5e1e.jpeg',
      'https://i5.walmartimages.com/asr/96554892-e5ec-4838-9cad-449077916242_1.4d5a8a03103fc019f5214f4478df5e1e.jpeg',
      'https://i5.walmartimages.com/asr/96554892-e5ec-4838-9cad-449077916242_1.4d5a8a03103fc019f5214f4478df5e1e.jpeg',
      'https://i5.walmartimages.com/asr/96554892-e5ec-4838-9cad-449077916242_1.4d5a8a03103fc019f5214f4478df5e1e.jpeg',
    ];


    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return Container(
            height: 80,
            width: 80,
            margin: const EdgeInsets.only(right: 15),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: AppColor.mainColor,
              ),
            ),
            child: Image.network(imageUrls[index]),
          );
        },
      ),
    );
  }
}
