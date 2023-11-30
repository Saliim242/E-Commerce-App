import 'package:flutter/material.dart';
import 'package:flutter_projects/common/widgets/login_sign_up.dart/t_form_divider.dart';
import 'package:flutter_projects/common/widgets/login_sign_up.dart/t_social_media.dart';
import 'package:flutter_projects/utils/constants/image_string.dart';
import 'package:flutter_projects/utils/constants/size.dart';
import 'package:flutter_projects/utils/constants/text_string.dart';
import 'package:flutter_projects/utils/helpers/helper_function.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import 'widgets/tsign_up_form.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Iconsax.back_square,
            color: isDarkMode ? TColors.light : TColors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Imge
              SizedBox(
                height: 150,
                child: Align(
                  alignment: Alignment.center,
                  child: Image(
                    image: AssetImage(
                      isDarkMode ? TImages.lightAppLogo : TImages.darkAppLogo,
                    ),
                  ),
                ),
              ),
              Text(TTextStrings.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwSections),
              TSignUpForm(),
              const SizedBox(height: TSizes.spaceBtwSections),
              TFormDivider(
                  isDarkMode: isDarkMode, diverText: TTextStrings.orSignInWith),
              const SizedBox(height: TSizes.spaceBtwSections),
              TSoccialMedia(),
            ],
          ),
        ),
      ),
    );
  }
}
