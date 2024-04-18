import 'package:flutter/material.dart';
import 'package:sign_up_page/feature/sign_up_controller_mixin.dart';
import 'package:sign_up_page/feature/sign_up_keys.dart';
import 'package:sign_up_page/feature/sign_up_padding.dart';
import 'package:sign_up_page/feature/widgets/sign_up_already_account.dart';
import 'package:sign_up_page/feature/widgets/sign_up_button.dart';
import 'package:sign_up_page/feature/widgets/sign_up_gradient.dart';
import 'package:sign_up_page/feature/widgets/sign_up_input.dart';

part './widgets/sign_up_header_title.dart';
part './widgets/sign_up_checkbox.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> with SignUpControllerMixin {
  @override
  Widget build(BuildContext context) {
    return SignUpGradient(
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            leading: const BackButton(),
            backgroundColor: Colors.transparent,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: SignUpPadding.medium.horizontalPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const _SignUpHeaderTitle(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SignUpInput(
                        title: SignUpKeys.inputName,
                        controller: nameController,
                        visiblePassword: false,
                      ),
                      SignUpInput(
                        title: SignUpKeys.inputEmail,
                        controller: mailController,
                        visiblePassword: false,
                      ),
                      SignUpInput(
                        title: SignUpKeys.inputPassword,
                        controller: passwordController,
                        visiblePassword: true,
                        icon: const Icon(Icons.visibility_off_outlined),
                      ),
                      const SignUpCheckBox(),
                      const SignUpButton(),
                      const SignUpAlreadyAccount()
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
