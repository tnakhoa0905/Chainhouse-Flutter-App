import 'package:flutter/material.dart';

class ProlifeScreen extends StatefulWidget {
  const ProlifeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _ProlifeScreen();
}

class _ProlifeScreen extends State<ProlifeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Text('Prolife'),
    ));
  }
}
