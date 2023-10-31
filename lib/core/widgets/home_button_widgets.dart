import 'package:flutter/material.dart';

class HomeButtonWidgets extends StatelessWidget {
  final String text;
  final void Function()? ontap;
  const HomeButtonWidgets({
    super.key,
    required this.text,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 10,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 47, 102, 165),
            border: Border.all(
              color: Color.fromARGB(255, 0, 0, 0),
              width: 4,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
                text,
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 20,
                ),
              ),
          ],
        ),
      ),
    );
  }
}