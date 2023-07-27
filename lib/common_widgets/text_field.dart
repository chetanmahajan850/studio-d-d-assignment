import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:studio_d_d_assignment/utilities/app_colors.dart';

class AppTextField extends StatefulWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final bool? isEnabled;
  final bool isEnabledDigit;
  final bool isIcon;
  final IconData? iconData;
  final int? maxLength;
  final int? maxLines;
  final String? Function(String?)? validator;
  final String? Function(String?)? onChange;

  const AppTextField(
      {required this.textEditingController,
      required this.hintText,
      required this.validator,
      this.isEnabled,
      required this.isEnabledDigit,
      this.maxLength,
      this.maxLines,
      this.onChange,
      this.isIcon = false,
      this.iconData});

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  @override
  Widget build(BuildContext context) {
    widget.textEditingController.selection = TextSelection.fromPosition(
        TextPosition(offset: widget.textEditingController.text.length));
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      enabled: widget.isEnabled,
      controller: widget.textEditingController,
      keyboardType:
          widget.isEnabledDigit ? TextInputType.number : TextInputType.text,
      inputFormatters: <TextInputFormatter>[
        widget.isEnabledDigit
            ? FilteringTextInputFormatter.digitsOnly
            : FilteringTextInputFormatter.singleLineFormatter
      ],
      decoration: InputDecoration(
          counterText: "",
          hintText: widget.hintText,
          hintStyle: Theme.of(context).textTheme.bodySmall,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 0.0, color: AppColors.primary),
            borderRadius: BorderRadius.circular(5.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 0.0, color: AppColors.primary),
            borderRadius: BorderRadius.circular(5.0),
          ),
          filled: false,
          errorMaxLines: 2,
          suffixIcon: widget.isIcon ? Icon(widget.iconData) : null),
      cursorColor: Theme.of(context).textTheme.bodyMedium?.color,
      maxLength: widget.maxLength,
      maxLines: widget.maxLines,
      style: Theme.of(context).textTheme.bodyMedium,
      validator: widget.validator!,
      onChanged: widget.onChange,
    );
  }
}
