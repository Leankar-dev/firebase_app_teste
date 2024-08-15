import 'package:firebase_app_teste/shared/constants/firebase_app_colors.dart';
import 'package:firebase_app_teste/shared/constants/firebase_app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatefulWidget {
  final EdgeInsetsGeometry? padding;
  final String? hintText;
  final String? labelText;
  final TextCapitalization? textCapitalization;
  final TextEditingController? controller;
  final TextInputType? keyboardingType;
  final int? maxLength;
  final TextInputAction? textInputAction;
  final Widget? suffixIcon;
  final bool? obscureText;
  final List<TextInputFormatter>? inputFormatters;
  final FormFieldValidator<String>? validator;
  final String? helperText;

  const CustomTextFormField({
    super.key,
    this.padding,
    this.hintText,
    this.labelText,
    this.textCapitalization,
    this.controller,
    this.keyboardingType,
    this.maxLength,
    this.textInputAction,
    this.suffixIcon,
    this.obscureText,
    this.inputFormatters,
    this.validator,
    this.helperText,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  final defaultBorder = const OutlineInputBorder(
    borderSide: BorderSide(color: FirebaseAppColors.greenLightEnd),
    borderRadius: BorderRadius.all(Radius.circular(25)),
  );

  String? _helperText;

  @override
  void initState() {
    super.initState();
    _helperText = widget.helperText;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ??
          const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: TextFormField(
        onChanged: (value) {
          if (value.length == 1) {
            setState(() {
              _helperText = null;
            });
          } else if (value.isEmpty) {
            setState(() {
              _helperText = widget.helperText;
            });
          }
        },
        validator: widget.validator,
        style: FirebaseAppTextStyles.inputText
            .copyWith(color: FirebaseAppColors.terciaryColor),
        inputFormatters: widget.inputFormatters,
        obscureText: widget.obscureText ?? false,
        textInputAction: widget.textInputAction,
        maxLength: widget.maxLength,
        keyboardType: widget.keyboardingType,
        controller: widget.controller,
        textCapitalization:
            widget.textCapitalization ?? TextCapitalization.none,
        decoration: InputDecoration(
            errorMaxLines: 3,
            helperText: _helperText,
            helperMaxLines: 3,
            suffixIcon: widget.suffixIcon,
            hintText: widget.hintText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: widget.labelText?.toUpperCase(),
            labelStyle: FirebaseAppTextStyles.inputLabelText
                .copyWith(color: FirebaseAppColors.primaryColor),
            border: defaultBorder,
            focusedBorder: defaultBorder,
            errorBorder: defaultBorder,
            focusedErrorBorder: defaultBorder,
            enabledBorder: defaultBorder,
            disabledBorder: defaultBorder),
      ),
    );
  }
}
