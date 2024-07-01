import 'package:flutter/material.dart';
import '../components/item.dart';
import '../models/number.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<InformationPage> colorspage = const [
    InformationPage(
      image: 'assets/images/colors/color_black.png',
      enName: 'Black',
      jpName: 'Kuro',
      sound: 'sounds/colors/black.wav',
    ),
    InformationPage(
        image: 'assets/images/colors/color_white.png',
        enName: 'White',
        jpName: 'Shiro',
        sound: 'sounds/colors/white.wav',
        ),
    InformationPage(
        image: 'assets/images/colors/color_red.png',
        enName: 'Red',
        jpName: 'Aka',
        sound: 'sounds/colors/red.wav',
        ),
    InformationPage(
        image: 'assets/images/colors/color_gray.png',
        enName: 'Gray',
        jpName: 'Haiiro',
        sound: 'sounds/colors/gray.wav',
        ),
    InformationPage(
        image: 'assets/images/colors/color_dusty_yellow.png',
        enName: 'dusty_Yellow',
        jpName: 'staubgelb',
        sound: 'sounds/colors/dusty.wav',
        ),
    InformationPage(
        image: 'assets/images/colors/color_green.png',
        enName: 'Green',
        jpName: 'Midori',
        sound: 'sounds/colors/green.wav',
    ),
    InformationPage(
        image: 'assets/images/colors/color_brown.png',
        enName: 'Brawn',
        jpName: 'Chairo',
        sound: 'sounds/colors/brown.wav',
        ),
    InformationPage(
        image: 'assets/images/colors/yellow.png',
        enName: 'Yellow',
        jpName: 'Kiiro',
        sound: 'sounds/colors/yellow.wav',
        ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colors'),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: colorspage.length,
        itemBuilder: (context, index) {
          return Item(
            item:colorspage[index],
            color: Color.fromARGB(255, 100, 3, 82),
            ItemType: 'Colors',
          );
        },
      ),
    );
  }
}
