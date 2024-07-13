import 'package:flutter/material.dart';
import 'package:resep_makanan/page/home.page.dart';
import 'package:resep_makanan/page/login_page.dart';
import 'package:resep_makanan/theme.dart';
import 'package:resep_makanan/wrapper_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Create an account,",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontSize: 30,
              ),
            ),
            Text(
              "Let’s help you set up your account, it won’t take long.",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
            ),
            SizedBox(
              height: 27,
            ),
            Text(
              "Name",
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 55,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                    hintText: "Enter Name"),
                style: TextStyle(fontSize: 11, color: Colors.black),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Email",
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 55,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                    hintText: "Enter Email"),
                style: TextStyle(fontSize: 11, color: Colors.black),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Password",
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 55,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                    hintText: "Enter Password"),
                style: TextStyle(fontSize: 11, color: Colors.black),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Confirm Password",
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 55,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                    hintText: "Retype Password"),
                style: TextStyle(fontSize: 11, color: Colors.black),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Forgot Password?",
              style: TextStyle(color: orangeColor),
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 60),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                backgroundColor: greenColor,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WrapperPage(),
                    ));
              },
              child: Text(
                "Sign In",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "Or Sign in With",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: greyColor,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                    color: Colors.white, // Warna background container
                    borderRadius: BorderRadius.circular(8), // Radius sudut
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1), // Warna bayangan
                        spreadRadius: 3, // Jarak penyebaran bayangan
                        blurRadius: 5, // Radius blur bayangan
                        offset: Offset(0, 4), // Offset bayangan
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/icons/google.png",
                    ),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Container(
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                    color: Colors.white, // Warna background container
                    borderRadius: BorderRadius.circular(8), // Radius sudut
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1), // Warna bayangan
                        spreadRadius: 3, // Jarak penyebaran bayangan
                        blurRadius: 5, // Radius blur bayangan
                        offset: Offset(0, 4), // Offset bayangan
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/icons/facebook.png",
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an account?",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ));
                  },
                  child: Text(
                    "Sign In,",
                    style: TextStyle(
                      color: orangeColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 65,
            )
          ],
        ),
      ),
    );
  }
}
