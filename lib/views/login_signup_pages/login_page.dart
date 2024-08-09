import 'package:flutter/material.dart';
import 'package:save_environment/views/choose_page.dart';

import '../../widgets/loginAndRegistration/custom_buttom.dart';
import '../../widgets/loginAndRegistration/custom_textField.dart';
import '../../widgets/loginAndRegistration/or_continue_with_divider.dart';
import '../../widgets/loginAndRegistration/registration_label.dart';
import '../../widgets/loginAndRegistration/remember_forget.dart';
import '../../widgets/loginAndRegistration/social_button.dart';
import '../../widgets/loginAndRegistration/welcome_text.dart';
import 'confirmed_page.dart';
import 'sign_up_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const WelcomeText(
                fontSize: 28.0,
                color: Color(0xff8fba52),
                label: 'Welcome back !',
              ),
              const SizedBox(height: 20.0),
              const CustomTextField(
                borderColor: Color(0xff99BA60),
                fillColor: Color(0xffe7e7e7),
                label: 'Email',
                icon: Icon(Icons.email_outlined, color: Color(0xff717171)),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 15.0),
              const CustomTextField(
                borderColor: Color(0xff99BA60),
                fillColor: Color(0xffe7e7e7),
                label: 'Password',
                icon: Icon(Icons.visibility_off, color: Color(0xff717171)),
                obscureText: true,
              ),
              const SizedBox(height: 10.0),
              const RememberMeAndForgotPassword(),
              const SizedBox(height: 25.0),
              CustomButton(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ConfirmedPage(
                      textOne: 'The account has been',
                      textTwo: 'successfully logged in',
                      textThree: 'Welcome back !',
                      navigateTo: ChoosePage(),
                      buttonText: 'Go started',
                    ),
                  ),
                ),
                label: 'Log In',
                height: 50.0,
                fontSize: 20.0,
                backgroundColor: const Color(0xff8fba52),
                textColor: Colors.white,
              ),
              const SizedBox(height: 20.0),
              const OrContinueWithDivider(fontSize: 16.0),
              const SizedBox(height: 20.0),
              const SocialButtons(),
              const SizedBox(height: 20.0),
              RegistrationLabel(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const SignUpPage()),
                ),
                prefixText: 'Don\'t have an account? ',
                linkText: 'Sign Up',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
