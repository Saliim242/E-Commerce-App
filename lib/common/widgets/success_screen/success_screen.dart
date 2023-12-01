import 'package:flutter/material.dart';
import 'package:flutter_projects/common/style/specing_style.dart';
import '../../../utils/constants/size.dart';
import '../../../utils/constants/text_string.dart';
import '../../../utils/helpers/helper_function.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitile,
      this.onPressed});

  final String image, title, subtitile;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpecingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              Image(
                width: THelperFunctions.screenWidth() * 0.6,
                image: AssetImage(
                  image,
                ),
              ),
              // Title and subtitile
              const SizedBox(height: TSizes.spaceBtwSections),
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                subtitile,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              // Buttoms
              SizedBox(
                width: THelperFunctions.screenWidth(),
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: Text(
                    TTextStrings.tContinue,
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
