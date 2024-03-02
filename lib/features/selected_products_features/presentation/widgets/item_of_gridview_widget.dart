import 'package:crootie_store/core/utils/router.dart';
import 'package:crootie_store/features/selected_products_features/presentation/widgets/details_of_item_gridview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ItemOfGridView extends StatelessWidget {
  const ItemOfGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kProductDetailsView);
      },
      child: const Card(
        color: Colors.white,
        elevation: 2,
        child: Padding(
            padding: EdgeInsets.only(right: 8, left: 8, bottom: 2),
            child: DetailsOfGridViewItem()),
      ),
    );
  }
}
