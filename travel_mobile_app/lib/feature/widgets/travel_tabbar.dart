import 'package:flutter/material.dart';
import 'package:travel_mobile_app/feature/constant/travel_mobile_keys.dart';

class TravelTabbar extends StatefulWidget {
  const TravelTabbar({super.key});

  @override
  State<TravelTabbar> createState() => _TravelTabbarState();
}

class _TravelTabbarState extends State<TravelTabbar>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  final int _tabLenght = 4;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabLenght, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _tabLenght,
        child: Row(
          children: [
            Expanded(
              child: TabBar(
                  controller: _tabController,
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  tabs: const [
                    Tab(child: Text(TravelMobileKeys.tabbarRecommended)),
                    Tab(child: Text(TravelMobileKeys.tabbarPopuler)),
                    Tab(child: Text(TravelMobileKeys.tabbarHoliday)),
                    Tab(child: Text(TravelMobileKeys.tabbarNew)),
                  ]),
            )
          ],
        ));
  }
}
