part of '../travel_mobile_view.dart';

class TravelPlacesListView extends StatelessWidget {
  const TravelPlacesListView({super.key});
  final int price = 499;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: context.colorScheme.primaryContainer,
            child: ListTile(
              leading: Image.asset(ImageConstants.travelAmerica),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(TravelMobileKeys.bali),
                  Text(
                    '\$$price',
                    style: context.textTheme.titleMedium
                        ?.copyWith(color: context.colorScheme.error),
                  ),
                ],
              ),
              subtitle: const Text(TravelMobileKeys.placesDescription),
            ),
          );
        },
      ),
    );
  }
}
