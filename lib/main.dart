import 'package:chainhouse_flutter_app/screens/discover_screen.dart';
import 'package:chainhouse_flutter_app/screens/logged_out_screen.dart';
import 'package:chainhouse_flutter_app/screens/login_screen.dart';
import 'package:chainhouse_flutter_app/screens/photo_open_screen.dart';
import 'package:chainhouse_flutter_app/screens/register_screen.dart';
import 'package:chainhouse_flutter_app/screens/route_app.dart';
import 'package:chainhouse_flutter_app/screens/signup_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RouteApp(),
    );
  }
}
