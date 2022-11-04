import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:navigator_assignment_9/core/constants/text_constants.dart';
import 'package:navigator_assignment_9/core/constants/textstyle_constants.dart';

import '../../../../core/constants/color_constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  static const valueKey = ValueKey('ProdileScreen');

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
        child: Text(TextConstants.profileScreenText,
            style: TextStyleConstants.createAccountTextStyle),
      ),
    );
  }
}
