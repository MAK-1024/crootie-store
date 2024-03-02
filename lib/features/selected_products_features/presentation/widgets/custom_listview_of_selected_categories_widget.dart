import 'package:crootie_store/features/selected_products_features/presentation/widgets/custom_item_of_listview_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/style.dart';

class ListviewOfSelectedCategories extends StatelessWidget {
  const ListviewOfSelectedCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 32.h,
        margin: const EdgeInsets.symmetric(vertical: 15),
        child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            return const ItemOfListViewSelectedCategories();
          }),
        ));
  }
}
