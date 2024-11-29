import 'dart:async';

import 'package:blinkit/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/repositories/authentication/authentication_repository.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(const Duration(seconds: 3), (timer) {
      if (true) {
        Get.put(AuthenticationRepository());
        // AuthenticationRepository.instance.screenRedirect();
      }
    });

    return const Scaffold(
      body: Image(image: AssetImage(CImages.splash)),
    );
  }
}
