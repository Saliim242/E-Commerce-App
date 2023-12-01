import 'package:flutter/material.dart';
import 'package:flutter_projects/utils/constants/size.dart';
import 'package:flutter_projects/utils/constants/text_string.dart';
import 'package:flutter_projects/utils/helpers/helper_function.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/colors.dart';
import 'reset_password_page.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

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
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Header
            Text(TTextStrings.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            Text(
              TTextStrings.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),

            const SizedBox(height: TSizes.spaceBtwSections * 2),

            // Text Form
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: TTextStrings.email,
                      prefixIcon: Icon(Iconsax.direct_right),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: TSizes.spaceBtwSections * 3),

            // Button

            SizedBox(
              width: THelperFunctions.screenWidth(),
              child: ElevatedButton(
                onPressed: () {
                  Get.off(() => const ResetPasswordPage());
                },
                child: Text(
                  TTextStrings.submit,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
