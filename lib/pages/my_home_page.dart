import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_china/pages/routes_a_page.dart';
import 'package:flutter_china/pages/routes_b_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("MyHomePage")),
      body: GridView.count(
        crossAxisCount: 1,
        childAspectRatio: 4,
        children: [
          Padding(
            padding: const EdgeInsets.all(6),
            child: CupertinoButton.filled(
              child: const Text("跳转到 RoutesAPage"),
              onPressed: () =>
                  Navigator.maybeOf(context)?.pushNamed('$RoutesAPage'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6),
            child: CupertinoButton.filled(
              child: const Text("跳转到 RoutesBPage"),
              onPressed: () =>
                  Navigator.maybeOf(context)?.pushNamed('$RoutesBPage'),
            ),
          ),
        ],
      ),
    );
  }
}
