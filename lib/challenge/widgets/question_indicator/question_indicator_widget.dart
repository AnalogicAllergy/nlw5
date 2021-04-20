import 'package:devquiz/core/core.dart';
import 'package:devquiz/shared/widgets/progress_indicator/shared.dart';
import 'package:flutter/material.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Questão 04",
                  style: AppTextStyles.body,
                ),
                Text(
                  "de 10",
                  style: AppTextStyles.body,
                )
              ],
            ),
          ),
          ProgressIndicatorWidget(value: 0.3),
        ],
      ),
    );
  }
}
