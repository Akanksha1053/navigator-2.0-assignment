import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../core/constants/color_constants.dart';
import '../../../../core/constants/text_constants.dart';
import '../../../../core/constants/textstyle_constants.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});
  static const valueKey = ValueKey('CheckoutScreen');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: ColorConstants.appbarBackgroundColor,
        automaticallyImplyLeading: true,
        elevation: 0,
      ),
      body: const Center(
        child: Text(TextConstants.checkoutScreenText,
            style: TextStyleConstants.createAccountTextStyle),
      ),
    );
  }
}
