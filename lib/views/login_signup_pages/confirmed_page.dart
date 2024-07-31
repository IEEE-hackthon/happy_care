import 'package:flutter/material.dart';
import 'package:save_environment/widgets/login_signup_widget/iconfider_image.dart';
import 'package:save_environment/widgets/login_signup_widget/login_signup_button.dart';
import 'package:save_environment/widgets/login_signup_widget/text_confirm_page.dart';

class ConfirmedPage extends StatelessWidget {
  const ConfirmedPage({super.key});

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
                textOne: 'The account has been',
                textTwo: 'confirmed successfully',
                textThree: 'Glad to welome you !',
              ),
              SizedBox(
                height: screenHeight * 0.033,
              ),
              LoginAndSignUpButton(
                  onTap: () {},
                  height: screenHeight * 0.05,
                  fontSize: screenWidth * 0.05,
                  backgroundColor: const Color(0xff99BA60),
                  textColor: Colors.white,
                  label: 'Get started')
            ],
          ),
        );
      },
    ));
  }
}
