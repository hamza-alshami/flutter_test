import 'package:flutter/material.dart';
import 'package:language_app_basic/screens/family_page.dart';
import 'package:language_app_basic/screens/number_page.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.yellow.shade50,
        appBar: AppBar(
          title: Text(
            "Hamza App",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.brown,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.all(5)),

            CounterWidget(
              name: "Number",
              color: Colors.orange,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext) {
                      return NumberPage();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: 20),
            CounterWidget(
              name: "Family",
              color: Colors.green,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext) {
                      return FamilyPage();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: 20),
            CounterWidget(
              name: "Colors",
              color: Colors.purple,
            ),
            SizedBox(height: 20),
            CounterWidget(
              name: "Phrases",
              color: Colors.cyan,
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CounterWidget extends StatelessWidget {
  CounterWidget({this.name, this.color, this.onTap});

  String? name;
  Color? color;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: AlignmentGeometry.centerLeft,
          padding: EdgeInsets.only(left: 20),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(5),
          ),
          height: 50,
          width: 400,

          child: Text(
            name!,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
