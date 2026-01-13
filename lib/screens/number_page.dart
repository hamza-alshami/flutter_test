import 'package:flutter/material.dart';
import 'package:language_app_basic/components/item.dart';
import 'package:language_app_basic/models/number_model.dart';

class NumberPage extends StatelessWidget {
  const NumberPage({super.key});
  final List<ItemModel> numbers = const [
    ItemModel(
      img: "assets/images/numbers/number_one.png",
      jpName: "Ichi",
      enName: "One",
      audio: "sounds/numbers/number_one_sound.mp3",
    ),
    ItemModel(
      img: "assets/images/numbers/number_two.png",
      jpName: "Ni",
      enName: "Two",
      audio: "sounds/numbers/number_two_sound.mp3",
    ),
    ItemModel(
      img: "assets/images/numbers/number_three.png",
      jpName: "San",
      enName: "Three",
      audio: "sounds/numbers/number_three_sound.mp3",
    ),
    ItemModel(
      img: "assets/images/numbers/number_four.png",
      jpName: "Shi",
      enName: "Four",
      audio: "sounds/numbers/number_four_sound.mp3",
    ),
    ItemModel(
      img: "assets/images/numbers/number_five.png",
      jpName: "Go",
      enName: "Five",
      audio: "sounds/numbers/number_five_sound.mp3",
    ),
    ItemModel(
      img: "assets/images/numbers/number_six.png",
      jpName: "Roku",
      enName: "Six",
      audio: "sounds/numbers/number_six_sound.mp3",
    ),
    ItemModel(
      img: "assets/images/numbers/number_seven.png",
      jpName: "Shichi",
      enName: "Seven",
      audio: "sounds/numbers/number_seven_sound.mp3",
    ),
    ItemModel(
      img: "assets/images/numbers/number_eight.png",
      jpName: "Hachi",
      enName: "Eight",
      audio: "sounds/numbers/number_eight_sound.mp3",
    ),
    ItemModel(
      img: "assets/images/numbers/number_nine.png",
      jpName: "Kyu",
      enName: "Nine",
      audio: "sounds/numbers/number_nine_sound.mp3",
    ),
    ItemModel(
      img: "assets/images/numbers/number_ten.png",
      jpName: "Juu",
      enName: "Ten",
      audio: "sounds/numbers/number_ten_sound.mp3",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(
          "number",
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
            color: Colors.orange,
          );
        },
      ),
    );
  }
}
