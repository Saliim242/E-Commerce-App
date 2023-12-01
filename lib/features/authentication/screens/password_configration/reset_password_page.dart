import 'package:flutter/material.dart';
import 'package:flutter_projects/utils/constants/image_string.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/size.dart';
import '../../../../utils/constants/text_string.dart';
import '../../../../utils/helpers/helper_function.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Iconsax.close_square,
              color: isDarkMode ? TColors.light : TColors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                width: THelperFunctions.screenWidth() * 0.6,
                image: AssetImage(
                  TImages.deliveredEmailIllustration,
                ),
              ),
              // Title and subtitile
              const SizedBox(height: TSizes.spaceBtwSections),
              Text(
                TTextStrings.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                TTextStrings.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              // Buttoms
              SizedBox(
                width: THelperFunctions.screenWidth(),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    TTextStrings.done,
                  ),
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              SizedBox(
                width: THelperFunctions.screenWidth(),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    TTextStrings.resendEmail,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
