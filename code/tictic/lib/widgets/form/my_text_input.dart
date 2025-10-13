import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/fonts.dart';
import '../../constants/sizes.dart';
import '../../l10n/app_localizations.dart';

class MyTextInput extends StatelessWidget {
  const MyTextInput({
    super.key,
    this.prefixIcon,
    required this.labelText,
    this.validator,
    this.hintText,
  });

  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final String labelText;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        label: Container(
          padding: EdgeInsets.symmetric(
            horizontal: kHorizontalPaddingS,
            vertical: kVerticalPaddingXS,
          ),
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.all(Radius.circular(kBorderRadius)),
          ),
          child: Text(labelText, style: kLabelStyle),
        ),
        hintText: hintText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        fillColor: kBackgroundColor,
      ),
    );
  }
}
