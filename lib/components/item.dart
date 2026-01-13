import 'package:flutter/material.dart';
import 'package:language_app_basic/models/number_model.dart';

class Item extends StatelessWidget {
  const Item({
    super.key,
    required this.number,
    required this.color,
  });

  final ItemModel number;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
            color: Colors.yellow.shade100,
            child: Image.asset(number.img),
          ),
          Padding(padding: EdgeInsets.only(left: 10)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                number.jpName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              Text(
                number.enName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ),
          Spacer(flex: 1),

          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              onPressed: () {
                number.playSound();
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
