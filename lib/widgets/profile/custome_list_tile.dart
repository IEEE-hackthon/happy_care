import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {super.key, required this.editTitle, required this.leadingIcon});
  final Text editTitle;
  final Icon leadingIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListTile(
        enabled: true,
        leading: leadingIcon,
        title: editTitle,
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {},
      ),
    );
  }
}
