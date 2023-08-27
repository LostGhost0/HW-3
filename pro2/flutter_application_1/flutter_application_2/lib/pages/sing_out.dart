import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/auth_page.dart';

import 'package:supabase_flutter/supabase_flutter.dart';

class SingOut extends StatefulWidget {
  const SingOut({super.key});

  @override
  State<SingOut> createState() => _SingOutState();
}

class _SingOutState extends State<SingOut> {
  final supabase = Supabase.instance.client;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
              child: Text("Sign out"),
              onPressed: () {
                supabase.auth.signOut();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AuthScreen(),
                  ),
                );
              },
            ),
            Text('Token: ${supabase.auth.currentSession?.accessToken}')
          ],
        ),
      ),
    );
  }
}
