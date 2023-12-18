import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/custom_appBar/appBar_custom.dart';
import '../../../../../common/widgets/products_carts/cart_menu_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_string.dart';

class TAppBarHome extends StatelessWidget {
  const TAppBarHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTextStrings.homeAppbarTitle,
            style: Theme.of(context).textTheme.labelMedium!.apply(
                  color: TColors.grey,
                ),
          ),
          Text(
            TTextStrings.homeAppbarSubTitle,
            style: Theme.of(context).textTheme.headlineSmall!.apply(
                  color: TColors.white,
                ),
          ),
        ],
      ),
      action: [
        TCartCounterIcon(
          iconColor: TColors.white,
          onPressed: () {},
          bgColor: TColors.error.withOpacity(0.3),
          icon: Iconsax.shopping_bag,
          textColor: TColors.white,
        ),
      ],
    );
  }
}
