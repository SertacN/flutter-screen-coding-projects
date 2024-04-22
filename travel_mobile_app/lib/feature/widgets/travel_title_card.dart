import 'package:flutter/material.dart';
import 'package:travel_mobile_app/core/extension/context_extension.dart';
import 'package:travel_mobile_app/core/widgets/image_card_border_radius.dart';
import 'package:travel_mobile_app/feature/enums/travel_border_radius_enum.dart';

class TravelTitleCard extends StatelessWidget {
  const TravelTitleCard({super.key, required this.image, required this.title});
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          height: MediaQuery.of(context).size.height * 0.16,
          child: ImageCardBorderRadius(
            image: image,
            borderRadius: TravelBorderRadiusSize.card.borderRadiusAll,
          )),
      Positioned(
          top: MediaQuery.of(context).size.height * 0.13,
          left: MediaQuery.of(context).size.width * 0.17,
          child: Text(
            title,
            style: context.textTheme.titleMedium
                ?.copyWith(color: context.colorScheme.background),
          ))
    ]);
  }
}
