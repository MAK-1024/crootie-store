import 'package:crootie_store/core/utils/app_color.dart';
import 'package:crootie_store/core/utils/app_string.dart';
import 'package:crootie_store/core/utils/style.dart';
import 'package:crootie_store/features/home_feature/presentation/screens/Screen4.dart';
import 'package:flutter/material.dart';
import '../../../../core/reusable_compnant/navBarCompo.dart';
import '../../../../core/utils/methods.dart';
import 'Screen1.dart';
import 'Screen2.dart';
import 'Screen3.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List<Widget> screens = [
    const Screen1(),
    const Screen2(),
    const Screen3(),
    const Screen4(),
  ];

  void _updateIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> items = [
      buildBottomNavBarItem(
        icon: Icons.other_houses_outlined,
        icon2: Icons.other_houses_sharp,
        title: AppString.mainPage,
        currentIndex: _currentIndex,
        index: 0,
      ),
      buildBottomNavBarItem(
        icon: Icons.shopping_cart_outlined,
        icon2: Icons.shopping_cart_sharp,
        title: AppString.basketPage,
        currentIndex: _currentIndex,
        index: 1,
      ),
      buildBottomNavBarItem(
        icon: Icons.favorite_outline_outlined,
        icon2: Icons.favorite,
        title: AppString.favoritePage,
        currentIndex: _currentIndex,
        index: 2,
      ),
      buildBottomNavBarItem(
        icon: Icons.person_outline,
        icon2: Icons.person,
        title: AppString.profilePage,
        currentIndex: _currentIndex,
        index: 3,
      ),
    ];
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: IndexedStack(
          index: _currentIndex,
          children: screens,
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          child: BottomNavBar(
            items: items,
            currentIndex: _currentIndex,
            onTap: _updateIndex,
          ),
        ),
      ),
    );
  }
}
