import 'package:flutter/material.dart';
import 'package:flutter_projects/features/authentication/controllers/on_boarding_controller.dart';
import 'package:flutter_projects/utils/constants/size.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/devices/device_utility.dart';
import '../../../../../utils/helpers/helper_function.dart';

class OnBoardingElevetedBtn extends StatelessWidget {
  const OnBoardingElevetedBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          backgroundColor: dark ? TColors.primary : Colors.black,
        ),
        onPressed: () => OnBoardingController.instance.nextPage(),
        child: Icon(
          Iconsax.arrow_right_3,
        ),
      ),
    );
  }
}
