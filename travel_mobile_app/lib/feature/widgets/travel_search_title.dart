part of '../travel_mobile_view.dart';

class _TravelSearchTitle extends StatelessWidget {
  const _TravelSearchTitle({title}) : _title = title;

  final String _title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: TravelMobilePadding.medium.paddingVertical,
      child: Text(_title),
    );
  }
}
