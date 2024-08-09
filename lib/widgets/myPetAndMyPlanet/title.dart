import 'package:flutter/material.dart';
class TitleName extends StatelessWidget {
  const TitleName({super.key, required this.iconName, required this.title});
final IconData iconName;
final String title;
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Icon(iconName , color: Colors.green,),
          SizedBox(width: 8,),
          Text(title , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold),),
          Spacer(),
          Icon(Icons.more_horiz)
        ],
      ),
    );
  }
}
