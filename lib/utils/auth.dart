
import 'package:beauty_mapping/screens/welcome.dart';
import 'package:beauty_mapping/view/homepage.dart';
import 'package:beauty_mapping/view/login.view.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController idController = TextEditingController();
  //Login Controllers
  final TextEditingController loginEmailController = TextEditingController();
  final TextEditingController loginPasswordController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<void> createAccount() async {
    final user = await _auth.createUserWithEmailAndPassword(
        email: emailController.text, password: passwordController.text);
    final firestore = FirebaseFirestore.instance;
    firestore.collection('users').doc(user.user!.uid).set({
      "email": emailController.text,
      "name": nameController.text,
      "phone_number": phoneController.text,
      "id_number": idController.text
    });
    if (user != null) {
      Get.to(() => const Login());
    } else {
      print('error');
    }
  }

  Future<void> loginUser() async {
    final user = await _auth.signInWithEmailAndPassword(
        email: loginEmailController.text,
        password: loginPasswordController.text);
    if (user != null) {
      Get.to(() => Welcome());
    }
  }

  Future<void> logoutUser() async {
    await _auth.signOut();
    Get.offAll(const Login());
  }
}
