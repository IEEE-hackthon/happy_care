import 'package:flutter/material.dart';
import 'package:save_environment/views/login_signup_pages/sign_up_page.dart';
import 'package:save_environment/widgets/login_signup_widget/fullname_text_field.dart';
import 'package:save_environment/widgets/login_signup_widget/login_signup_button.dart';
import 'package:save_environment/widgets/login_signup_widget/or_divider.dart';
import 'package:save_environment/widgets/login_signup_widget/password_text_field.dart';
import 'package:save_environment/widgets/login_signup_widget/remember_forget.dart';
import 'package:save_environment/widgets/login_signup_widget/signup_login_text.dart';
import 'package:save_environment/widgets/login_signup_widget/social_button.dart';
import 'package:save_environment/widgets/login_signup_widget/welcome_text.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          double screenWidth = constraints.maxWidth;
          double screenHeight = constraints.maxHeight;
          double horizontalPadding = screenWidth * 0.05;
          double verticalPadding = screenHeight * 0.05;

          return Padding(
            padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding, vertical: verticalPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                WelcomeText(
                  fontSize: screenWidth * 0.07,
                  color: const Color(0xff99BA60),
                  label: 'Welcome back !',
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                const FullNameTextField(),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                const PasswordTextField(
                  label: 'Password',
                ),
                SizedBox(
                  height: screenHeight * 0.015,
                ),
                RememberMeAndForgotPassword(
                  iconSpacing: screenWidth * 0.01,
                  fontSize: screenWidth * 0.04,
                ),
                SizedBox(
                  height: screenHeight * 0.035,
                ),
                LoginAndSignUpButton(
                  onTap: () {},
                  label: 'Log In',
                  height: screenHeight * 0.05,
                  fontSize: screenWidth * 0.05,
                  backgroundColor: const Color(0xff99BA60),
                  textColor: Colors.white,
                ),
                SizedBox(
                  height: screenHeight * 0.025,
                ),
                OrContinueWithDivider(
                  fontSize: screenWidth * 0.04,
                ),
                SizedBox(
                  height: screenHeight * 0.024,
                ),
                SocialButtons(
                  iconSize: screenHeight * 0.03,
                  spacing: screenWidth * 0.06,
                ),
                SizedBox(
                  height: screenHeight * 0.029,
                ),
                SignUpAndLogInText(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SignUpPage(),
                      ),
                    );
                  },
                  labelOne: 'Don\'t have an account?',
                  labelTwo: 'Sign Up',
                  fontSize: screenWidth * 0.045,
                  linkColor: const Color(0xff99BA60),
                  textColor: const Color(0xff717171),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
