part of '../sign_up_view.dart';

class SignUpCheckBox extends StatelessWidget {
  const SignUpCheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          activeColor: Colors.green,
          value: true,
          onChanged: (value) {},
        ),
        const Text(SignUpKeys.checkBoxDescription)
      ],
    );
  }
}
