import 'package:devquiz/core/core.dart';
import 'package:flutter/material.dart';

import '../widgets.dart';

class ScoreCard extends StatefulWidget {
  @override
  _ScoreCardState createState() => _ScoreCardState();
}

class _ScoreCardState extends State<ScoreCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
          height: 136,
          decoration: BoxDecoration(
              color: AppColors.white, borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(flex: 1, child: ChartWidget()),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: EdgeInsets.only(left: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Vamos começar",
                          style: AppTextStyles.heading,
                        ),
                        Text(
                          "Complete os desafios e avance em conhecimento",
                          style: AppTextStyles.body,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
