import 'package:flutter/material.dart';
import 'package:resep_makanan/page/login_page.dart';
import 'package:resep_makanan/theme.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/SplashScreen.png"))),
          ),
          Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Center(
                child: Image.asset(
                  "assets/images/logo.png",
                  width: 79,
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                "100K+ Premium Recipe,",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 18),
              ),
              Spacer(),
              Container(
                width: 213,
                child: Text(
                  "Get Cooking",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
              Text(
                "Simple way to find Tasty Recipe",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 64,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ));
                },
                child: Container(
                  width: 243,
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: greenColor,
                  ),
                  child: Center(
                    child: Text(
                      "Start Cooking",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 64,
              ),
            ],
          )
        ],
      ),
    );
  }
}
