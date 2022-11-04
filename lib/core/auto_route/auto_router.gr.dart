// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../../feature/navigator_assignment_9/presentation/screens/cart_screen.dart'
    as _i3;
import '../../feature/navigator_assignment_9/presentation/screens/checkout_screen.dart'
    as _i5;
import '../../feature/navigator_assignment_9/presentation/screens/home_screen.dart'
    as _i2;
import '../../feature/navigator_assignment_9/presentation/screens/login_screen.dart'
    as _i1;
import '../../feature/navigator_assignment_9/presentation/screens/profile_screen.dart'
    as _i4;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    LogInScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.LogInScreen(),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.HomeScreen(),
      );
    },
    CartScreenRoute.name: (routeData) {
      final args = routeData.argsAs<CartScreenRouteArgs>(
          orElse: () => const CartScreenRouteArgs());
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.CartScreen(key: args.key),
      );
    },
    ProfileScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.ProfileScreen(),
      );
    },
    CheckoutScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.CheckoutScreen(),
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          LogInScreenRoute.name,
          path: '/',
        ),
        _i6.RouteConfig(
          HomeScreenRoute.name,
          path: '/home-screen',
        ),
        _i6.RouteConfig(
          CartScreenRoute.name,
          path: '/cart-screen',
        ),
        _i6.RouteConfig(
          ProfileScreenRoute.name,
          path: '/profile-screen',
        ),
        _i6.RouteConfig(
          CheckoutScreenRoute.name,
          path: '/checkout-screen',
        ),
      ];
}

/// generated route for
/// [_i1.LogInScreen]
class LogInScreenRoute extends _i6.PageRouteInfo<void> {
  const LogInScreenRoute()
      : super(
          LogInScreenRoute.name,
          path: '/',
        );

  static const String name = 'LogInScreenRoute';
}

/// generated route for
/// [_i2.HomeScreen]
class HomeScreenRoute extends _i6.PageRouteInfo<void> {
  const HomeScreenRoute()
      : super(
          HomeScreenRoute.name,
          path: '/home-screen',
        );

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i3.CartScreen]
class CartScreenRoute extends _i6.PageRouteInfo<CartScreenRouteArgs> {
  CartScreenRoute({_i7.Key? key})
      : super(
          CartScreenRoute.name,
          path: '/cart-screen',
          args: CartScreenRouteArgs(key: key),
        );

  static const String name = 'CartScreenRoute';
}

class CartScreenRouteArgs {
  const CartScreenRouteArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'CartScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.ProfileScreen]
class ProfileScreenRoute extends _i6.PageRouteInfo<void> {
  const ProfileScreenRoute()
      : super(
          ProfileScreenRoute.name,
          path: '/profile-screen',
        );

  static const String name = 'ProfileScreenRoute';
}

/// generated route for
/// [_i5.CheckoutScreen]
class CheckoutScreenRoute extends _i6.PageRouteInfo<void> {
  const CheckoutScreenRoute()
      : super(
          CheckoutScreenRoute.name,
          path: '/checkout-screen',
        );

  static const String name = 'CheckoutScreenRoute';
}
