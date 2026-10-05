import 'package:flutter/material.dart';

import '../../Core/Preferences/PrefManager.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../MainScreen.dart';
import 'LoginView.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends BaseScreen<LoginScreen> {
  void _enter() {
    PrefName.hasCompletedOnboarding.value = true;
    Navigator.of(
      context,
    ).pushReplacement(MaterialPageRoute(builder: (_) => const MainScreen()));
  }

  @override
  Widget buildContent(BuildContext context) => LoginView(onDone: _enter);
}
