import 'package:application/core/color_values.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String? labelText;
  final TextStyle? LabelTextStyle;
  final TextAlign? textAlign;
  final double? borderRadius;
  final bool? enabled;
  final SvgPicture? suffixIcon;
  final TextInputType? textInputType;
  final List<TextInputFormatter>? textInputFormatters;
  final bool? isPassword;
  final Function(String)? onChanged;
  final FormFieldValidator? validator;

  const CustomTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      this.textAlign,
      this.LabelTextStyle,
      this.borderRadius = 4,
      this.enabled,
      this.suffixIcon,
      this.labelText,
      this.textInputType,
      this.textInputFormatters,
      this.isPassword,
      this.onChanged,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null && labelText != '') ...[
          Text(
            labelText!,
            style: LabelTextStyle ??
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
          controller: controller,
          validator: validator,
          onChanged: onChanged,
          enabled: enabled,
          onTapOutside: (event) {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          keyboardType: textInputType ?? TextInputType.text,
          obscureText: isPassword ?? false,
          inputFormatters: textInputFormatters,
          textAlign: textAlign ?? TextAlign.start,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.w600, color: ColorValues.grayscale900),
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            suffixIconConstraints: const BoxConstraints(minWidth: 50),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            isDense: true,
            hintText: hintText,
            hintStyle: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: ColorValues.grayscale400),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 4)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 4),
                borderSide: const BorderSide(color: ColorValues.grayscale400)),
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
