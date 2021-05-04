import 'package:devquiz/challenge/widgets/answer/answer_widget.dart';
import 'package:devquiz/core/core.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;

  const QuizWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyles.heading,
          ),
          SizedBox(
            height: 24,
          ),
          AnswerWidget(
            question:
                'Possibilita a criação de aplicativos compilados nativamente',
            isRight: false,
            isSelcted: true,
          ),
          AnswerWidget(
            question:
                'Possibilita a criação de aplicativos compilados nativamente',
            isRight: true,
            isSelcted: false,
          ),
          AnswerWidget(
            question:
                'Possibilita a criação de aplicativos compilados nativamente',
            isRight: false,
            isSelcted: false,
          ),
          AnswerWidget(
            question:
                'Possibilita a criação de aplicativos compilados nativamente',
            isRight: false,
            isSelcted: false,
          ),
          AnswerWidget(
            question:
                'Possibilita a criação de aplicativos compilados nativamente',
            isRight: false,
            isSelcted: false,
          ),
        ],
      ),
    );
  }
}
