import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_nav/nav_delegates/my_configuration.dart';

class MyRouteInformationParser extends RouteInformationParser<MyConfiguration> {
  @override
  Future<MyConfiguration> parseRouteInformation(
      RouteInformation routeInformation) {
    final String routeName = routeInformation.location;

    if (routeName == '/') {
      return SynchronousFuture<MyConfiguration>(MyConfiguration.first);
    } else if (routeName == '/second') {
      return SynchronousFuture<MyConfiguration>(MyConfiguration.second);
    } else {
      return SynchronousFuture<MyConfiguration>(MyConfiguration.unknown);
    }
  }

  @override
  RouteInformation restoreRouteInformation(MyConfiguration configuration) {
    if (configuration == MyConfiguration.first) {
      return RouteInformation(location: '/');
    } else if (configuration == MyConfiguration.second) {
      return RouteInformation(location: '/second');
    } else {
      return RouteInformation(location: '/404');
    }
  }
}
