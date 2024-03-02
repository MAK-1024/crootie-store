import 'package:crootie_store/core/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainImage extends StatelessWidget {
  const MainImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,
      width: double.infinity,
      child: Image.asset(
        AppConst.img5,
        fit: BoxFit.fitHeight,
        alignment: Alignment.center,
      ),
    );
  }
}
