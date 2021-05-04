import 'package:devquiz/core/core.dart';
import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  final String question;
  final bool isRight;
  final bool isSelcted;

  const AnswerWidget({
    Key? key,
    required this.question,
    this.isRight = false,
    this.isSelcted = false,
  }) : super(key: key);

  Color get _selectedColorRight =>
      isRight ? AppColors.darkGreen : AppColors.darkRed;

  Color get _selectedBorderRight =>
      isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedColorCardRight =>
      isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedBorderCardRight =>
      isRight ? AppColors.green : AppColors.red;

  TextStyle get _selectTextStyleRight =>
      isRight ? AppTextStyles.bodyDarkGreen : AppTextStyles.bodyDarkRed;

  IconData get _selectedIconRight => isRight ? Icons.check : Icons.close;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isSelcted ? _selectedColorCardRight : AppColors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.fromBorderSide(
            BorderSide(
              color: isSelcted ? _selectedBorderCardRight : AppColors.white,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                question,
                style: isSelcted ? _selectTextStyleRight : AppTextStyles.body,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: isSelcted ? _selectedColorRight : AppColors.white,
                borderRadius: BorderRadius.circular(50),
                border: Border.fromBorderSide(
                  BorderSide(
                    color: isSelcted ? _selectedBorderRight : AppColors.white,
                  ),
                ),
              ),
              height: 24,
              width: 24,
              child: isSelcted
                  ? Icon(
                      isSelcted ? _selectedIconRight : null,
                      size: 16,
                      color: AppColors.white,
                    )
                  : null,
            )
          ],
        ),
      ),
    );
  }
}
