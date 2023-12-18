import 'package:flutter/material.dart';
import 'package:flutter_projects/utils/constants/size.dart';
import 'package:flutter_projects/utils/devices/device_utility.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  TAppBar({
    super.key,
    this.title,
    this.leadingIcon,
    this.action,
    this.leadingOnpresed,
    this.showIcon = false,
  });
  final Widget? title;
  bool showIcon;
  final IconData? leadingIcon;
  final List<Widget>? action;
  final VoidCallback? leadingOnpresed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: TSizes.md,
      ),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showIcon
            ? IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Iconsax.arrow_left),
              )
            : leadingIcon != null
                ? IconButton(
                    onPressed: leadingOnpresed,
                    icon: Icon(leadingIcon),
                  )
                : null,
        actions: action,
        title: title,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
