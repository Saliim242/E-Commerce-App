import 'package:flutter/material.dart';
import 'package:flutter_projects/features/authentication/controllers/on_boarding_controller.dart';

import '../../../../../utils/constants/size.dart';
import '../../../../../utils/devices/device_utility.dart';

class OnBoardingSkipBtn extends StatelessWidget {
  const OnBoardingSkipBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skippage(),
        child: Text("Skip"),
      ),
    );
  }
}
