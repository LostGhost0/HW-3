import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/sing.dart';
import 'package:flutter_application_2/pages/singn.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                const SignUpScreen().push(context);
              },
              child: const Text('Sign Up'),
            ),
            ElevatedButton(
              onPressed: () {
                const SignInScreen().push(context);
              },
              child: const Text('Sign In'),
            ),
          ],
        ),
      ),
    );
  }
}
