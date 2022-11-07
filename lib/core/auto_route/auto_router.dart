import 'package:auto_route/auto_route.dart';
import 'package:navigator_assignment_9/feature/navigator_assignment_9/presentation/screens/sign_up_screen.dart';

import '../../feature/navigator_assignment_9/presentation/screens/cart_screen.dart';
import '../../feature/navigator_assignment_9/presentation/screens/checkout_screen.dart';
import '../../feature/navigator_assignment_9/presentation/screens/home_screen.dart';
import '../../feature/navigator_assignment_9/presentation/screens/login_screen.dart';
import '../../feature/navigator_assignment_9/presentation/screens/profile_screen.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AutoRoute(page: SignUpScreen,initial: true),
  AutoRoute(page: LogInScreen),
  AutoRoute(page: HomeScreen),
  AutoRoute(page: CartScreen),
  AutoRoute(page: ProfileScreen),
  AutoRoute(page: CheckoutScreen),
])
class $AppRouter {}
