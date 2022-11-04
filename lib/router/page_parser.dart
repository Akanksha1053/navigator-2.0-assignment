import 'package:flutter/material.dart';

import 'page_configuration.dart';

class PageRouteInformationParser
    extends RouteInformationParser<PageConfiguration> {
  @override
  Future<PageConfiguration> parseRouteInformation(
      RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location!);
    if (uri.pathSegments.isEmpty) {
      return loginPageConfig;
    }

    final path = uri.pathSegments[0];

    switch (path) {
      case loginPath:
        return loginPageConfig;
      case homePath:
        return homePageConfig;
      case cartPath:
        return cartPageConfig;
      case profilePath:
        return profilePageConfig;
      case checkoutPath:
        return checkoutPageConfig;
      default:
        return loginPageConfig;
    }
  }

  @override
  RouteInformation restoreRouteInformation(PageConfiguration configuration) {
    switch (configuration.page) {
      case Pages.home:
        return const RouteInformation(location: homePath);
      case Pages.cart:
        return const RouteInformation(location: cartPath);
      case Pages.login:
        return const RouteInformation(location: loginPath);
      case Pages.checkout:
        return const RouteInformation(location: checkoutPath);
      case Pages.profile:
        return const RouteInformation(location: profilePath);
      default:
        return const RouteInformation(location: loginPath);
    }
  }
}
