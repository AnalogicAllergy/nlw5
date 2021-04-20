import 'package:devquiz/core/core.dart';
import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  final String title;
  final bool isRight;
  final bool isSelected;

  const AnswerWidget(
      {Key? key,
      required this.title,
      required this.isSelected,
      required this.isRight})
      : super(key: key);

  bool get isCorrect => isSelected && isRight;

  //colors getters
  Color get _selectedColorRight =>
      isRight ? AppColors.darkGreen : AppColors.darkRed;

  Color get _selectedBorderRight =>
      isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedColorCardRight =>
      isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedBorderCardRight =>
      isRight ? AppColors.green : AppColors.red;

  TextStyle get _selectedTextStyleRight =>
      isRight ? AppTextStyles.bodyDarkGreen : AppTextStyles.bodyDarkRed;

  IconData get _selectedIconRight => isRight ? Icons.check : Icons.close;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isCorrect ? AppColors.lightGreen : AppColors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.fromBorderSide(
          BorderSide(color: AppColors.border),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(title,
                style: isCorrect
                    ? AppTextStyles.body.copyWith(
                        color: AppColors.darkGreen,
                      )
                    : AppTextStyles.body),
          ),
          Container(
            height: 24,
            width: 24,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border:
                  Border.fromBorderSide(BorderSide(color: AppColors.border)),
              color: isCorrect ? AppColors.darkGreen : AppColors.white,
            ),
            child: isSelected
                ? isCorrect
                    ? Icon(
                        Icons.check,
                        color: AppColors.white,
                        size: 16,
                      )
                    : Icon(
                        Icons.close,
                        size: 16,
                      )
                : null,
          ),
        ],
      ),
    );
  }
}
