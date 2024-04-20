import 'package:flutter/material.dart';
import 'package:travel_mobile_app/core/extension/context_extension.dart';
import 'package:travel_mobile_app/feature/travel_mobile_controller_mixin.dart';
import 'package:travel_mobile_app/feature/travel_mobile_enum.dart';
import 'package:travel_mobile_app/feature/travel_mobile_icon_manager.dart';
import 'package:travel_mobile_app/feature/travel_mobile_keys.dart';
import 'package:travel_mobile_app/feature/widgets/travel_tabbar.dart';

part 'widgets/travel_appbar.dart';
part 'widgets/travel_mobile_notification.dart';
part 'widgets/travel_search_title.dart';
part 'widgets/travel_searchbar_with_icon.dart';

class TravelMobileView extends StatefulWidget {
  const TravelMobileView({super.key});

  @override
  State<TravelMobileView> createState() => _TravelMobilViewState();
}

class _TravelMobilViewState extends State<TravelMobileView> with TravelMobileControllerMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          ],
        ),
      ),
    );
  }
}
