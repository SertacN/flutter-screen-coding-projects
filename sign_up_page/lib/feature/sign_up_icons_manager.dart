import 'package:flutter/material.dart';

final class SignUpIconManager {
  SignUpIconManager._();

  static final SignUpIconManager _instance = SignUpIconManager._();
  static SignUpIconManager get instance => _instance;

  final IconData mailIcon = Icons.mail_outline;
  final IconData phoneIcon = Icons.phone_outlined;
  final IconData passwordIcon = Icons.lock_outline;
  final IconData visibleIcon = Icons.visibility_outlined;
}
