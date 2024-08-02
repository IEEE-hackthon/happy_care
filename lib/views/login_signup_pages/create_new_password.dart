import 'package:flutter/material.dart';

import '../../widgets/loginAndRegistration/custom_buttom.dart';
import '../../widgets/loginAndRegistration/custom_textField.dart';
import 'confirm_new_password.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create new password'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20.0),
            const CustomTextField(
              label: 'Password',
              obscureText: true,
              icon: Icon(Icons.visibility_off, color: Color(0xff717171)),
            ),
            const SizedBox(height: 20.0),
            const CustomTextField(
                label: 'Confirm Password',
                obscureText: true,
                icon: Icon(Icons.visibility_off, color: Color(0xff717171))),
            const SizedBox(height: 40.0),
            CustomButton(
              height: 50.0,
              fontSize: 20.0,
              backgroundColor: const Color(0xff99BA60),
              textColor: Colors.white,
              label: 'Confirm',
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ConfirmNewPassword(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
