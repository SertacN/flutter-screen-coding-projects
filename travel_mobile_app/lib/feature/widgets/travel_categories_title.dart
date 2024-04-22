import 'package:flutter/material.dart';
import 'package:travel_mobile_app/core/extension/context_extension.dart';
import 'package:travel_mobile_app/feature/constant/travel_mobile_keys.dart';

class TravelCategoriesTitle extends StatelessWidget {
  const TravelCategoriesTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          TravelMobileKeys.popularCategories,
          style: context.textTheme.titleMedium,
        ),
        const Text(TravelMobileKeys.showAll),
      ],
    );
  }
}
