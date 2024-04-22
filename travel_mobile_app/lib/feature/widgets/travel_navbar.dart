import 'package:flutter/material.dart';
import 'package:travel_mobile_app/feature/travel_mobile_color.dart';
import 'package:travel_mobile_app/feature/travel_mobile_icon_manager.dart';

class TravelNavBar extends StatelessWidget {
  const TravelNavBar({super.key});
  final double _selectedFontSize = 0;
  final double _iconSize = 28;
  final int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        selectedFontSize: _selectedFontSize,
        iconSize: _iconSize,
        currentIndex: _currentIndex,
        selectedItemColor: TravelColor.lightRed(),
        unselectedItemColor: TravelColor.grey(),
        items: [
          BottomNavigationBarItem(
              icon: TravelMobileIconManager.instance.homeIcon, label: ''),
          BottomNavigationBarItem(
              icon: TravelMobileIconManager.instance.travelIcon, label: ''),
          BottomNavigationBarItem(
              icon: TravelMobileIconManager.instance.compassIcon, label: ''),
          BottomNavigationBarItem(
              icon: TravelMobileIconManager.instance.balanceIcon, label: ''),
          BottomNavigationBarItem(
              icon: TravelMobileIconManager.instance.accountIcon, label: '')
        ]);
  }
}
