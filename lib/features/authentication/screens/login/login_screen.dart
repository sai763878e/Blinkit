import 'package:blinkit/common/styles/spacing_styles.dart';
import 'package:blinkit/common/widgets/login_signup/form_divider.dart';
import 'package:blinkit/common/widgets/login_signup/social_buttons.dart';
import 'package:blinkit/features/authentication/screens/login/widgets/login_form.dart';
import 'package:blinkit/features/authentication/screens/login/widgets/login_header.dart';
import 'package:blinkit/utils/constants/sizes.dart';
import 'package:blinkit/utils/constants/text_strings.dart';
import 'package:blinkit/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final isDark = CHelperFunction.isDarkMode(context);
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: CSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///Header
              LoginHeader(),

              ///Form
              LoginForm(),

              ///Divider
              CFormDivider(
                dividerText: CTexts.orSignIn,
              ),

              SizedBox(
                height: CSizes.spaceBtwSections,
              ),

              ///Footer
              CSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
