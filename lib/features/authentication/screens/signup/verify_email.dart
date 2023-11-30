import 'package:flutter/material.dart';
import 'package:flutter_projects/common/widgets/success_screen/success_screen.dart';
import 'package:flutter_projects/features/authentication/screens/login/login_page.dart';
import 'package:flutter_projects/utils/constants/image_string.dart';
import 'package:flutter_projects/utils/constants/size.dart';
import 'package:flutter_projects/utils/constants/text_string.dart';
import 'package:flutter_projects/utils/helpers/helper_function.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Get.offAll(() => LoginPage());
            },
            icon: Icon(
              Iconsax.close_square,
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
                TTextStrings.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                "salim7442a@gmail.com",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                TTextStrings.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Buttoms
              SizedBox(
                width: THelperFunctions.screenWidth(),
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(
                      () => SuccessScreen(
                        image: TImages.staticSuccessIllustration,
                        title: TTextStrings.yourAccountCreatedTitle,
                        subtitile: TTextStrings.yourAccountCreatedSubTitle,
                        onPressed: () {
                          Get.to(() => LoginPage());
                        },
                      ),
                    );
                  },
                  child: Text(
                    TTextStrings.tContinue,
                  ),
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              //Resend Email
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
