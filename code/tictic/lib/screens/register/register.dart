import 'package:flutter/material.dart';
import 'package:tictic/constants/sizes.dart';
import 'package:tictic/l10n/app_localizations.dart';
import 'package:tictic/screens/scaffold_with_image.dart';
import 'package:tictic/screens/welcome/widgets/logo_welcome.dart';
import 'package:tictic/widgets/form/my_text_input.dart';

class Register extends StatelessWidget {
  Register({super.key});

  static const String routeName = '/register';

  final GlobalKey<FormState> _registerFormKey = GlobalKey<FormState>();

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
            SizedBox(height: kVerticalPaddingL),
            LogoWelcome(),
            SizedBox(height: kVerticalPaddingXL),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kHorizontalPadding,
              ),
              child: Form(
                key: _registerFormKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    MyTextInput(
                      labelText: AppLocalizations.of(context)!.username_label,
                      prefixIcon: Icon(Icons.person),
                      hintText: AppLocalizations.of(
                        context,
                      )!.username_placeholder,
                      validator: (value) {
                        if(value == null || value.isEmpty) {
                          return
                        }
                      },
                    ),
                    SizedBox(height: kVerticalPaddingL),
                    ElevatedButton(
                      onPressed: () {
                        _registerFormKey.currentState?.validate();
                      },
                      child: Text(AppLocalizations.of(context)!.register),
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
