import 'package:flutter/material.dart';

import '../../widgets/loginAndRegistration/custom_buttom.dart';
import '../../widgets/loginAndRegistration/iconfider_image.dart';
import '../../widgets/loginAndRegistration/text_confirm_page.dart';

class ConfirmedPage extends StatelessWidget {
  const ConfirmedPage(
      {super.key,
      required this.textOne,
      required this.textTwo,
      required this.textThree,
      required this.navigateTo,
      required this.buttonText});

  final String textOne;
  final String textTwo;
  final String textThree;
  final Widget navigateTo;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const ImageConfirm(),
                const SizedBox(
                  height: 60,
                ),
                TitleText(
                  textOne: textOne,
                  textTwo: textTwo,
                  textThree: textThree,
                ),
                const SizedBox(
                  height: 60,
                ),
                CustomButton(
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (context) => navigateTo,
                      ),
                      (route) => false,
                    );
                  },
                  height: 50,
                  fontSize: 20,
                  backgroundColor: const Color(0xff99BA60),
                  textColor: Colors.white,
                  label: buttonText,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
