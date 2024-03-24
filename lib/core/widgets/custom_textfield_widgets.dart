import 'package:edu4dev/core/constants/light_theme_color_constant.dart';
import 'package:edu4dev/core/extentions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget textInput(
  String hintText,
  BuildContext context,
  TextEditingController controller, {
  TextInputType? keyboardType,
  Widget? prefixIcon,
  bool isIcon = false,
  List<TextInputFormatter>? inputFormatters,
  String? Function(String?)? validator,
  void Function(String)? onChanged,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: context.width / 20),
      Container(
        width: context.width / 1.2,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: TextFormField(
          obscureText: hintText.toLowerCase().contains('password'),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: controller,
          keyboardType: keyboardType ?? TextInputType.text,
          inputFormatters: inputFormatters,
          validator: validator,
          onChanged: onChanged,
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            hintText: hintText,
            hintStyle: const TextStyle(
              fontSize: 16,
              color: const Color.fromRGBO(184, 184, 184, 0.8),
            ),
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  color: AppLightColorConstants.buttonPrimaryColor),
              borderRadius: BorderRadius.circular(10.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: AppLightColorConstants.border),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          style: const TextStyle(fontSize: 14),
        ),
      )
    ],
  );
}
