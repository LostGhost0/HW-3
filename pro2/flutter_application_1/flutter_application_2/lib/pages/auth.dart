import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_application_2/pages/nav_buttom.dart';

import 'package:flutter_application_2/services/subapase.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  bool canGoHome = false;
  StreamSubscription? listen;

  @override
  void initState() {
    SupabaseService.client.auth.onAuthStateChange.listen((data) {
      final AuthChangeEvent event = data.event;
      if (event == AuthChangeEvent.signedIn) {
        // Navigator.of(context).pushReplacement(
        //     MaterialPageRoute(builder: (context) => const Home()));
        canGoHome = true;
        setState(() {});
      }

      if (event == AuthChangeEvent.signedOut) {
        canGoHome = false;
        setState(() {});
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: canGoHome ? const Auth() : const BottomNavigationBarExample(),
        ),
      ),
    );
  }
}
