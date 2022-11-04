import 'package:flutter/material.dart';
import 'package:navigator_assignment_9/router/router_delegate.dart';

class BackButtonDispatch extends RootBackButtonDispatcher {
  final PageNavigationRouterDelegate _routerDelegate;

  BackButtonDispatch(this._routerDelegate) : super();

  @override
  Future<bool> didPopRoute() {
    return _routerDelegate.popRoute();
  }
}
