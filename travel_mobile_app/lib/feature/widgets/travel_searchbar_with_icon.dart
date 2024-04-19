part of '../travel_mobile_view.dart';

class _TravelSearchBarWithIcon extends StatelessWidget {
  const _TravelSearchBarWithIcon({required controller})
      : _controller = controller;

  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 7,
          child: Padding(
            padding: TravelMobilePadding.side.paddingRight,
            child: _SearchBarTextField(controller: _controller),
          ),
        ),
        const Expanded(
          flex: 1,
          child: _CompareIcon(),
        ),
      ],
    );
  }
}

class _CompareIcon extends StatelessWidget {
  const _CompareIcon();

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            padding: TravelMobilePadding.medium.paddingHorizontal,
            side: BorderSide.none,
            backgroundColor: context.colorScheme.primary,
            shape: RoundedRectangleBorder(
                borderRadius: TravelBorderRadiusSize.low.borderRadiusAll)),
        onPressed: () {},
        child: Icon(
          TravelMobileIconManager.instance.compareIcon,
          color: context.colorScheme.background,
        ));
  }
}

class _SearchBarTextField extends StatelessWidget {
  const _SearchBarTextField({required TextEditingController controller})
      : _controller = controller;

  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.text,
      controller: _controller,
      decoration: InputDecoration(
        fillColor: context.colorScheme.background,
        filled: true,
        hintText: TravelMobileKeys.searchHintText,
        hintStyle: TextStyle(color: context.colorScheme.onSecondary),
        contentPadding: TravelMobilePadding.medium.paddingVertical,
        prefixIcon: Icon(
          TravelMobileIconManager.instance.searchIcon,
          color: context.colorScheme.onSecondary,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: context.colorScheme.primary),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: context.colorScheme.primary),
        ),
      ),
    );
  }
}
