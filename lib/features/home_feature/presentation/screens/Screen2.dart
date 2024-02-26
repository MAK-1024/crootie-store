import 'package:flutter/material.dart';

import '../widgets/widgets_of_cartscreen/body_of_cartscreeen.dart';
import '../widgets/widgets_of_favscreen/body_of_favscreen.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: CartScreenBody()));
  }
}
