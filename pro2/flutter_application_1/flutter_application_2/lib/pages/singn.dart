import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/auth.dart';
import 'package:flutter_application_2/pages/nav_buttom.dart';

import 'package:supabase_flutter/supabase_flutter.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final supabase = Supabase.instance.client;
    log('Token: ${supabase.auth.currentSession?.accessToken}');
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                  labelText: 'Email', border: OutlineInputBorder()),
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                  labelText: 'Password', border: OutlineInputBorder()),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () async {
                if ((emailController.text.isNotEmpty) &&
                    passwordController.text.isNotEmpty) {
                  // Signing in ...
                  await supabase.auth.signInWithPassword(
                    email: emailController.text,
                    password: passwordController.text,
                  );

                  //   Popping the screen after signing in
                  if (context.mounted) {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const BottomNavigationBarExample()),
                      (route) {
                        return false;
                      },
                    );
                  }
                }
              },
              child: const Text('Sign in'),
            ),
          ],
        ),
      ),
    );
  }
}

extension Email on String {
  bool get isValidEmail => RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(this);
}
