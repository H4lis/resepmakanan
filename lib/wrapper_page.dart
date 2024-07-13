import 'package:flutter/material.dart';
import 'package:resep_makanan/page/profile_page.dart';

import 'page/home.page.dart';
import 'widgets/bottom_navigation.dart';

class WrapperPage extends StatefulWidget {
  const WrapperPage({
    Key? key,
  }) : super(key: key);

  @override
  State<WrapperPage> createState() => _WrapperPageState();
}

class _WrapperPageState extends State<WrapperPage> {
  int selectedIndex = 0;
  final List<Widget> screens = [
    HomePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomSheet: BottomNavigationWidget(
        selectedIndex: selectedIndex,
        onTap: (val) {
          setState(() {
            selectedIndex = val;
          });
        },
      ),
    );
  }
}
