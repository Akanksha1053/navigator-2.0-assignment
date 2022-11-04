import 'package:flutter/material.dart';
import 'package:navigator_assignment_9/router/page_configuration.dart';
import 'package:navigator_assignment_9/router/router_delegate.dart';
import 'package:provider/provider.dart';

import '../../../../core/constants/color_constants.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({
    super.key,
  });

  static const valueKey = ValueKey('HomeScreen');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.scaffoldBackgroundColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        automaticallyImplyLeading: true,
        elevation: 0,
        backgroundColor: ColorConstants.appbarBackgroundColor,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            onPressed: () {
              Provider.of<PageNavigationRouterDelegate>(context, listen: false)
                  .setNewRoutePath(cartPageConfig);
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    ColorConstants.signUpButtonColor)),
            child: const Text('Cart Page'),
          ),
          ElevatedButton(
            onPressed: () {
              Provider.of<PageNavigationRouterDelegate>(context, listen: false)
                  .setNewRoutePath(profilePageConfig);
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    ColorConstants.signUpButtonColor)),
            child: const Text('Profile Page'),
          ),
          ElevatedButton(
            onPressed: () {
              Provider.of<PageNavigationRouterDelegate>(context, listen: false)
                  .setNewRoutePath(checkoutPageConfig);
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    ColorConstants.signUpButtonColor)),
            child: const Text('Checkout Page'),
          ),
        ]),
      ),
    );
  }
}
