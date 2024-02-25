import 'package:crootie_store/features/home_feature/presentation/widgets/widgets_of_homescreen.dart/listview_of_products_widgets/item_of_product_listview_widget.dart';
import 'package:flutter/material.dart';

class ListViewOfBestSeler extends StatelessWidget {
  const ListViewOfBestSeler({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 293,
      child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            return const ItemOfBestSeller();
          })),
    );
  }
}
