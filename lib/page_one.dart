import 'package:flutter/material.dart';
import 'package:flutter_app_nav/nav_delegates/my_configuration.dart';
import 'package:flutter_app_nav/nav_delegates/my_router_delegate.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('home'),
            ElevatedButton(
              onPressed: () {
                var delegate =
                    Router.of(context).routerDelegate as MyRouterDelegate;
                delegate.configuration = MyConfiguration.second;
              },
              child: Text('tap to push second'),
            ),
          ],
        ),
      ),
    );
  }
}
