import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
          height: 175,
          width: 160,
          child: Column(
            children: [
              //build
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          )),
    );
  }
}
