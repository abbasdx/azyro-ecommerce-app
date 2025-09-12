import 'package:azyro_ecommerce_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:azyro_ecommerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class AzyroChoiceChip extends StatelessWidget {
  const AzyroChoiceChip({super.key});

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: const Text('Green'),
      selected: true,
      onSelected: (value) {},
      labelStyle: TextStyle(color: true ? AppColors.white : null),
      avatar: const CircularContainer(width: 50, height: 50, backgroundColor: Colors.green,),
      shape: CircleBorder(),
      labelPadding: EdgeInsets.all(0),
      padding: EdgeInsets.all(0),
      backgroundColor: Colors.green,
    );
  }
}
