import 'package:crootie_store/core/utils/style.dart';
import 'package:crootie_store/features/product_feature/presentation/screens/widgets/coustom_appbar_of_productdetails_widget.dart';
import 'package:crootie_store/features/product_feature/presentation/screens/widgets/image_list_widget.dart';
import 'package:crootie_store/features/product_feature/presentation/screens/widgets/main_image_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/reusable_compnant/button_compo.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/router.dart';
import '../../../../selected_products_features/presentation/widgets/custom_products_appbar_widget.dart';
import 'color_list_widget.dart';

class ProductDetailsBody extends StatefulWidget {
  const ProductDetailsBody({super.key});

  @override
  State<ProductDetailsBody> createState() => _ProductDetailsBodyState();
}

class _ProductDetailsBodyState extends State<ProductDetailsBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const AppbarOfProductScreen(),
        const MainImage(),
        SizedBox(
          height: 30.h,
        ),
        Text(
          'معطف شتوي',
          style: AppStyle.textStyle24.copyWith(fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          'نسائي',
          style: AppStyle.textStyle16.copyWith(fontWeight: FontWeight.w600),
          textAlign: TextAlign.end,
        ),
        const ColorList(),
        const ImageList(),
        const Spacer(),
        Text(
          'الوصف',
          style: AppStyle.textStyle24.copyWith(fontWeight: FontWeight.w600),
        ),
        const Spacer(),
        const Text(
          maxLines: 5,
          'فهذه السترة المصنوعة من اقمشة فاخرة كالصوف الناعم، الكشمير الناعم، او خلاطات الحرير الناعم، لا تشعّ الاناقة فحسب، بل تضمن ايضا الراحة والقدرة على التحمل. وغالبا ما يتضمن تصميمها الرائع غلافا ذا صدر واحد مع ازرار لذيذة، مما يخلق نقطة مركزية تكمِّل تطور السترة عموما.',
          style: TextStyle(
              fontSize: 12, color: Colors.grey, fontWeight: FontWeight.w600),
        ),
        const Spacer(),
        SizedBox(
          height: 46.h,
          width: double.infinity,
          child: Row(
            children: [
              SizedBox(
                width: 168.h,
                child: CustomMaterialButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.white,
                  ),
                  buttonText: 'اشتري الأن ',
                  buttonColor: AppColor.mainColor,
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  const Text(
                    '255.83',
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  const Text(
                    "د.ل",
                    style: TextStyle(fontSize: 24, color: AppColor.mainColor),
                  ),
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}
