import 'package:flutter/material.dart';
import 'package:save_environment/views/login_signup_pages/create_new_password.dart';
import 'package:save_environment/widgets/login_signup_widget/fullname_text_field.dart';
import 'package:save_environment/widgets/login_signup_widget/login_signup_button.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Forget Password'),
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.black,
          ),
        ),
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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: screenHeight * 0.065,
                  ),
                  Text(
                    'Please enter your email !',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    height: screenHeight * 0.075,
                  ),
                  FullNameTextField(
                    label: 'Enter Your Email',
                  ),
                  SizedBox(
                    height: screenHeight * 0.070,
                  ),
                  LoginAndSignUpButton(
                    height: screenHeight * 0.05,
                    fontSize: screenWidth * 0.05,
                    backgroundColor: Color(0xff99BA60),
                    textColor: Colors.white,
                    label: 'Send verification code',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const CreateNewPassword(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            );
          },
        ));
  }
}
