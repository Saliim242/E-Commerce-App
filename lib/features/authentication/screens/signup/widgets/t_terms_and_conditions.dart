import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_string.dart';
import '../../../../../utils/helpers/helper_function.dart';

class TTermsAndConditions extends StatelessWidget {
  const TTermsAndConditions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          child: Checkbox(
            value: true,
            onChanged: (val) {},
          ),
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: "${TTextStrings.iAgreeTo} ",
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                text: "${TTextStrings.privacyPolicy} ",
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: isDarkMode ? TColors.white : TColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          isDarkMode ? TColors.white : TColors.primary,
                    ),
              ),
              TextSpan(
                  text: "${TTextStrings.and} ",
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                text: "${TTextStrings.termsOfUse} ",
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: isDarkMode ? TColors.white : TColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          isDarkMode ? TColors.white : TColors.primary,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
