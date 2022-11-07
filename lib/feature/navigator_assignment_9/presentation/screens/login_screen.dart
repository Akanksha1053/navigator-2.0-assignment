import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../../core/auto_route/auto_router.gr.dart';
import '../../../../core/constants/color_constants.dart';
import '../../../../core/constants/text_constants.dart';
import '../../../../core/constants/textstyle_constants.dart';
import '../widgets/credential_form_field.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _saveForm() {
    try {
      final isValid = _formKey.currentState!.validate();
      if (isValid) {
        _formKey.currentState!.save();
        return true;
      }
      return false;
    } catch (exception) {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.scaffoldBackgroundColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        automaticallyImplyLeading: true,
        backgroundColor: ColorConstants.appbarBackgroundColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.only(top: 32),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 10),
                  const Text(
                    TextConstants.logInYourAccountText,
                    style: TextStyleConstants.createAccountTextStyle,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 20),
                  CredentialFormField(
                      iconLeading: Icons.email_outlined,
                      label: 'Email',
                      controller: _emailController),
                  SizedBox(height: MediaQuery.of(context).size.height / 30),
                  CredentialFormField(
                      iconLeading: Icons.lock,
                      label: 'Password',
                      suffixIcon: Icons.remove_red_eye_outlined,
                      controller: _passwordController),
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
                        onPressed: () async {
                          if (_saveForm()) {
                            try {
                              FirebaseAuth auth = FirebaseAuth.instance;
                              await auth.signInWithEmailAndPassword(
                                  email: _emailController.text,
                                  password: _passwordController.text);
                              AutoRouter.of(context)
                                  .push(const HomeScreenRoute());
                            } on FirebaseAuthException catch (e) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    'User not found',
                                  ),
                                ),
                              );
                              _emailController.clear();
                              _passwordController.clear();
                            }
                          }
                        },
                        child: const Text(TextConstants.signInText,
                            style: TextStyleConstants.signUpTextStyle)),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
