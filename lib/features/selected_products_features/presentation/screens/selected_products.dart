import 'package:crootie_store/core/utils/app_color.dart';
import 'package:crootie_store/core/utils/style.dart';
import 'package:crootie_store/features/home_feature/presentation/widgets/widgets_of_homescreen.dart/listview_of_products_widgets/item_of_product_listview_widget.dart';
import 'package:crootie_store/features/selected_products_features/presentation/widgets/custom_listview_of_selected_categories_widget.dart';
import 'package:crootie_store/features/selected_products_features/presentation/widgets/custom_products_appbar_widget.dart';
import 'package:crootie_store/features/selected_products_features/presentation/widgets/custom_search_textfield_widget.dart';
import 'package:crootie_store/features/selected_products_features/presentation/widgets/item_of_gridview_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectedProducts extends StatelessWidget {
  const SelectedProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomProductsAppbarWidget(),
                  CustomSearchTextField(),
                  ListviewOfSelectedCategories(),
                  GridViewOfProducts()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class GridViewOfProducts extends StatelessWidget {
  const GridViewOfProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.8,
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2 / 2.8,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8),
          itemCount: 8,
          itemBuilder: ((context, index) {
            return const ItemOfGridView();
          })),
    );
  }
}
