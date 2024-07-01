import 'package:flutter/material.dart';
import 'package:toku/screens/colors.dart';
import 'package:toku/screens/family_member.dart';
import 'package:toku/screens/numbers_page.dart';
import 'package:toku/screens/phrases.dart';

import '../components/Category.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text('Toku'),
      ),
      body: Column(
        children: [
          Category(
            text: 'Number',
            color: Color(0xffEF9235),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const NumbersPages();
              }));
            },
          ),
          Category(
            text: 'Family Member',
            color: Color(0xff558B37),
            onTap: () 
               {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const FamilyMemberPage();
              }));
            },
          ),
          Category(
            text: 'colors',
            color: Color(0xff79359f),
            onTap: () 
               {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const ColorsPage();
               })
          );
               },
          ),
          Category(
            text: 'phrases',
            color: Color(0xff46E7F3),
            onTap: () 
               {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const PhrasesPage();
              }));
            },
          )
        ],
      ),
    );
  }
}
