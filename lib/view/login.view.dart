import 'dart:async';

import 'package:beauty_mapping/screens/welcome.dart';
import 'package:beauty_mapping/utils/global.colors.dart';
import 'package:beauty_mapping/view/homepage.dart';
import 'package:beauty_mapping/view/register.view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../utils/auth.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  AuthController authController = AuthController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
              child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(15.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
            padding: const EdgeInsets.only(top: 30),
            alignment: Alignment.center,
            child: SvgPicture.asset(
              'assets/images/blueLogo.svg',
              height: 180,
            ),
          ),
          const SizedBox(height: 2),
          Container(
            padding: const EdgeInsets.only(top: 30),
            child: Text(
              'Login to your account',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: GlobalColors.textColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(height: 50),
          Container(
            padding: const EdgeInsets.only(top: 3, left: 15),
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 7,
                ),
              ],
              color: Colors.white,
            ),
            child: TextFormField(
              controller: authController.loginEmailController,
              keyboardType: TextInputType.emailAddress,
              obscureText: false,
              decoration: const InputDecoration(
                  hintText: 'Email',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(0),
                  hintStyle: TextStyle(height: 1)),
            ),
          ),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.only(top: 3, left: 15),
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 7,
                ),
              ],
              color: Colors.white,
            ),
            child: TextFormField(
              controller: authController.loginPasswordController,
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: const InputDecoration(
                  hintText: 'Password',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(0),
                  hintStyle: TextStyle(height: 1)),
            ),
          ),
          SizedBox(height: 15),
          InkWell(
            onTap: () {
              authController.loginUser();
            },
            child: Container(
              alignment: Alignment.center,
              height: 55,
              decoration: BoxDecoration(
                color: GlobalColors.mainColor,
                borderRadius: BorderRadius.circular(6),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Text(
                'Sign In',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 30),
                width: MediaQuery.of(context).size.width * 1,
                alignment: Alignment.center,
                child: Text(
                  'Or sign in with',
                  style: TextStyle(
                    color: GlobalColors.textColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(color: Colors.black.withOpacity(0.1))
                      ]),
                  child: SvgPicture.asset(
                    'assets/images/google.svg',
                    height: 30,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(color: Colors.black.withOpacity(0.1))
                      ]),
                  child: SvgPicture.asset(
                    'assets/images/facebook.svg',
                    height: 30,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(color: Colors.black.withOpacity(0.1))
                      ]),
                  child: SvgPicture.asset(
                    'assets/images/twitter.svg',
                    height: 30,
                  ),
                ),
              ),
            ],
          ),
        ]),
      ))),
      bottomNavigationBar: Container(
        height: 50,
        alignment: Alignment.center,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Don\'t have an account? ',
            style: TextStyle(
              fontSize: 17,
            ),
          ),
          InkWell(
            onTap: () {
              print('Clicked');
              Timer(const Duration(seconds: 1), () {
                Get.to(() => Signup());
              });
            },
            child: Text(
              'Sign Up',
              style: TextStyle(
                color: GlobalColors.mainColor,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
