import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';

import '../models/number.dart';

class NumbersPages extends StatelessWidget {
  const NumbersPages({Key? key});
  final List<InformationPage> numbers = const [
    InformationPage(
      image: 'assets/images/numbers/number_one.png',
      enName: 'one',
      jpName: 'ichi',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    InformationPage(
        image: 'assets/images/numbers/number_two.png',
        enName: 'two',
        jpName: 'Ni',
        sound: 'sounds/numbers/number_two_sound.mp3'),
    InformationPage(
        image: 'assets/images/numbers/number_three.png',
        enName: 'three',
        jpName: 'San',
        sound: 'sounds/numbers/number_three_sound.mp3'),
   InformationPage(
        image: 'assets/images/numbers/number_four.png',
        enName: 'four',
        jpName: 'shi',
        sound: 'sounds/numbers/number_four_sound.mp3'),
   InformationPage(
        image: 'assets/images/numbers/number_five.png',
        enName: 'five',
        jpName: 'go',
        sound: 'sounds/numbers/number_five_sound.mp3'),
    InformationPage(
        image: 'assets/images/numbers/number_six.png',
        enName: 'six',
        jpName: 'roku',
        sound: 'sounds/numbers/number_six_sound.mp3'),
   InformationPage(
        image: 'assets/images/numbers/number_seven.png',
        enName: 'seven',
        jpName: 'shichi',
        sound: 'sounds/numbers/number_seven_sound.mp3'),
   InformationPage(
        image: 'assets/images/numbers/number_eight.png',
        enName: 'eight',
        jpName: 'hachi',
        sound: 'sounds/numbers/number_eight_sound.mp3'),
   InformationPage(
        image: 'assets/images/numbers/number_nine.png',
        enName: 'nine',
        jpName: 'ku',
        sound: 'sounds/numbers/number_nine_sound.mp3'),
    InformationPage(
        image: 'assets/images/numbers/number_ten.png',
        enName: 'ten',
        jpName: 'juu',
        sound: 'sounds/numbers/number_ten_sound.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers'),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(item: numbers[index], color: Color(0xffEF9235), ItemType: 'numbers' ,);
        },
      )
    );
  }

  List<Widget> getlist(List<InformationPage> numbers) {
    List<Widget> itemsList = [];
    for (int i = 0; i <= numbers.length; i++) {
      itemsList.add(Item(item: numbers[i], color: Color(0xffEF9235), ItemType: 'numbers' ,));
    }
    return itemsList;
  }
}
