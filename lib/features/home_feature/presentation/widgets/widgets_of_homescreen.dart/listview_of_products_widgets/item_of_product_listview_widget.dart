import 'package:crootie_store/core/utils/router.dart';
import 'package:crootie_store/features/home_feature/presentation/widgets/widgets_of_homescreen.dart/listview_of_products_widgets/details_of_product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ItemOfBestSeller extends StatelessWidget {
  const ItemOfBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kProductDetailsView);
      },
      child: Container(
          width: 190.w,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          child: const Card(
            color: Colors.white,
            child: Padding(
                padding: EdgeInsets.only(right: 8, left: 8, bottom: 3),
                child: DetailsOfItem()),
          )),
    );
  }
}
