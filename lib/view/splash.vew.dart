import 'dart:async';

import 'package:beauty_mapping/utils/global.colors.dart';
import 'package:beauty_mapping/view/login.view.dart';
import 'package:flutter/material.dart';
import 'package:beauty_mapping/utils/global.colors.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Get.to(() => Login());
    });
    return Scaffold(
      backgroundColor: GlobalColors.mainColor,
      body: Center(
        child: SvgPicture.asset(
          'assets/images/whiteLogo.svg',
          height: 250,
          width: 250,
        ),
      ),
    );
  }
}
