import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatelessWidget {
  final int selectedIndex;
  final Function(int index) onTap;

  BottomNavigationWidget({
    Key? key,
    required this.selectedIndex,
    required this.onTap,
  }) : super(key: key);

  final List<String> itemBar = [
    'home',
    'profile',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 25),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
          itemBar.length,
          (i) => GestureDetector(
            onTap: () {
              onTap(i);
            },
            child: Image.asset(
              'assets/icons/${itemBar[i]}' +
                  (i == selectedIndex ? '_active' : '') +
                  '.png',
              width: 24,
              height: 24,
            ),
          ),
        ),
      ),
    );
  }
}
