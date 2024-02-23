import 'package:flutter/material.dart';

import 'features/product_feature/presentation/screens/productDetails_screen/productDetailsScsreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: productDetailsScreen(),
    );
  }
}


