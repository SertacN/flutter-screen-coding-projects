import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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

class _TravelMobilViewState extends State<TravelMobileView>
    with TravelMobileControllerMixin {
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
            const DefaultTabController(
                length: 4,
                child: TabBar(
                    labelPadding: EdgeInsets.symmetric(horizontal: 1),
                    tabs: [
                      Tab(
                        child: Text('Recommende'),
                      ),
                      Tab(
                        child: Text('Popular'),
                      ),
                      Tab(
                        child: Text('Holiday'),
                      ),
                      Tab(
                        child: Text('New'),
                      )
                    ])),
            const TravelTabbar(),
            Padding(
              padding: TravelMobilePadding.hight.paddingVertical,
              child: Row(
                children: [
                  Expanded(
                    child: Stack(children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 0.16,
                        child: Card(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              'assets/jpg/travel_japan.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                          top: MediaQuery.of(context).size.height * 0.13,
                          left: MediaQuery.of(context).size.width * 0.2,
                          child: Text(
                            'data',
                            style: context.textTheme.titleMedium?.copyWith(
                                color: context.colorScheme.background),
                          ))
                    ]),
                  ),
                  Expanded(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                      height: MediaQuery.of(context).size.height * 0.16,
                      child: Card(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            'assets/jpg/travel_america.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
