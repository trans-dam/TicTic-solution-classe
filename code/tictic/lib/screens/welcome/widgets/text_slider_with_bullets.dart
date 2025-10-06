import 'package:flutter/material.dart';
import 'package:tictic/screens/welcome/widgets/text_slider.dart';

import '../../../constants/sizes.dart';
import 'bullets.dart';

class TextSliderWithBullets extends StatefulWidget {
  const TextSliderWithBullets({super.key});

  @override
  State<TextSliderWithBullets> createState() => _TextSliderWithBulletsState();
}

class _TextSliderWithBulletsState extends State<TextSliderWithBullets> {
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
    return Column(
      children: [TextSlider(
        pageController: _pageController,
        currentIdx: _currentIdx,
        items: _items,
        onPageChanged: (int idx) {
          setState(() {
            _currentIdx = idx;
          });
        },
      ),
        SizedBox(height: kVerticalPadding),
        Bullets(
          items: _items,
          pageController: _pageController,
          currentIdx: _currentIdx,
        )],
    );
  }
}
