import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:maintenanceApp/core/color_values.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String? labelText;
  final TextStyle? LabelTextStyle;
  final TextAlign? textAlign;
  final double? borderRadius;
  final bool? enabled; // Menentukan apakah field dapat diedit
  final TextInputType? textInputType;
  final List<TextInputFormatter>? textInputFormatters;
  final bool isPassword; // Menentukan apakah ini adalah field password
  final Function(String)? onChanged;
  final FormFieldValidator? validator;
  final IconButton? suffixIcon;
  final bool? filled;
  final double? borderWidth;
  final Color? borderColor;
  final int? maxLines;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.textAlign,
    this.LabelTextStyle,
    this.borderRadius = 4,
    this.enabled = true, // Default: true (bisa diedit)
    this.labelText,
    this.textInputType,
    this.textInputFormatters,
    this.isPassword = false, // Default: false (bukan password)
    this.onChanged,
    this.validator,
    this.suffixIcon,
    this.filled,
    this.borderWidth,
    this.borderColor,
    this.maxLines,
  });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _isPasswordVisible =
      false; // State untuk mengontrol visibilitas password

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.labelText != null && widget.labelText != '') ...[
          Text(
            widget.labelText!,
            style: widget.LabelTextStyle ??
                Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: ColorValues.grayscale500),
          ),
          const SizedBox(
            height: 8,
          ),
        ],
        TextFormField(
          controller: widget.controller,
          maxLines: widget.maxLines ?? 4,
          validator: widget.validator,
          onChanged: widget.onChanged,
          enabled: widget.enabled, // Terapkan properti enabled
          onTapOutside: (event) {
            if (!FocusScope.of(context).hasPrimaryFocus) {
              FocusScope.of(context).unfocus();
            }
          },
          keyboardType: widget.textInputType ?? TextInputType.text,
          obscureText: widget.isPassword
              ? !_isPasswordVisible
              : false, // Kontrol visibilitas password
          inputFormatters: widget.textInputFormatters,
          textAlign: widget.textAlign ?? TextAlign.start,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.w600,
              color: widget.enabled == false
                  ? ColorValues.grayscale400 // Ubah warna teks saat disabled
                  : Colors.black),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            suffixIcon: widget.isPassword
                ? IconButton(
                    icon: Icon(
                      _isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: ColorValues.grayscale500,
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible =
                            !_isPasswordVisible; // Toggle visibilitas password
                      });
                    },
                  )
                : widget
                    .suffixIcon, // Gunakan suffixIcon default jika bukan password
            suffixIconConstraints: const BoxConstraints(minWidth: 50),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            isDense: true,
            hintText: widget.hintText,
            hintStyle: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: ColorValues.grayscale400),
            border: OutlineInputBorder(
                borderSide: BorderSide(
                  width: widget.borderWidth ?? 1,
                  color: widget.borderColor ?? Colors.grey,
                ),
                borderRadius: BorderRadius.circular(widget.borderRadius ?? 4)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius ?? 4),
                borderSide: BorderSide(
                    width: 1.5,
                    color: widget.enabled == false
                        ? Colors.black // Ubah warna border saat disabled
                        : Colors.black)),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius ?? 4),
                borderSide: BorderSide(
                    color: widget.enabled == false
                        ? ColorValues
                            .grayscale400 // Ubah warna border saat disabled
                        : Colors.black)),
            errorStyle: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: ColorValues.danger500),
          ),
        ),
      ],
    );
  }
}
