import 'package:flutter/material.dart';
import 'package:tictic/constants/colors.dart';
import 'package:tictic/constants/fonts.dart';
import 'package:tictic/constants/sizes.dart';
import 'package:tictic/l10n/app_localizations.dart';
import 'package:tictic/screens/scaffold_with_image.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  static const String routeName = '/register';

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithImage(
      child: Padding(
        padding: const EdgeInsets.only(top: kVerticalPadding),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: kHorizontalPadding),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back),
                ),
              ],
            ),
            Form(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kHorizontalPadding,
                ),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        label: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: kHorizontalPaddingXS,
                            vertical: kVerticalPaddingXS,
                          ),
                          decoration: BoxDecoration(color: kBackgroundColor, 
                              borderRadius: BorderRadius.all(
                              Radius.circular(kBorderRadius))),
                          child: Text(
                            AppLocalizations.of(context)!.username_label,
                            style: kLabelStyle,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            kBorderRadiusInput,
                          ),
                          borderSide: BorderSide(color: kBackgroundColor),
                          gapPadding: 0,
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        fillColor: kBackgroundColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
