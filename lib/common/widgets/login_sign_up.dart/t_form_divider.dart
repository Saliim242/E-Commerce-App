import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class TFormDivider extends StatelessWidget {
  const TFormDivider({
    super.key,
    required this.isDarkMode,
    required this.diverText,
  });
  final String diverText;

  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: isDarkMode ? TColors.darkGrey : TColors.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(diverText, style: Theme.of(context).textTheme.labelMedium),
        Flexible(
          child: Divider(
            color: isDarkMode ? TColors.darkGrey : TColors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}
