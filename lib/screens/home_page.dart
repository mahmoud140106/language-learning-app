import 'package:flutter/material.dart';
import 'package:language_learning_app/components/category_item.dart';
import 'package:language_learning_app/screens/colors_page.dart';
import 'package:language_learning_app/screens/family_memebers.dart';
import 'package:language_learning_app/screens/numbers_page.dart';
import 'package:language_learning_app/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xFF46332B),
        title: const Text(
          'Toku',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              // context tell me place of screen
              // route build class widget that will be above it
              // MaterialPageRoute class who build new screen
              // builder who buld this page
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext buildContext) {
                return const NumbersPage();
              }));
            },
            text: 'Numbers',
            color: const Color(0xFFEF9235),
          ),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext buildContext) {
                return const FamilyMembers();
              }));
            },
            text: 'Family Members',
            color: const Color(0xFF558B37),
          ),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext buildContext) {
                return const ColorsPage();
              }));
            },
            text: 'Colors',
            color: const Color(0xFF79359F),
          ),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext buildContext) {
                return const PhrasesPage();
              }));
            },
            text: 'Phrases',
            color: const Color(0xFF50ADC7),
          ),
        ],
      ),
    );
  }
}
