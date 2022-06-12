import 'package:flutter/material.dart';
import 'package:flutter_china/pages/my_home_page.dart';
import 'package:flutter_china/pages/routes_a_page.dart';
import 'package:flutter_china/pages/routes_b_page.dart';
import 'package:flutter_china/tools/my_observer.dart';

void main() {
  runApp(const MyApp());
}

Key materialAppKey = UniqueKey();

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

GlobalKey<ScaffoldMessengerState> scaffoldKey = GlobalKey();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: materialAppKey,
      navigatorKey: navigatorKey,
      scaffoldMessengerKey: scaffoldKey,
      routes: {
        "HomePage": (context) => const MyHomePage(),
        "RoutesAPage": (context) => const RoutesAPage(),
        "RoutesBPage": (context) => const RoutesBPage(),
      },
      initialRoute: '$MyHomePage',
      onGenerateRoute: (RouteSettings setting) {
        // 这里可以通过【RouteSettings】做进一步的逻辑处理
        return MaterialPageRoute(builder: (_) => const MyHomePage());
      },
      onGenerateInitialRoutes: (String initialRoute) {
        return [
          MaterialPageRoute(builder: (_) => const MyHomePage()),
          MaterialPageRoute(builder: (_) => const RoutesAPage()),
          MaterialPageRoute(builder: (_) => const RoutesBPage()),
        ];
      },
      onUnknownRoute: (RouteSettings setting) {
        // 当【onGenerateRoute】调用时返回为【null】时会调用onUnknownRoute
        return MaterialPageRoute(builder: (_) => const MyHomePage());
      },
      navigatorObservers: [
        MyObserver(),
      ],
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      // home: const MyHomePage(),
      useInheritedMediaQuery: true,
    );
  }
}
