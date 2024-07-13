import 'package:flutter/material.dart';
import 'package:resep_makanan/theme.dart';
import 'package:resep_makanan/widgets/card_puplar_widgets.dart';

import '../models/menu_model.dart';
import '../widgets/card_menu_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          toolbarHeight: 160,
          title: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello Anjelino",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        "What are you cooking today?",
                        style: TextStyle(fontSize: 14, color: greyDarkColor),
                      )
                    ],
                  ),
                  Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/profile.jpg"))),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Icon(
                          Icons.search,
                          color: greyColor,
                        )),
                    contentPadding: EdgeInsets.all(12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                    hintText: "Search",
                    hintStyle: TextStyle(fontSize: 11, color: greyColor),
                  ),
                  style: TextStyle(fontSize: 11, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      "Resep Populer",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
              CardPopularWidgets(menu: resepPopuler),
              Container(
                margin:
                    EdgeInsets.only(top: 30, bottom: 16, left: defaultMargin),
                child: Text(
                  "Resep Baru",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              CardMenuWidget(menu: resepBaru),
              Container(
                margin:
                    EdgeInsets.only(top: 30, bottom: 16, left: defaultMargin),
                child: Text(
                  "Resep Cepat Gemuk",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              CardMenuWidget(menu: resepCepatGemuk),
              Container(
                margin:
                    EdgeInsets.only(top: 30, bottom: 16, left: defaultMargin),
                child: Text(
                  "Resep Menu Diet",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              CardMenuWidget(menu: resepMenuDiet),
              SizedBox(
                height: 120,
              )
            ],
          ),
        ),
      ),
    );
  }
}
