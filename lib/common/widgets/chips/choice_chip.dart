import 'package:azyro_ecommerce_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:azyro_ecommerce_app/utils/constants/colors.dart';
import 'package:azyro_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class AzyroChoiceChip extends StatelessWidget {
  const AzyroChoiceChip({super.key, required this.text, required this.selected, this.onSelected});

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = AzyroHelperFunctions.getColor(text)!=null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor? const SizedBox(): Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: true ? AppColors.grey : null),
        avatar: isColor? CircularContainer(width: 50, height: 50, backgroundColor: AzyroHelperFunctions.getColor(text)!,) : null,
        labelPadding: isColor ? const EdgeInsets.all(0) : null, // Make icon
        padding: isColor ? const EdgeInsets.all(0) : null,
        shape: isColor ? const CircleBorder() : null,
        // ignore: prefer_null_aware_operators
        backgroundColor: isColor? AzyroHelperFunctions.getColor(text)! : null,
      ),
    );
  }
}
