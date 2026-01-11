import 'package:flutter/material.dart';
import 'package:language_app_basic/models/number_model.dart';

class Item extends StatelessWidget {
  const Item({super.key,required this.number});

  final Number number;

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 100,
            color: Colors.orangeAccent,
            child: Row(
              children: [
                Container(
                  color: Colors.yellow.shade100,
                  child: Image.asset(
                    number.img,
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      number.jpName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      number.enName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Spacer(flex: 1),
          
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ],
            ),
          );
  }
}