import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/auth.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  // await Supabase.initialize(
  //     url: "https://uksndbcoukwtkdugzvqs.supabase.co",
  //     anonKey:
  //         "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InVrc25kYmNvdWt3dGtkdWd6dnFzIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTI4MDUxOTIsImV4cCI6MjAwODM4MTE5Mn0.Fl2cOkz-nB0Odl5og5ZRteMxbcU0gdhAdgEUAFWNnGs");
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://uksndbcoukwtkdugzvqs.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InVrc25kYmNvdWt3dGtkdWd6dnFzIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTI4MDUxOTIsImV4cCI6MjAwODM4MTE5Mn0.Fl2cOkz-nB0Odl5og5ZRteMxbcU0gdhAdgEUAFWNnGs',
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Auth());
  }
}
