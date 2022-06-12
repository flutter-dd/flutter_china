import 'package:flutter/material.dart';
import 'package:flutter_china/tools/scroll_behavior_modified.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

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
      // home: const MyHomePage(),
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
      builder: (BuildContext context, Widget? child) {
        return child ?? const MyHomePage();
      },
      title: 'Flutter Demo',
      onGenerateTitle: (_) {
        return "Flutter GenerateTitle";
      },
      color: Colors.red,
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(primarySwatch: Colors.red),
      highContrastTheme: ThemeData(primarySwatch: Colors.blue),
      highContrastDarkTheme: ThemeData(primarySwatch: Colors.red),
      themeMode: ThemeMode.light,
      locale: const Locale('zh', 'CN'), // 中文简体
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      localeListResolutionCallback:
          (List<Locale>? locales, Iterable<Locale>? supportedLocales) {
        // 系统切换语言时调用
        return locales?.first ?? const Locale("zh", 'CN');
      },
      localeResolutionCallback:
          (Locale? locale, Iterable<Locale>? supportedLocales) {
        // 系统切换语言时调用
        return const Locale("zh", 'CN');
      },
      supportedLocales: const [
        Locale('en', 'US'), //美国英语
        Locale("zh", 'CN'), //中文简体
      ],
      debugShowMaterialGrid: false,
      showPerformanceOverlay: false,
      checkerboardRasterCacheImages: false,
      checkerboardOffscreenLayers: false,
      showSemanticsDebugger: false,
      debugShowCheckedModeBanner: true,
      shortcuts: null,
      actions: null,
      restorationScopeId: "",
      scrollBehavior: const ScrollBehaviorModified(),
      useInheritedMediaQuery: true,
    );
  }
}
