import 'package:ayurvedic_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextfiledWithLabelWidget extends StatelessWidget {
  final String label;
  final String hintText;
  final TextEditingController? textEditingController;
  final bool obscureText;
  final TextInputType textInputType;

  const CustomTextfiledWithLabelWidget({
    super.key,
    required this.label,
    required this.hintText,
    this.textEditingController,
    this.obscureText = false,
    this.textInputType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8.5,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            label,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),

        TextField(
          controller: textEditingController,
          obscureText: obscureText,
          keyboardType: textInputType,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 13, horizontal: 16),
            hintText: hintText,
            hintStyle: TextStyle(fontSize: 14),
            filled: true,
            fillColor: AppColors.textfiledFill,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.textfiledBorder,
                width: 0.85,
              ),
              borderRadius: BorderRadius.all(Radius.circular(8.53)),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.textfiledBorder,
                width: 0.85,
              ),
              borderRadius: BorderRadius.all(Radius.circular(8.53)),
            ),
          ),
        ),
      ],
    );
  }
}
