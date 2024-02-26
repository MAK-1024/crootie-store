import 'package:crootie_store/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/router.dart';

class FavScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Favorites'),
      //   centerTitle: true,
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.favorite_border,
              size: 80,
              color: Colors.grey,
            ),
            SizedBox(height: 16),
            Text(
              'قائمة المفضلة فارغة حاليا',
                style: AppStyle.textStyle18.copyWith(fontWeight: FontWeight.bold)
            ),
            SizedBox(height: 8),
            Text(
              'أضف منتجات إلى قائمة المفضلة للعثور عليها بسهولة.',
              textAlign: TextAlign.center,
              style: AppStyle.textStyle16
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
              },
              child: Text('تسوق الآن',style: AppStyle.textStyle12.copyWith(fontSize: 16 ,fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ),
    );
  }
}

