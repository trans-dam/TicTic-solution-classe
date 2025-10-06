import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tictic/constants/colors.dart';
import 'package:tictic/constants/sizes.dart';
import 'package:tictic/screens/welcome/widgets/bullet.dart';
import 'package:tictic/screens/welcome/widgets/logo_welcome.dart';

import '../../constants/duarations.dart';
import '../../constants/fonts.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final PageController _pageController = PageController(viewportFraction: 1);

  int _currentIdx = 0;

  final _items = [
    'L’harmonie financière dans vos groupes, en toute simplicité !',
    'Calculs instantanés, équité garantie avec TicTic !',
    'Calculs fastidieux ? Non merci. Optez pour la simplicité avec TicTic !',
    'TicTic : Vos dépenses partagées en toute simplicité !',
  ];

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
              LogoWelcome(),
              SizedBox(height: kVerticalPadding),
              SizedBox(
                // TODO : fix
                height: kTextSliderHeight,
                child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: _pageController,
                  itemCount: _items.length,
                  onPageChanged: (int index) {
                    setState(() {
                      _currentIdx = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: kHorizontalPadding,
                      ),
                      child: Text(_items[index], style: kTagLine),
                    );
                  },
                ),
              ),
              SizedBox(height: kVerticalPadding),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _items.map((item) {
                  return GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      _pageController.animateToPage(
                        _items.indexOf(item),
                        duration: kAnimationDurationShort,
                        curve: Curves.easeInOut,
                      );
                    },
                    child: Bullet(
                      marginRight: _items.indexOf(item) == _items.length - 1
                          ? 0
                          : kHorizontalPaddingL,
                      width:
                          (((MediaQuery.of(context).size.width -
                              kHorizontalPaddingXL -
                              (_items.length - 1) * kHorizontalPaddingL) /
                          _items.length)),
                      color: _items.indexOf(item) == _currentIdx
                          ? kMainColor
                          : kSecondaryColor,
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
