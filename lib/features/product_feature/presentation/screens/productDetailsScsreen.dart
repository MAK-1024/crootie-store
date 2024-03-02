import 'package:crootie_store/features/product_feature/presentation/screens/widgets/body_of_productdetailsScreen.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Directionality(
              textDirection: TextDirection.rtl, child: ProductDetailsBody())),
    );
  }
}
