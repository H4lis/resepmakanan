import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:resep_makanan/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Profile",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/profile.jpg"),
                      )),
                ),
                Column(
                  children: [
                    Text(
                      "Postingan",
                      style: TextStyle(
                          color: greyDarkColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "2",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Followers",
                      style: TextStyle(
                          color: greyDarkColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "2.5M",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Followers",
                      style: TextStyle(
                          color: greyDarkColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "2.5M",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Anjelino",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Chef",
              style: TextStyle(color: greyDarkColor, fontSize: 14),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 200,
              child: Text(
                "Private Chef Passionate about food,food,food  and life",
                style: TextStyle(color: greyDarkColor, fontSize: 14),
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(vertical: 8), child: Divider()),
            Image.asset("assets/images/favorite.png"),
            SizedBox(
              height: 20,
            ),
            Image.asset("assets/images/favorite.png"),
            SizedBox(
              height: 20,
            ),
            Image.asset("assets/images/favorite.png"),
            SizedBox(
              height: 120,
            ),
          ],
        ),
      ),
    );
  }
}
