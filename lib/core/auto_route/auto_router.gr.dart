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
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../../feature/navigator_assignment_9/presentation/screens/cart_screen.dart'
    as _i4;
import '../../feature/navigator_assignment_9/presentation/screens/checkout_screen.dart'
    as _i6;
import '../../feature/navigator_assignment_9/presentation/screens/home_screen.dart'
    as _i3;
import '../../feature/navigator_assignment_9/presentation/screens/login_screen.dart'
    as _i2;
import '../../feature/navigator_assignment_9/presentation/screens/profile_screen.dart'
    as _i5;
import '../../feature/navigator_assignment_9/presentation/screens/sign_up_screen.dart'
    as _i1;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SignUpScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SignUpScreen(),
      );
    },
    LogInScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.LogInScreen(),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HomeScreen(),
      );
    },
    CartScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.CartScreen(),
      );
    },
    ProfileScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.ProfileScreen(),
      );
    },
    CheckoutScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.CheckoutScreen(),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          SignUpScreenRoute.name,
          path: '/',
        ),
        _i7.RouteConfig(
          LogInScreenRoute.name,
          path: '/log-in-screen',
        ),
        _i7.RouteConfig(
          HomeScreenRoute.name,
          path: '/home-screen',
        ),
        _i7.RouteConfig(
          CartScreenRoute.name,
          path: '/cart-screen',
        ),
        _i7.RouteConfig(
          ProfileScreenRoute.name,
          path: '/profile-screen',
        ),
        _i7.RouteConfig(
          CheckoutScreenRoute.name,
          path: '/checkout-screen',
        ),
      ];
}

/// generated route for
/// [_i1.SignUpScreen]
class SignUpScreenRoute extends _i7.PageRouteInfo<void> {
  const SignUpScreenRoute()
      : super(
          SignUpScreenRoute.name,
          path: '/',
        );

  static const String name = 'SignUpScreenRoute';
}

/// generated route for
/// [_i2.LogInScreen]
class LogInScreenRoute extends _i7.PageRouteInfo<void> {
  const LogInScreenRoute()
      : super(
          LogInScreenRoute.name,
          path: '/log-in-screen',
        );

  static const String name = 'LogInScreenRoute';
}

/// generated route for
/// [_i3.HomeScreen]
class HomeScreenRoute extends _i7.PageRouteInfo<void> {
  const HomeScreenRoute()
      : super(
          HomeScreenRoute.name,
          path: '/home-screen',
        );

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i4.CartScreen]
class CartScreenRoute extends _i7.PageRouteInfo<void> {
  const CartScreenRoute()
      : super(
          CartScreenRoute.name,
          path: '/cart-screen',
        );

  static const String name = 'CartScreenRoute';
}

/// generated route for
/// [_i5.ProfileScreen]
class ProfileScreenRoute extends _i7.PageRouteInfo<void> {
  const ProfileScreenRoute()
      : super(
          ProfileScreenRoute.name,
          path: '/profile-screen',
        );

  static const String name = 'ProfileScreenRoute';
}

/// generated route for
/// [_i6.CheckoutScreen]
class CheckoutScreenRoute extends _i7.PageRouteInfo<void> {
  const CheckoutScreenRoute()
      : super(
          CheckoutScreenRoute.name,
          path: '/checkout-screen',
        );

  static const String name = 'CheckoutScreenRoute';
}
