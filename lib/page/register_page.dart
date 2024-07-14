import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:resep_makanan/page/home.page.dart';
import 'package:resep_makanan/page/login_page.dart';
import 'package:resep_makanan/theme.dart';
import 'package:resep_makanan/wrapper_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool isLoading = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  void daftar() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      isLoading = true;
    });
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      if (userCredential.user != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Akun Anda Berhasil Dibuat")),
        );

        // Kirim verifikasi email (jika perlu)
        await userCredential.user!.sendEmailVerification();
        FirebaseAuth.instance.signOut();

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      }
    } on FirebaseAuthException catch (e) {
      String errorMessage;
      if (e.code == 'weak-password') {
        errorMessage = "Password yang digunakan terlalu singkat";
      } else if (e.code == 'email-already-in-use') {
        errorMessage = "Email Anda sudah terdaftar, silahkan login";
      } else {
        errorMessage = "Terjadi kesalahan saat mendaftarkan akun";
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(errorMessage)),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text("Terjadi kesalahan, tidak dapat mendaftarkan akun")),
      );
    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              SizedBox(height: 20),
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
              SizedBox(height: 27),
              Text(
                "Name",
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              SizedBox(height: 5),
              Container(
                height: 55,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                    hintText: "Enter Name",
                  ),
                  style: TextStyle(fontSize: 11, color: Colors.black),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Email",
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              SizedBox(height: 5),
              Container(
                height: 55,
                child: TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                    hintText: "Enter Email",
                  ),
                  style: TextStyle(fontSize: 11, color: Colors.black),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email harus diisi';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Password",
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              SizedBox(height: 5),
              Container(
                height: 55,
                child: TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                    hintText: "Enter Password",
                  ),
                  style: TextStyle(fontSize: 11, color: Colors.black),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password harus diisi';
                    }
                    return null;
                  },
                  obscureText: true,
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Confirm Password",
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              SizedBox(height: 5),
              Container(
                height: 55,
                child: TextFormField(
                  controller: confirmPasswordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                    hintText: "Retype Password",
                  ),
                  style: TextStyle(fontSize: 11, color: Colors.black),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Konfirmasi password harus diisi';
                    }
                    if (value != passwordController.text) {
                      return 'Password tidak sama';
                    }
                    return null;
                  },
                  obscureText: true,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Forgot Password?",
                style: TextStyle(color: orangeColor),
              ),
              SizedBox(height: 25),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  backgroundColor: greenColor,
                ),
                onPressed: () {
                  daftar();
                },
                child: Text(
                  "Register",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  "Or Sign in With",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: greyColor,
                  ),
                ),
              ),
              SizedBox(height: 20),
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
                          color:
                              Colors.black.withOpacity(0.1), // Warna bayangan
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
                  SizedBox(width: 25),
                  Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                      color: Colors.white, // Warna background container
                      borderRadius: BorderRadius.circular(8), // Radius sudut
                      boxShadow: [
                        BoxShadow(
                          color:
                              Colors.black.withOpacity(0.1), // Warna bayangan
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
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(color: greyColor),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Text(
                      " Login",
                      style: TextStyle(
                        color: orangeColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
