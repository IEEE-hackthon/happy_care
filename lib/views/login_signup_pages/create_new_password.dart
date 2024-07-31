import 'package:flutter/material.dart';
import 'package:save_environment/views/login_signup_pages/confirm_new_password.dart';
import 'package:save_environment/widgets/login_signup_widget/login_signup_button.dart';
import 'package:save_environment/widgets/login_signup_widget/password_text_field.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Create new password'),
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
                PasswordTextField(
                  label: 'Password',
                ),
                SizedBox(
                  height: screenHeight * 0.015,
                ),
                PasswordTextField(
                  label: 'Confirm Password',
                ),
                SizedBox(
                  height: screenHeight * 0.045,
                ),
                LoginAndSignUpButton(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ConfirmNewPassword(),
                      ),
                    );
                  },
                  height: screenHeight * 0.05,
                  fontSize: screenWidth * 0.05,
                  backgroundColor: Color(0xff99BA60),
                  textColor: Colors.white,
                  label: 'Confirm',
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
