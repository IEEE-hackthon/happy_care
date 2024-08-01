import 'package:flutter/material.dart';

import '../../views/login_signup_pages/forget_password_page.dart';

class RememberMeAndForgotPassword extends StatefulWidget {
  const RememberMeAndForgotPassword({
    super.key,
  });

  @override
  State<RememberMeAndForgotPassword> createState() =>
      _RememberMeAndForgotPasswordState();
}

class _RememberMeAndForgotPasswordState
    extends State<RememberMeAndForgotPassword> {
  bool isRemembered = false;

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      color: Color(0xff717171),
      fontSize: 14,
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isRemembered = !isRemembered;
            });
          },
          child: Row(
            children: [
              Transform.translate(
                offset: const Offset(-5, 0),
                child: Checkbox(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  side: const BorderSide(color: Color(0xff717171)),
                  activeColor: const Color(0xff8fba52),
                  value: isRemembered,
                  onChanged: (value) {
                    setState(() {
                      isRemembered = value!;
                    });
                  },
                ),
              ),
              const Text('Remember me', style: textStyle),
            ],
          ),
        ),
        GestureDetector(
            onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => const ForgetPasswordPage()),
                ),
            child: const Text('Forget Password?', style: textStyle)),
      ],
    );
  }
}
