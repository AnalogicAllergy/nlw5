import 'package:devquiz/challenge/widgets/question_indicator/question_indicator_widget.dart';
import 'package:devquiz/challenge/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ChallengePage extends StatefulWidget {
  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: SafeArea(top: true, child: QuestionIndicatorWidget()),
          preferredSize: Size.fromHeight(60)),
      body: Column(
        children: [
          QuizWidget(title: "O que o Flutter faz em sua totalidade?"),
        ],
      ),
    );
  }
}
