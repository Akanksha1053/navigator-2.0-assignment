import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/auto_route/auto_router.gr.dart';
import '../../../../core/constants/color_constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
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
              AutoRouter.of(context).push(CartScreenRoute());
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    ColorConstants.signUpButtonColor)),
            child: const Text('Cart Page'),
          ),
          ElevatedButton(
            onPressed: () {
              AutoRouter.of(context).push(const ProfileScreenRoute());
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    ColorConstants.signUpButtonColor)),
            child: const Text('Profile Page'),
          ),
          ElevatedButton(
            onPressed: () {
              AutoRouter.of(context).push(const CheckoutScreenRoute());
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
