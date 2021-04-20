import 'package:devquiz/home/widgets/level_button/level_button_widget.dart';
import 'package:devquiz/home/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          LevelButtonWidget(
            label: "Fácil",
          ),
          LevelButtonWidget(
            label: "Médio",
          ),
          LevelButtonWidget(
            label: "Difícil",
          ),
          LevelButtonWidget(
            label: "Perito",
          ),
        ],
      )),
    );
  }
}
