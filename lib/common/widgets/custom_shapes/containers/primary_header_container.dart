import 'package:azyro_ecommerce_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:azyro_ecommerce_app/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:azyro_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgesWidget(
      child: Container(
        color: AppColors.primary,
        padding: EdgeInsets.all(0),
        child: SizedBox(
          height: 400,

          // if [sizes.isFinite] is not used here, it will throw an error
          child: Stack(
            children: [
              // Background Custom Shapes
              Positioned(
                top: -150,
                right: -250,
                child: CircularContainer(
                  backgroundColor: AppColors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: CircularContainer(
                  backgroundColor: AppColors.textWhite.withOpacity(0.1),
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
