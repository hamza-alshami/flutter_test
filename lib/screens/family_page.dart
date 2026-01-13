import 'package:flutter/material.dart';
import 'package:language_app_basic/components/item.dart';
import 'package:language_app_basic/models/number_model.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});
  final List<ItemModel> numbers = const [
    ItemModel(
      img: "assets/images/family_members/family_father.png",
      jpName: "Otousan",
      enName: "Father",
      audio: "sounds/family_members/father.wav",
    ),
    ItemModel(
      img: "assets/images/family_members/family_mother.png",
      jpName: "Okaasan",
      enName: "Mother",
      audio: "sounds/family_members/mother.wav",
    ),
    ItemModel(
      img:
          "assets/images/family_members/family_older_brother.png",
      jpName: "Oniisan",
      enName: "Older Brother",
      audio: "sounds/family_members/older bother.wav",
    ),
    ItemModel(
      img:
          "assets/images/family_members/family_older_sister.png",
      jpName: "Oneesan",
      enName: "Older Sister",
      audio: "sounds/family_members/older sister.wav",
    ),
    ItemModel(
      img:
          "assets/images/family_members/family_younger_brother.png",
      jpName: "Otouto",
      enName: "Younger Brother",
      audio: "sounds/family_members/younger brohter.wav",
    ),
    ItemModel(
      img:
          "assets/images/family_members/family_younger_sister.png",
      jpName: "Imouto",
      enName: "Younger Sister",
      audio: "sounds/family_members/younger sister.wav",
    ),
    ItemModel(
      img:
          "assets/images/family_members/family_grandfather.png",
      jpName: "Ojiisan",
      enName: "Grand Father",
      audio: "sounds/family_members/grand father.wav",
    ),
    ItemModel(
      img:
          "assets/images/family_members/family_grandmother.png",
      jpName: "Obaasan",
      enName: "Grand Mother",
      audio: "sounds/family_members/grand mother.wav",
    ),
    ItemModel(
      img: "assets/images/family_members/family_son.png",
      jpName: "Musuko",
      enName: "Son",
      audio: "sounds/family_members/son.wav",
    ),
    ItemModel(
      img:
          "assets/images/family_members/family_daughter.png",
      jpName: "Musume",
      enName: "Daughter",
      audio: "sounds/family_members/daughter.wav",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(
          "family",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (BuildContext, index) {
          return Item(
            number: numbers[index],
            color: Colors.green,
          );
        },
      ),
    );
  }
}
