import 'package:devquiz/core/core.dart';
import 'package:devquiz/result/components/back_button.dart';
import 'package:devquiz/result/components/share_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              style: GoogleFonts.notoSans(
                fontWeight: FontWeight.w700,
                fontSize: 30,
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: "Você concluiu\n",
                  style:
                      AppTextStyles.body.copyWith(fontWeight: FontWeight.w400),
                  children: [
                    TextSpan(
                        text: "Gerenciamento de Estado\n",
                        style: AppTextStyles.body.copyWith(
                            fontWeight: FontWeight.w600, fontSize: 16)),
                    TextSpan(text: " com 6 de 10 acertos")
                  ]),
            ),
          ),
          SizedBox(height: 80),
          ShareButton.purple(label: "Compartilhar", onTap: () {}),
          SizedBox(height: 20),
          BackButtonWidget(onTap: () {}, label: "Voltar ao início")
        ],
      ),
    );
  }
}
