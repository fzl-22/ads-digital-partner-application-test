import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextInputField extends StatelessWidget {
  const TextInputField({
    super.key,
    required this.controller,
    required this.label,
    required this.keyboardType,
    required this.validator,
    this.prefixIcon,
    this.suffixIcon,
    this.onSuffixPressed,
  }) : isPassword = false;

  const TextInputField.password({
    super.key,
    required this.controller,
    required this.label,
    required this.keyboardType,
    required this.validator,
    this.prefixIcon,
    this.suffixIcon,
    this.onSuffixPressed,
  }) : isPassword = true;

  final TextEditingController controller;
  final Widget label;
  final TextInputType keyboardType;
  final String? Function(String?) validator;
  final bool isPassword;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final VoidCallback? onSuffixPressed;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: isPassword,
      validator: validator,
      decoration: InputDecoration(
        label: label,
        labelStyle: Get.theme.textTheme.bodyMedium!.copyWith(
          color: Get.theme.colorScheme.tertiary,
        ),
        prefixIcon: prefixIcon != null
            ? Container(
                margin: const EdgeInsets.only(
                  right: 8,
                ),
                child: prefixIcon,
              )
            : null,
        prefixIconConstraints: prefixIcon != null
            ? const BoxConstraints(
                minHeight: 36,
                minWidth: 36,
              )
            : null,
        suffixIcon: suffixIcon != null
            ? GestureDetector(
                onTap: onSuffixPressed,
                child: suffixIcon,
              )
            : null,
        suffixIconConstraints: const BoxConstraints(
          minHeight: 16,
          maxHeight: 24,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Get.theme.colorScheme.tertiary.withAlpha(64),
            width: 2,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Get.theme.colorScheme.primary,
            width: 2,
          ),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Get.theme.colorScheme.error,
            width: 2,
          ),
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Get.theme.colorScheme.error,
            width: 2,
          ),
        ),
      ),
    );
  }
}
