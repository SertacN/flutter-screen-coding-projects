import 'package:flutter/material.dart';
import 'package:sign_up_page/core/extension/context_extension.dart';
import 'package:sign_up_page/feature/sign_up_keys.dart';

class SignUpTextField extends StatelessWidget {
  const SignUpTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(SignUpKeys.inputName,
                      style: context.textTheme.titleMedium
                          ?.copyWith(color: Colors.grey[700])),
                  TextField(
                    controller: ,
                    keyboardType: TextInputType.text,
                    obscureText: false,
                    
                    decoration: InputDecoration(
                        prefixIcon:
                            Icon(Icons.mail_outline, color: Colors.grey[700])),
                  ),
                ],
              );
  }
}
