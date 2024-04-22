import 'package:flutter/material.dart';
import 'package:travel_mobile_app/core/extension/context_extension.dart';
import 'package:travel_mobile_app/feature/constant/travel_image_constant.dart';
import 'package:travel_mobile_app/feature/enums/travel_border_radius_enum.dart';
import 'package:travel_mobile_app/feature/enums/travel_padding_enum.dart';
import 'package:travel_mobile_app/feature/travel_mobile_color.dart';
import 'package:travel_mobile_app/feature/travel_mobile_controller_mixin.dart';
import 'package:travel_mobile_app/feature/travel_mobile_icon_manager.dart';
import 'package:travel_mobile_app/feature/constant/travel_mobile_keys.dart';
import 'package:travel_mobile_app/feature/travel_model.dart';
import 'package:travel_mobile_app/feature/widgets/travel_categories.dart';
import 'package:travel_mobile_app/feature/widgets/travel_navbar.dart';
import 'package:travel_mobile_app/feature/widgets/travel_title_card.dart';
import 'package:travel_mobile_app/feature/widgets/travel_categories_title.dart';
import 'package:travel_mobile_app/feature/widgets/travel_tabbar.dart';

part 'widgets/travel_appbar.dart';
part 'widgets/travel_mobile_notification.dart';
part 'widgets/travel_search_title.dart';
part 'widgets/travel_searchbar_with_icon.dart';
part 'widgets/travel_places_listview.dart';

class TravelMobileView extends StatefulWidget {
  const TravelMobileView({super.key});

  @override
  State<TravelMobileView> createState() => _TravelMobilViewState();
}

class _TravelMobilViewState extends State<TravelMobileView>
    with TravelMobileControllerMixin {
  late final List<TravelModel>? _travelModel;

  @override
  void initState() {
    super.initState();
    _travelModel = [
      TravelModel(
          TravelMobileKeys.greenRey,
          TravelMobileIconManager.instance.forestIcon,
          TravelColor.lightGreen()),
      TravelModel(
          TravelMobileKeys.mountain,
          TravelMobileIconManager.instance.mountainIcon,
          TravelColor.lightBrown()),
      TravelModel(
          TravelMobileKeys.beach,
          TravelMobileIconManager.instance.beachIcon,
          TravelColor.lightYellow()),
      TravelModel(
          TravelMobileKeys.adventure,
          TravelMobileIconManager.instance.adventureIcon,
          TravelColor.lightBlue())
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const TravelNavBar(),
      backgroundColor: context.colorScheme.onBackground,
      appBar: const TravelAppBar(),
      body: Padding(
        padding: TravelMobilePadding.hight.paddingHorizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const _TravelSearchTitle(title: TravelMobileKeys.searchTitle),
            _TravelSearchBarWithIcon(controller: searchBarController),
            const TravelTabbar(),
            _travelCard(),
            const TravelCategoriesTitle(),
            TravelCategories(model: _travelModel),
            _travelPlacesTitle(context),
            const TravelPlacesListView(),
          ],
        ),
      ),
    );
  }

  Text _travelPlacesTitle(BuildContext context) {
    return Text(TravelMobileKeys.hotPlaces,
        style: context.textTheme.titleMedium
            ?.copyWith(fontWeight: FontWeight.bold));
  }

  Padding _travelCard() {
    return Padding(
      padding: TravelMobilePadding.hight.paddingVertical,
      child: Row(
        children: [
          Expanded(
              child: TravelTitleCard(
            image: ImageConstants.travelJapan,
            title: TravelMobileKeys.japan,
          )),
          Expanded(
              child: TravelTitleCard(
            image: ImageConstants.travelAmerica,
            title: TravelMobileKeys.america,
          )),
        ],
      ),
    );
  }
}
