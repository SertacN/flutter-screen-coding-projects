import 'package:flutter/material.dart';
import 'package:travel_mobile_app/feature/travel_mobile_view.dart';

mixin TravelMobileControllerMixin on State<TravelMobileView> {
  final TextEditingController searchBarController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    searchBarController.dispose();
  }
}
