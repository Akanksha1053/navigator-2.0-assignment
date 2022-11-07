import 'package:flutter/material.dart';
import 'package:navigator_assignment_9/core/constants/color_constants.dart';

import '../../../../core/constants/text_constants.dart';
import '../../../../core/constants/textstyle_constants.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  static const valueKey = ValueKey('CartScreen');

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
        child: Text(TextConstants.cartScreenText,
            style: TextStyleConstants.createAccountTextStyle),
      ),
    );
  }
}
