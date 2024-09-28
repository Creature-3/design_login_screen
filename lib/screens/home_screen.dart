import 'package:flutter/material.dart';
import 'package:design_login_screen/screens/signin.dart';
import 'package:design_login_screen/screens/signup.dart';
import 'package:design_login_screen/theme/theme.dart';
import '../widgets/custom.dart';
import '../widgets/buttons.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Customs(
      child: Column(
        children: [
          Flexible(
              flex: 7,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 40.0,
                ),

                child: Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                          children: [
                            TextSpan(
                                text: 'Welcome Back!\n',
                                style: TextStyle(
                                  fontSize: 45.0,
                                  fontWeight: FontWeight.w600,
                                )),
                            TextSpan(
                                text:
                                '\n Get start!',
                                style: TextStyle(
                                  fontSize: 20,
                                  //height: 0,
                                )),

                          ]
                      ),
                    )),
              )),
          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  Expanded(
                    child: Buttons(
                      buttonText: 'Sign in',
                      signButtons: const SignIn(),
                      color: Colors.black54,
                      textColor: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Buttons(
                      buttonText: 'Sign up',
                      signButtons: const SignUp(),
                      color: lightColorScheme.onPrimary,
                      textColor: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}