import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final Color color;
  final Color innerColor;
  final IconData icon;
  final String text;
  final Widget destinationPage;

  const CategoryCard({
    super.key,
    required this.color,
    required this.innerColor,
    required this.icon,
    required this.text,
    required this.destinationPage,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => destinationPage,
          ),
        );
      },
      child: Container(
        width: 206,
        height: 214,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 4),
              blurRadius: 10,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 50,
              color: innerColor,
            ),
            const SizedBox(height: 10),
            Text(
              text,
              style: TextStyle(
                fontSize: 26,
                color: innerColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
