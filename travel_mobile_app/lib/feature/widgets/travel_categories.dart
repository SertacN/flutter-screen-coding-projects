import 'package:flutter/material.dart';
import 'package:travel_mobile_app/feature/enums/travel_padding_enum.dart';
import 'package:travel_mobile_app/feature/travel_model.dart';

class TravelCategories extends StatelessWidget {
  const TravelCategories({super.key, required List<TravelModel>? model})
      : _travelModel = model;

  final List<TravelModel>? _travelModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: _travelModel?.length ?? 0,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: TravelMobilePadding.medium.paddingVertical,
                child: Container(
                  margin: TravelMobilePadding.medium.paddingHorizontal,
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: MediaQuery.of(context).size.height * 0.05,
                  color: _travelModel?[index].color ?? Colors.transparent,
                  child: IconButton(
                      onPressed: () {},
                      icon: _travelModel?[index].icon ?? const Icon(Icons.abc)),
                ),
              ),
              Text(_travelModel?[index].title ?? ''),
            ],
          );
        },
      ),
    );
  }
}
