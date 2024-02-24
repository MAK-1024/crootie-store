import 'package:crootie_store/features/home_feature/presentation/screens/Screen4.dart';
import 'package:flutter/material.dart';
import '../../../../core/reusable_compnant/navBarCompo.dart';
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

  List<BottomNavigationBarItem> items = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.other_houses_outlined, color: Colors.black),
      label: '',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart_outlined, color: Colors.black),
      label: '',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.favorite_outline_outlined, color: Colors.black),
      label: '',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.person_outline, color: Colors.black),
      label: '',
    ),
  ];

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
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: IndexedStack(
          index: _currentIndex,
          children: screens,
        ),
        bottomNavigationBar: BottomNavBar(
          items: items,
          currentIndex: _currentIndex,
          onTap: _updateIndex,
        ),
      ),
    );
  }
}
