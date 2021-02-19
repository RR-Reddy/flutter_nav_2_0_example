import 'package:flutter/material.dart';

import 'nav_delegates/my_configuration.dart';
import 'nav_delegates/my_router_delegate.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('page two'),
            ElevatedButton(
              onPressed: () {
                var delegate= Router.of(context).routerDelegate as MyRouterDelegate;
                delegate.configuration=MyConfiguration.first;
              },
              child: Text('tap to home'),
            ),
          ],
        ),
      ),
    );
  }
}
