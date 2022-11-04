import 'package:flutter/material.dart';

const String loginPath = '/login';
const String cartPath = '/cart';
const String checkoutPath = '/checkout';
const String profilePath = '/profile';
const String homePath = '/home';

enum Pages { home, cart, login, checkout, profile }

class PageConfiguration {
  final String key;
  final String path;
  final Pages page;

  PageConfiguration(
      {required this.key, required this.path, required this.page});
}

PageConfiguration loginPageConfig =
    PageConfiguration(key: 'login', path: loginPath, page: Pages.login);
PageConfiguration homePageConfig =
    PageConfiguration(key: 'home', path: homePath, page: Pages.home);
PageConfiguration cartPageConfig =
    PageConfiguration(key: 'cart', path: cartPath, page: Pages.cart);
PageConfiguration checkoutPageConfig = PageConfiguration(
    key: 'checkout', path: checkoutPath, page: Pages.checkout);
PageConfiguration profilePageConfig =
    PageConfiguration(key: 'profile', path: profilePath, page: Pages.profile);
