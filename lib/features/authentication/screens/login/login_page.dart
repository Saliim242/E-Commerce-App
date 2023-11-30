import 'package:flutter/material.dart';
import 'package:flutter_projects/utils/constants/size.dart';
import 'package:flutter_projects/utils/constants/text_string.dart';
import 'package:flutter_projects/utils/helpers/helper_function.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/login_sign_up.dart/t_form_divider.dart';
import '../../../../common/widgets/login_sign_up.dart/t_social_media.dart';
import 'widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: TSizes.appBarHeight,
            bottom: TSizes.defaultSpace,
            right: TSizes.defaultSpace,
            left: TSizes.defaultSpace,
          ),
          child: Column(
            children: [
              // Logo , Title , SubTitle

              TLoginHeader(isDarkMode: isDarkMode),

              // Form Design
              TLoginForm(isDarkMode: isDarkMode),
              // const Divider
              // Devider Section
              TFormDivider(
                  isDarkMode: isDarkMode,
                  diverText: TTextStrings.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Footer
              TSoccialMedia()
            ],
          ),
        ),
      ),
    );
  }
}
