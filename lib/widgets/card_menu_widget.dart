// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:resep_makanan/models/menu_model.dart';
import 'package:resep_makanan/page/detail_page.dart';

import '../theme.dart';

class CardMenuWidget extends StatelessWidget {
  List<MenuModel> menu;

  CardMenuWidget({
    Key? key,
    required this.menu,
  }) : super(key: key);

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
              width: 252,
              height: 128,
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 20.0,
                            spreadRadius: 0.0,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      width: 252,
                      height: 95,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 138,
                            child: Text(
                              menu[index].name,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: orangeColor,
                                size: 14,
                              ),
                              Icon(
                                Icons.star,
                                color: orangeColor,
                                size: 14,
                              ),
                              Icon(
                                Icons.star,
                                color: orangeColor,
                                size: 14,
                              ),
                              Icon(
                                Icons.star,
                                color: orangeColor,
                                size: 14,
                              ),
                              Icon(
                                Icons.star,
                                color: orangeColor,
                                size: 14,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          "assets/images/profile2.jpg",
                                        ))),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "By James Milner",
                                style: TextStyle(
                                    fontSize: 12, color: greyDarkColor),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: Column(
                      children: [
                        Container(
                          height: 88,
                          width: 88,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(menu[index].image))),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.timer_outlined,
                              color: greyColor,
                              size: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              menu[index].duration,
                              style:
                                  TextStyle(color: greyDarkColor, fontSize: 12),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
