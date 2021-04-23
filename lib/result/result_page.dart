import 'package:devquiz/core/core.dart';
import 'package:devquiz/result/components/back_button.dart';
import 'package:devquiz/result/components/share_button.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppImages.trophy),
          SizedBox(height: 20),
          Center(
            child: Text(
              "Parabéns",
              style: AppTextStyles.heading40,
            ),
          ),
          SizedBox(height: 20),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: "Você concluiu\n",
                style: AppTextStyles.body
                    .copyWith(fontWeight: FontWeight.w400, fontSize: 16),
                children: [
                  TextSpan(
                      text: "Gerenciamento de Estado\n",
                      style: AppTextStyles.body
                          .copyWith(fontWeight: FontWeight.w600, fontSize: 16)),
                  TextSpan(text: " com 6 de 10 acertos")
                ]),
          ),
          SizedBox(height: 80),
          ShareButton.purple(label: "Compartilhar", onTap: () {}),
          SizedBox(height: 20),
          BackButtonWidget(
              onTap: () {
                Navigator.pop(context);
              },
              label: "Voltar ao início")
        ],
      ),
    );
  }
}
