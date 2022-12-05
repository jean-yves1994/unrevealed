import 'dart:async';

import 'package:beauty_mapping/view/login.view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../utils/auth.dart';
import '../utils/global.colors.dart';

class Signup extends StatefulWidget {
  Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  AuthController authController = AuthController();
  final TextEditingController confirmController = TextEditingController();

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
            padding: const EdgeInsets.only(top: 10),
            alignment: Alignment.center,
            child: SvgPicture.asset(
              'assets/images/blueLogo.svg',
              height: 80,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.only(top: 30),
            child: Text(
              'Create account with us',
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
              controller: authController.idController,
              keyboardType: TextInputType.number,
              obscureText: false,
              decoration: const InputDecoration(
                  hintText: 'Identification number',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(0),
                  hintStyle: TextStyle(height: 1)),
            ),
          ),
          SizedBox(height: 15),
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
              controller: authController.nameController,
              keyboardType: TextInputType.text,
              obscureText: false,
              decoration: const InputDecoration(
                  hintText: 'Name',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(0),
                  hintStyle: TextStyle(height: 1)),
            ),
          ),
          SizedBox(height: 15),
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
              controller: authController.phoneController,
              keyboardType: TextInputType.phone,
              obscureText: false,
              decoration: const InputDecoration(
                  hintText: 'Telephone',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(0),
                  hintStyle: TextStyle(height: 1)),
            ),
          ),
          SizedBox(height: 15),
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
              controller: authController.emailController,
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
              controller: authController.passwordController,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: const InputDecoration(
                  hintText: 'Password',
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
              controller: confirmController,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: const InputDecoration(
                  hintText: 'Confirm password',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(0),
                  hintStyle: TextStyle(height: 1)),
            ),
          ),
          SizedBox(height: 15),
          InkWell(
            onTap: () {
              authController.createAccount();
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
                'Sign Up',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
        ]),
      ))),
      bottomNavigationBar: Container(
        height: 50,
        alignment: Alignment.center,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Already have an account? ',
            style: TextStyle(
              fontSize: 17,
            ),
          ),
          InkWell(
            onTap: () {
              // Get.to(() => Login());
            },
            child: Text(
              'Sign In',
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
