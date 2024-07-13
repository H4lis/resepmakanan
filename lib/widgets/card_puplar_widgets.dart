import 'package:flutter/material.dart';
import 'package:resep_makanan/models/menu_model.dart';

import '../page/detail_page.dart';
import '../theme.dart';

class CardPopularWidgets extends StatelessWidget {
  final List<MenuModel> menu;
  const CardPopularWidgets({super.key, required this.menu});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(
        menu.length,
        (index) => GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(menu: menu[index]),
                ));
          },
          child: Container(
            margin: EdgeInsets.only(
                right: 15, left: index == 0 ? defaultMargin : 0),
            width: 150,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 176,
                    width: 150,
                    decoration: BoxDecoration(
                        color: greyColor,
                        borderRadius: BorderRadius.circular(12)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          width: 110,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(menu[index].image),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Container(
                          width: 100,
                          child: Text(
                            menu[index].name,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Text(
                        "Estimasi",
                        style: TextStyle(fontSize: 11, color: greyDarkColor),
                      ),
                      Row(
                        children: [
                          Text(
                            menu[index].duration,
                            style: TextStyle(
                                fontSize: 11,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                          Spacer(),
                          Container(
                            height: 24,
                            width: 24,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100)),
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: Image.asset("assets/icons/bookmark.png"),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 24,
                  child: Container(
                    width: 45,
                    height: 23,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: orangeColor,
                          size: 18,
                        ),
                        Text(
                          "4.5",
                          style: TextStyle(
                            fontSize: 11,
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xffFFE1B3),
                        borderRadius: BorderRadius.circular(100)),
                  ),
                ),
              ],
            ),
          ),
        ),
      )

          //  [

          // ],
          ),
    );
  }
}
