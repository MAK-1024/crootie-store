import 'package:crootie_store/core/reusable_compnant/button_compo.dart';
import 'package:crootie_store/core/utils/app_color.dart';
import 'package:crootie_store/core/utils/router.dart';
import 'package:crootie_store/features/product_feature/presentation/screens/widgets/body_of_productdetailsScreen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ProductDetailsBody();
  }
}
