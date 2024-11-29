import 'package:blinkit/features/authentication/screens/onboarding/onboarding.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:blinkit/features/navigation/navigation_menu.dart';

import '../../../features/authentication/screens/login/login_screen.dart';
import '../../../utils/exceptions/platform_exception.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final deviceStorage = GetStorage();

  @override
  void onReady() {
    // FlutterNativeSplash.remove();
    screenRedirect();
  }

  screenRedirect() async {
    //Local Storage
    if (kDebugMode) {
      print('============GET STORAGE ============');
      print(deviceStorage.read("IsFirstTime"));
    }
    deviceStorage.writeIfNull("IsFirstTime", true);
    deviceStorage.read("IsFirstTime") != true
        ? Get.offAll(() => LoginScreen())
        : Get.offAll(() =>  OnBoardingScreen());

    // Get.offAll(() =>  OnBoardingScreen());
  }

/*--------------------------------- Email & Password Sign In ---------------------------------*/
}