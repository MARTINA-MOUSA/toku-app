import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../components/item.dart';
import '../models/number.dart';
class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<InformationPage> phrasespage = const [
    InformationPage(
      enName: 'Are You Coming',
      jpName: 'Kimasu ka',
      sound: 'sounds/phrases/first.wav',
    ),
    InformationPage(
     
      enName: 'Dont forget to subscribe',
      jpName: 'Wasurezu ni kōdoku shite kudasai',
      sound: 'sounds/phrases/second.wav',
    ),
    InformationPage(
      
      enName: 'I love anime',
      jpName: 'atashi wa anime ga daisuki desu',
      sound: 'sounds/phrases/third.wav',
    ),
    InformationPage(
      
      enName: 'I love programming',
      jpName: 'Puroguramingu ga daisukidesu',
      sound: 'sounds/phrases/fourth.wav',
    ),
    InformationPage(
      
      enName: 'What is your name',
      jpName: 'Anata no namae wa nandesuka',
      sound: 'sounds/phrases/fifth.wav',
    ),
    
    InformationPage(
      
      enName: 'Where are you going',
      jpName: 'Doko ni iku no',
      sound: 'sounds/phrases/Sixth.wav',
    ),
    InformationPage(
      
      enName: 'How are you feeling',
      jpName: 'Go kibun wa ikagadesu ka',
      sound: 'sounds/phrases/seventh.wav',
    ),

    InformationPage(
      
      enName: 'Programming is easy',
      jpName: 'Puroguramingu wa kantandesu',
      sound: 'sounds/phrases/eighth.wav',
    ),

    InformationPage(
      
      enName: 'Yes im coming',
      jpName: 'Hai, kimasu',
      sound: 'sounds/phrases/ninth.wav',
    ),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phrases'),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: phrasespage.length,
        itemBuilder: (context, index) {
          return PhrasesItem(
           // number: phrasespage[index],
           color: Color.fromARGB(255, 32, 170, 239), 
           item: phrasespage[index],
           // ItemType: 'Colors',
           
          );
        },
      ),
    );
  }
}


