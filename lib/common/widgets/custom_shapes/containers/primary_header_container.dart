import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/custom_curved_widget.dart';
import 'circular_container.dart';

class TprimaryHeaderContainer extends StatelessWidget {
  const TprimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCustomCurvedEdgesWidget(
      child: Container(
        //width: THelperFunctions.screenWidth(),
        padding: EdgeInsets.only(bottom: 0),
        color: TColors.primary,
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: TCircularContainer(
                  backgroundColor: TColors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: TCircularContainer(
                  backgroundColor: TColors.textWhite.withOpacity(0.1),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
