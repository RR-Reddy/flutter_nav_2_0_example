import 'package:flutter/material.dart';
import 'package:flutter_app_nav/nav_delegates/my_route_information_parser.dart';
import 'package:flutter_app_nav/nav_delegates/my_router_delegate.dart';

class RouterPage extends StatefulWidget {
  @override
  _RouterPageState createState() => _RouterPageState();
}

class _RouterPageState extends State<RouterPage> {
  MyRouteInformationParser _myRouteInformationParser =
      MyRouteInformationParser();
  MyRouterDelegate _myRouterDelegate = MyRouterDelegate();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _myRouteInformationParser,
      routerDelegate: _myRouterDelegate,
      title: "Nav 2.0 App",
    );
  }
}
