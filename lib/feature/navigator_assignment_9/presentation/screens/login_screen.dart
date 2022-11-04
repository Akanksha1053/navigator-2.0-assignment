import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/auto_route/auto_router.gr.dart';
import '../../../../core/constants/color_constants.dart';
import '../../../../core/constants/text_constants.dart';
import '../../../../core/constants/textstyle_constants.dart';
import '../widgets/credential_form_field.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: ColorConstants.appbarBackgroundColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Form(
          child: Padding(
            padding: const EdgeInsets.only(top: 32),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 10),
                  const Text(
                    TextConstants.createAccountText,
                    style: TextStyleConstants.createAccountTextStyle,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 20),
                  CredentialFormField(
                      iconLeading: Icons.email_outlined, label: 'Email'),
                  SizedBox(height: MediaQuery.of(context).size.height / 30),
                  CredentialFormField(
                      iconLeading: Icons.lock,
                      label: 'Password',
                      suffixIcon: Icons.remove_red_eye_outlined),
                  SizedBox(height: MediaQuery.of(context).size.height / 60),
                  Container(
                    height: MediaQuery.of(context).size.height / 12,
                    margin: const EdgeInsets.only(left: 24, right: 24),
                    padding: const EdgeInsets.only(
                        left: 16, right: 16, top: 8, bottom: 8),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: ColorConstants.signUpButtonColor),
                    child: TextButton(
                        onPressed: () {
                          AutoRouter.of(context).push(HomeScreenRoute());
                        },
                        child: const Text(TextConstants.signUpText,
                            style: TextStyleConstants.signUpTextStyle)),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
