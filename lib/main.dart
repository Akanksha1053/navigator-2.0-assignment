import 'package:flutter/material.dart';
import 'package:navigator_assignment_9/router/back_dispatcher.dart';
import 'package:navigator_assignment_9/router/page_parser.dart';
import 'package:navigator_assignment_9/router/router_delegate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  PageRouteInformationParser parser = PageRouteInformationParser();
  PageNavigationRouterDelegate customRouterDelegate =
      PageNavigationRouterDelegate();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<PageNavigationRouterDelegate>(
      create: (context) {
        return customRouterDelegate;
      },
      child: ScreenUtilInit(builder: (BuildContext context, Widget? child) {
        return MaterialApp.router(
          routeInformationParser: parser,
          routerDelegate: customRouterDelegate,
          backButtonDispatcher: BackButtonDispatch(customRouterDelegate),
        );
      }),
    );
  }
}
