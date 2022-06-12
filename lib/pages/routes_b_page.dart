import 'package:flutter/material.dart';

class RoutesBPage extends StatefulWidget {
  const RoutesBPage({Key? key}) : super(key: key);

  @override
  _RoutesBPageState createState() => _RoutesBPageState();
}

class _RoutesBPageState extends State<RoutesBPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("RoutesBPage")),
    );
  }
}