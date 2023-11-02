
import 'package:flutter/material.dart';

class ProfileListWidgets extends StatelessWidget {
  final Widget? leading;
  final Widget? trailing;
  final String title;
  final void Function()? ontap;
  const ProfileListWidgets({
    super.key,
    this.leading,
    this.trailing,
    this.title = ' ',
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: ListTile(
        leading: leading,
        title: Text(title),
        trailing: trailing,
      ),
    );
  }
}