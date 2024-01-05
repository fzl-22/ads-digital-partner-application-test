import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class NumberField extends StatelessWidget {
  const NumberField({
    super.key,
    required this.onChanged,
  });

  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 96,
      width: 48,
      child: TextFormField(
        style: Get.textTheme.displayMedium,
        onChanged: (value) {
          onChanged(value);

          if (value.isEmpty) {
            Get.focusScope!.previousFocus();
          } else if (value.length == 1) {
            Get.focusScope!.nextFocus();
          }
        },
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        decoration: InputDecoration(
          hintText: "0",
          hintStyle: Get.textTheme.displayMedium!.copyWith(
            color: Get.theme.colorScheme.tertiary,
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 12,
          ),
        ),
      ),
    );
  }
}
