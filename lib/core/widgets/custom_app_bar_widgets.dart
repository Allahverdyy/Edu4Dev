import 'package:auto_route/auto_route.dart';
import 'package:edu4dev/core/constants/light_theme_color_constant.dart';
import 'package:edu4dev/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final void Function()? onPressed;
  final TextStyle? titleTextStyle;
  final double? processValue;
  const CustomAppBar({super.key, this.title, this.titleTextStyle, this.onPressed, this.processValue =0.0});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleTextStyle: titleTextStyle,
      elevation: 0,
      title: Text(title ?? ""),
      centerTitle: true,
      bottom: processValue == 0.0
          ? null
          : PreferredSize(
              preferredSize: const Size.fromHeight(1),
              child: LinearProgressIndicator(
                borderRadius: BorderRadius.circular(10),
                value: processValue ,
                color: Theme.of(context).primaryColor,
                backgroundColor: Colors.grey[300],
              ),
            ),
      backgroundColor: Colors.transparent,
      leading: Transform.translate(
        offset: const Offset(-10, 0),
        child: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_sharp),
          onPressed: onPressed ?? context.router.pop,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}