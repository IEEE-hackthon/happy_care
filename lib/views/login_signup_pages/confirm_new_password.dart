import 'package:flutter/material.dart';

import '../../widgets/loginAndRegistration/custom_buttom.dart';
import '../../widgets/loginAndRegistration/iconfider_image.dart';
import '../../widgets/loginAndRegistration/text_confirm_page.dart';
import 'login_page.dart';

class ConfirmNewPassword extends StatelessWidget {
  const ConfirmNewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
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
              const ImageConfirm(),
              SizedBox(
                height: screenHeight * 0.040,
              ),
              const TitleText(
                textOne: 'The password changed',
                textTwo: 'successfully',
                textThree: 'You can now log in again !',
              ),
              SizedBox(
                height: screenHeight * 0.033,
              ),
              CustomButton(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const LogInPage(),
                      ),
                    );
                  },
                  height: screenHeight * 0.05,
                  fontSize: screenWidth * 0.05,
                  backgroundColor: const Color(0xff99BA60),
                  textColor: Colors.white,
                  label: 'Log in')
            ],
          ),
        );
      },
    ));
  }
}
