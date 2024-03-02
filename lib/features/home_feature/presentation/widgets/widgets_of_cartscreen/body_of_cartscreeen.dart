import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/router.dart';
import '../../../../../core/utils/style.dart';

class CartScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Shopping Cart'),
      //
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.shopping_cart_outlined,
              size: 80,
              color: Colors.grey,
            ),
            const SizedBox(height: 16),
            Text('سلتك فارغة',
                style:
                    AppStyle.textStyle18.copyWith(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text('أضف منتجات إلى سلتك وابدأ التسوق!',
                textAlign: TextAlign.center, style: AppStyle.textStyle16),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
              },
              child: Text(
                'تسوق الآن',
                style: AppStyle.textStyle12
                    .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
