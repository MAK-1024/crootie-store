import 'package:crootie_store/core/utils/router.dart';
import 'package:crootie_store/features/home_feature/presentation/widgets/widgets_of_homescreen.dart/listview_of_products_widgets/details_of_product_widget.dart';
import 'package:flutter/material.dart';
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
          height: 254,
          width: 190,
          margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
          child: const Card(
            color: Colors.white,
            child:
                Padding(padding: EdgeInsets.all(8.0), child: DetailsOfItem()),
          )),
    );
  }
}
