import 'package:flutter/material.dart';
import 'package:sign_up_page/core/extension/context_extension.dart';
import 'package:sign_up_page/feature/sign_up_colors.dart';
import 'package:sign_up_page/feature/sign_up_controller_mixin.dart';
import 'package:sign_up_page/feature/sign_up_icons_manager.dart';
import 'package:sign_up_page/feature/sign_up_keys.dart';
import 'package:sign_up_page/feature/sign_up_padding.dart';

part 'widgets/sign_up_header.dart';
part 'widgets/sign_up_textfield.dart';
part 'widgets/sign_up_button.dart';
part 'widgets/sign_up_have_account.dart';

class SigUpView extends StatefulWidget {
  const SigUpView({super.key});

  @override
  State<SigUpView> createState() => _SigUpViewState();
}

class _SigUpViewState extends State<SigUpView> with SignUpControllerMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: _backButton(),
      ),
      body: Padding(
        padding: SignUpPadding.low.horizontalPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const _SignUpHeader(),
              _nameTextField(),
              _phoneTextField(),
              _emailTextField(),
              _passwordTextField(),
              _SignUpButton(
                title: SignUpKeys.headerTitle,
                onPressed: () {},
              ),
              const _SignUpHaveAccount(),
            ],
          ),
        ),
      ),
    );
  }

  SignUpTextField _passwordTextField() {
    return SignUpTextField(
      title: SignUpKeys.inputPassword,
      controller: passwordController,
      prefixIcon: SignUpIconManager.instance.passwordIcon,
      suffixIcon: SignUpIconManager.instance.visibleIcon,
      visiblePassword: true,
    );
  }

  SignUpTextField _emailTextField() {
    return SignUpTextField(
      title: SignUpKeys.inputMail,
      controller: emailController,
      prefixIcon: SignUpIconManager.instance.mailIcon,
      keyboardType: TextInputType.emailAddress,
    );
  }

  SignUpTextField _phoneTextField() {
    return SignUpTextField(
      title: SignUpKeys.inputNumber,
      controller: phoneController,
      prefixIcon: SignUpIconManager.instance.phoneIcon,
      keyboardType: TextInputType.phone,
    );
  }

  SignUpTextField _nameTextField() {
    return SignUpTextField(
      title: SignUpKeys.inputName,
      controller: nameController,
      prefixIcon: SignUpIconManager.instance.mailIcon,
    );
  }

  IconButton _backButton() {
    return IconButton(
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.grey[850])),
        onPressed: () {},
        icon: const Icon(Icons.arrow_back_ios_outlined));
  }
}
