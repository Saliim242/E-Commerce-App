import 'package:flutter/material.dart';

class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    super.key,
    required this.iconColor,
    this.onPressed,
    required this.icon,
    required this.bgColor,
    required this.textColor,
  });

  final Color iconColor;
  final void Function()? onPressed;
  final IconData icon;
  final Color bgColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: 4,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                "2",
                style: Theme.of(context).textTheme.labelLarge!.apply(
                      color: textColor,
                      fontSizeFactor: 0.8,
                    ),
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: onPressed,
          icon: Icon(icon, color: iconColor),
        ),
      ],
    );
  }
}
