import 'package:flutter/material.dart';

class RoutesAPage extends StatefulWidget {
  const RoutesAPage({Key? key}) : super(key: key);

  @override
  _RoutesAPageState createState() => _RoutesAPageState();
}

class _RoutesAPageState extends State<RoutesAPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("RoutesAPage")),
    );
  }
}