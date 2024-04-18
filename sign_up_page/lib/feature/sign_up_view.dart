import 'package:flutter/material.dart';
import 'package:sign_up_page/core/extension/context_extension.dart';
import 'package:sign_up_page/feature/sign_up_controller_mixin.dart';
import 'package:sign_up_page/feature/sign_up_keys.dart';
import 'package:sign_up_page/feature/sign_up_padding.dart';

part 'widgets/sign_up_header.dart';

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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(SignUpKeys.inputName,
                      style: context.textTheme.titleMedium
                          ?.copyWith(color: Colors.grey[700])),
                  TextField(
                    controller: nameController,
                    keyboardType: TextInputType.text,
                    obscureText: false,
                    decoration: InputDecoration(
                        prefixIcon:
                            Icon(Icons.mail_outline, color: Colors.grey[700])),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
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
