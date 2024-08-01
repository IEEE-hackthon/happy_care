import 'package:flutter/material.dart';

class AgreeTerms extends StatefulWidget {
  final double iconSpacing;
  final double fontSize;
  const AgreeTerms({
    super.key,
    required this.iconSpacing,
    required this.fontSize,
  });

  @override
  State<AgreeTerms> createState() => _AgreeTermsState();
}

class _AgreeTermsState extends State<AgreeTerms> {
  bool isAgreeToTerms = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isAgreeToTerms = !isAgreeToTerms;
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
                  value: isAgreeToTerms,
                  onChanged: (value) {
                    setState(() {
                      isAgreeToTerms = value!;
                    });
                  },
                ),
              ),
              const Text('I agree to the terms of use',
                  style: TextStyle(
                    color: Color(0xff717171),
                    fontSize: 14,
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
