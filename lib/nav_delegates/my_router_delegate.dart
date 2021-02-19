import 'package:flutter/material.dart';
import 'package:flutter_app_nav/nav_delegates/my_configuration.dart';

import '../page_one.dart';
import '../page_two.dart';

class MyRouterDelegate extends RouterDelegate<MyConfiguration>
    with ChangeNotifier {
  MyConfiguration _configuration;
  GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  List<Page> _pageList;

  set configuration(MyConfiguration value) {
    if (_configuration == value) {
      return;
    }
    _configuration = value;
    notifyListeners();
  }

  @override
  MyConfiguration get currentConfiguration => _configuration;

  @override
  Future<void> setNewRoutePath(MyConfiguration configuration) async {
    this.configuration = configuration;
  }

  bool _handlePop(Route<dynamic> route, result) {
    var flag = route.didPop(result);

    // if page based route popped then we have to alter routes list state
    print('flag val is : $flag');

    if (flag) {
      configuration = MyConfiguration.first;
      notifyListeners();
    }

    return flag;
  }

  @override
  Widget build(BuildContext context) {
    _pageList = [
      MaterialPage(key: ValueKey('page-one'), child: PageOne()),
      if (_configuration == MyConfiguration.second)
        MaterialPage(key: ValueKey('page-two'), child: PageTwo()),
    ];

    return Navigator(
      key: _navigatorKey,
      pages: _pageList,
      onPopPage: _handlePop,
    );
  }

  @override
  Future<bool> popRoute() async {
    print('on android back button tap ');

    if (true) {
      throw 'some xyz exception';
    }

    var flag = _navigatorKey.currentState.maybePop();
    print('on android back button tap navigator pop flag $flag ');

    return flag;
  }
}
