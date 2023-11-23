
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final Widget? leading;
  final Widget? trailing;
  final String title;
  final void Function()? ontap;
  final Color? iconColor;
  const CustomListTile({
    super.key,
    this.leading,
    this.trailing,
    this.title = ' ',
    this.ontap,
    this.iconColor
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