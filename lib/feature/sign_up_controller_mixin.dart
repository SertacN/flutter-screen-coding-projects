import 'package:flutter/material.dart';
import 'package:sign_up_page/feature/sign_up_view.dart';

mixin SignUpControllerMixin on State<SignUpView> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController mailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    mailController.dispose();
    passwordController.dispose();
  }
}
