import 'package:flutter/material.dart';

import '../../widgets/loginAndRegistration/agree_terms.dart';
import '../../widgets/loginAndRegistration/custom_buttom.dart';
import '../../widgets/loginAndRegistration/custom_textField.dart';
import '../../widgets/loginAndRegistration/or_continue_with_divider.dart';
import '../../widgets/loginAndRegistration/registration_label.dart';
import '../../widgets/loginAndRegistration/social_button.dart';
import '../../widgets/loginAndRegistration/welcome_text.dart';
import 'confirmed_page.dart';
import 'login_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
                label: 'Create Account',
              ),
              const SizedBox(height: 20.0),
              const CustomTextField(
                borderColor: Color(0xff99BA60),
                fillColor: Color(0xffe7e7e7),
                label: 'Full name',
                keyboardType: TextInputType.name,
              ),
              const SizedBox(height: 15.0),
              const CustomTextField(
                borderColor: Color(0xff99BA60),
                fillColor: Color(0xffe7e7e7),
                label: 'Email',
                keyboardType: TextInputType.emailAddress,
                icon: Icon(Icons.email_outlined, color: Color(0xff717171)),
              ),
              const SizedBox(height: 15.0),
              const CustomTextField(
                borderColor: Color(0xff99BA60),
                fillColor: Color(0xffe7e7e7),
                label: 'Password',
                obscureText: true,
                icon: Icon(Icons.visibility_off, color: Color(0xff717171)),
              ),
              const SizedBox(height: 15.0),
              const CustomTextField(
                borderColor: Color(0xff99BA60),
                fillColor: Color(0xffe7e7e7),
                label: 'Confirm Password',
                obscureText: true,
                icon: Icon(Icons.visibility_off, color: Color(0xff717171)),
              ),
              const SizedBox(height: 10.0),
              const AgreeTerms(
                iconSpacing: 5,
                fontSize: 15,
              ),
              const SizedBox(height: 25.0),
              CustomButton(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ConfirmedPage(
                        textOne: 'The account has been',
                        textTwo: 'created successfully',
                        textThree: 'Glade to welcome you!',
                        navigateTo: LoginPage(),
                        buttonText: 'Log in',
                      ),
                    ),
                  );
                },
                label: 'Sign Up',
                height: 50,
                fontSize: 20,
                backgroundColor: const Color(0xff99BA60),
                textColor: Colors.white,
              ),
              const SizedBox(height: 20.0),
              const OrContinueWithDivider(fontSize: 16.0),
              const SizedBox(height: 20.0),
              const SocialButtons(),
              const SizedBox(height: 20.0),
              RegistrationLabel(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                ),
                prefixText: 'Already have an account ',
                linkText: 'Log in',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
