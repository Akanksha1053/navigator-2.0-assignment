import 'package:flutter/material.dart';
import 'package:navigator_assignment_9/router/page_configuration.dart';

import '../feature/navigator_assignment_9/presentation/screens/cart_screen.dart';
import '../feature/navigator_assignment_9/presentation/screens/checkout_screen.dart';
import '../feature/navigator_assignment_9/presentation/screens/home_screen.dart';
import '../feature/navigator_assignment_9/presentation/screens/login_screen.dart';
import '../feature/navigator_assignment_9/presentation/screens/profile_screen.dart';

class PageNavigationRouterDelegate extends RouterDelegate<PageConfiguration>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  @override
  GlobalKey<NavigatorState>? get navigatorKey => GlobalKey<NavigatorState>();

  String get myRoute => _myRoute;
  String _myRoute = '/login';
  Pages page = Pages.login;
  final List<MaterialPage> _pages = [];

  bool _logIn = false;
  String? selectedPage;

  set myRoute(String value) {
    if (_myRoute == value) return;
    _myRoute = value;

    if (_myRoute == '/home') {
      page = Pages.home;
    }
    if (_myRoute == '/cart') {
      page = Pages.cart;
    }
    if (_myRoute == '/profile') {
      page = Pages.profile;
    }
    if (_myRoute == '/checkout') {
      page = Pages.checkout;
    }
    if (_myRoute == '/login') {
      page = Pages.login;
    }
    notifyListeners();
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
        key: navigatorKey,
        pages: [
          MaterialPage(
              key: const ValueKey('login'),
              child: LogInScreen(
                isLogin: (value) {},
              )),
          if (_myRoute == '/home')
            MaterialPage(key: HomeScreen.valueKey, child: HomeScreen()),
          if (_myRoute == '/cart')
            MaterialPage(key: CartScreen.valueKey, child: CartScreen()),
          if (_myRoute == '/profile')
            const MaterialPage(
                key: ProfileScreen.valueKey, child: ProfileScreen()),
          if (_myRoute == '/checkout')
            const MaterialPage(
                key: CheckoutScreen.valueKey, child: CheckoutScreen())
        ],
        onPopPage: _onPopPage);
  }

  bool _onPopPage(Route<dynamic> route, result) {
    final didPop = route.didPop(result);
    if (!didPop) {
      return false;
    }
    if (canPop()) {
      pop();
      if (myRoute == '/home') {
        myRoute = '/login';
      } else {
        myRoute = '/home';
      }
      return true;
    } else {
      return false;
    }
  }

  void _removePage(MaterialPage page) {
    if (page != null) {
      _pages.remove(page);
    }
  }

  void pop() {
    if (canPop()) {
      _removePage(_pages.last);
    }
  }

  bool canPop() {
    return _pages.length > 1;
  }

  @override
  Future<bool> popRoute() {
    if (canPop()) {
      _removePage(_pages.last);
      return Future.value(true);
    }
    return Future.value(false);
  }

  @override
  PageConfiguration? get currentConfiguration =>
      PageConfiguration(key: _myRoute, path: '/$_myRoute', page: page);

  @override
  Future<void> setNewRoutePath(PageConfiguration configuration) async {
    _myRoute = configuration.path;
    addPage(configuration);

    notifyListeners();
  }

  void addPage(PageConfiguration configuration) {
    final shouldAddPage = _pages.isEmpty ||
        (_pages.last.arguments as PageConfiguration).page != configuration.page;
    if (shouldAddPage) {
      switch (configuration.page) {
        case Pages.home:
          _addPageData(HomeScreen(), homePageConfig);
          break;
        case Pages.cart:
          _addPageData(CartScreen(), cartPageConfig);
          break;
        case Pages.login:
          _addPageData(
              LogInScreen(
                isLogin: (value) {},
              ),
              loginPageConfig);
          break;
        case Pages.checkout:
          _addPageData(const CheckoutScreen(), checkoutPageConfig);
          break;
        case Pages.profile:
          _addPageData(const ProfileScreen(), profilePageConfig);
          break;
      }
    }
  }

  void _addPageData(Widget child, PageConfiguration pageConfig) {
    MaterialPage pageToAdd = MaterialPage(
        child: child,
        key: ValueKey(pageConfig.key),
        name: pageConfig.path,
        arguments: pageConfig);
    _pages.add(pageToAdd);
  }
}
