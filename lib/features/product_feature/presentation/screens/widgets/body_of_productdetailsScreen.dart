import 'package:crootie_store/core/utils/style.dart';
import 'package:crootie_store/features/product_feature/presentation/screens/widgets/image_list_widget.dart';
import 'package:crootie_store/features/product_feature/presentation/screens/widgets/main_image_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/reusable_compnant/button_compo.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/router.dart';
import 'color_list_widget.dart';

class ProductDetailsBody extends StatefulWidget {
  const ProductDetailsBody({super.key});

  @override
  State<ProductDetailsBody> createState() => _ProductDetailsBodyState();
}

class _ProductDetailsBodyState extends State<ProductDetailsBody> {





  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              actions: [
                IconButton(
                  onPressed: ()
                  {
                    GoRouter.of(context).push(AppRouter.kHomeView);
                  },
                  icon: const Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                  ),
                ),
              ],
              leading: IconButton(
                  onPressed: () {},
                  icon: const Material(
                    elevation: 3,
                    shape: CircleBorder(),
                    child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20,
                        child: Icon(
                          Icons.favorite,
                          color: AppColor.mainColor,
                        )),
                  ))),
          body: Column(children: [
            const MainImage(),
            const Padding(
              padding: EdgeInsets.only(left: 220),
              child: Text(
                'معطف شتوي',
                style:AppStyle.textStyle24,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 300),
              child: Text(
                'نسائي',
                style:AppStyle.textStyle16,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const ColorList(),
            const SizedBox(
              height: 20,
            ),
            const ImageList(),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 290),
              child: Text(
                'الوصف',
                style:AppStyle.textStyle24,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'فهذه السترة المصنوعة من اقمشة فاخرة كالصوف الناعم، الكشمير الناعم، او خلاطات الحرير الناعم، لا تشعّ الاناقة فحسب، بل تضمن ايضا الراحة والقدرة على التحمل. وغالبا ما يتضمن تصميمها الرائع غلافا ذا صدر واحد مع ازرار لذيذة، مما يخلق نقطة مركزية تكمِّل تطور السترة عموما.',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomMaterialButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.white,
                  ),
                  buttonText: 'اشتري الأن ',
                  buttonColor: AppColor.mainColor,
                  height: 48,
                  minWidth: 180,
                ),
                const Row(
                  children: [
                    Text(
                      '255.83',
                      style: TextStyle(fontSize: 24),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "د.ل",
                      style: TextStyle(fontSize: 24, color: AppColor.mainColor),
                    ),
                  ],
                )
              ],
            ),
          ])),
    );
  }
}
