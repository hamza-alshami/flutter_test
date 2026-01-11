import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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

            CountinerWidget(
              name: "Number",
              color: Colors.orange,
            ),
            SizedBox(height: 20),
            CountinerWidget(
              name: "Family",
              color: Colors.green,
            ),
            SizedBox(height: 20),
            CountinerWidget(
              name: "Colors",
              color: Colors.purple,
            ),
            SizedBox(height: 20),
            CountinerWidget(
              name: "Phrases",
              color: Colors.cyan,
            ),
          ],
        ),
      ),
    );
  }
}

class CountinerWidget extends StatelessWidget {
  CountinerWidget({this.name, this.color});

  String? name;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Center(
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
    );
  }
}
