import 'package:flutter/material.dart';
import '../components/item.dart';
import '../models/number.dart';

class FamilyMemberPage extends StatelessWidget {
  const FamilyMemberPage({super.key});
  final List<InformationPage> familyMembers = const [
    InformationPage(
      image: 'assets/images/family_members/family_father.png',
      enName: 'father',
      jpName: 'Chichioya',
      sound: 'sounds/family_members/father.wav',
    ),
    InformationPage(
        image: 'assets/images/family_members/family_daughter.png',
        enName: 'daughter',
        jpName: 'Musume',
        sound: 'sounds/family_members/daughter.wav'),
    InformationPage(
        image: 'assets/images/family_members/family_grandfather.png',
        enName: 'GrandFather',
        jpName: 'Ojisan',
        sound: 'sounds/family_members/grandfather.wav'),
    InformationPage(
        image: 'assets/images/family_members/family_mother.png',
        enName: 'Mother',
        jpName: 'Hahaoya',
        sound: 'sounds/family_members/mother.wav'),
    InformationPage(
        image: 'assets/images/family_members/family_grandmother.png',
        enName: 'GrandMother',
        jpName: 'Sobo',
        sound: 'sounds/family_members/grandmother.wav'),
    InformationPage(
        image: 'assets/images/family_members/family_older_brother.png',
        enName: 'Older brother',
        jpName: 'Nisan',
        sound: 'sounds/family_members/olderbother.wav'),
    InformationPage(
        image: 'assets/images/family_members/family_older_sister.png',
        enName: 'Older sister',
        jpName: 'Ane',
        sound: 'sounds/family_members/oldersister.wav'),
    InformationPage(
        image: 'assets/images/family_members/family_son.png',
        enName: 'Son',
        jpName: 'Musuko',
        sound: 'sounds/family_members/son.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FamilyMembers'),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (context, index) {
          return Item(
            item: familyMembers[index],
            color: Color(0xff558B37),
            ItemType: 'family_members',
          );
        },
      ),
    );
  }
}
