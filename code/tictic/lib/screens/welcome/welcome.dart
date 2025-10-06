import 'package:flutter/material.dart';
import 'package:tictic/constants/sizes.dart';
import 'package:tictic/screens/welcome/widgets/call_to_actions.dart';
import 'package:tictic/screens/welcome/widgets/logo_welcome.dart';
import 'package:tictic/screens/welcome/widgets/text_divider.dart';
import 'package:tictic/screens/welcome/widgets/text_slider_with_bullets.dart';

import '../../constants/colors.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  static const String routeName = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/back1.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Spacer(),
              LogoWelcome(),
              Spacer(),
              TextSliderWithBullets(),
              Spacer(),
              CallToActions(),
            ],
          ),
        ),
      ),
    );
  }
}
