import 'package:flutter/material.dart';
import 'package:save_environment/views/login_signup_pages/login_page.dart';
import 'package:save_environment/widgets/login_signup_widget/agree_terms.dart';
import 'package:save_environment/widgets/login_signup_widget/email_text_field.dart';
import 'package:save_environment/widgets/login_signup_widget/fullname_text_field.dart';
import 'package:save_environment/widgets/login_signup_widget/login_signup_button.dart';
import 'package:save_environment/widgets/login_signup_widget/or_divider.dart';
import 'package:save_environment/widgets/login_signup_widget/password_text_field.dart';
import 'package:save_environment/widgets/login_signup_widget/signup_login_text.dart';
import 'package:save_environment/widgets/login_signup_widget/social_button.dart';
import 'package:save_environment/widgets/login_signup_widget/welcome_text.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
                  label: 'Create Account',
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                const FullNameTextField(),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                EmailTextField(),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                PasswordTextField(
                  label: 'Password',
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                PasswordTextField(
                  label: 'Confirm Password',
                ),
                SizedBox(
                  height: screenHeight * 0.015,
                ),
                AgreeTerms(
                  iconSpacing: screenWidth * 0.0,
                  fontSize: screenWidth * 0.04,
                ),
                SizedBox(
                  height: screenHeight * 0.035,
                ),
                LoginAndSignUpButton(
                  onTap: () {},
                  label: 'Sign Up',
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
                  labelOne: 'Already have an account',
                  labelTwo: 'Log in',
                  fontSize: screenWidth * 0.045,
                  linkColor: const Color(0xff99BA60),
                  textColor: const Color(0xff717171),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => LogInPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
