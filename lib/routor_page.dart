import 'package:flutter/material.dart';
import 'package:flutter_app_nav/nav_delegates/my_route_information_parser.dart';
import 'package:flutter_app_nav/nav_delegates/my_router_delegate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/nav_pop_cubit.dart';

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
    return BlocProvider<NavPopCubit>(
      create: (context) => NavPopCubit(),
      child: BlocListener<NavPopCubit, DateTime>(
        listener: (context, state) {},
        child: MaterialApp.router(
          routeInformationParser: _myRouteInformationParser,
          routerDelegate: _myRouterDelegate,
          title: "Nav 2.0 App",
        ),
      ),
    );
  }
}
