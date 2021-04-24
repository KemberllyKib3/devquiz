import 'package:devquiz/challenge/widgets/buttons/next_button_widget.dart';
import 'package:devquiz/core/app_images.dart';
import 'package:devquiz/core/core.dart';
import 'package:devquiz/home/home_page.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(AppImages.trophy),
            SizedBox(
              height: 24,
            ),
            Text(
              "Parabéns!",
              textAlign: TextAlign.center,
              style: AppTextStyles.heading40,
            ),
            SizedBox(
              height: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Você concluiu", style: AppTextStyles.body),
                Text("Gerenciamento de Estado", style: AppTextStyles.bodyBold),
                Text("com 6 de 10 acertos.", style: AppTextStyles.body),
              ],
            ),
            SizedBox(
              height: 48,
            ),
            NextButtonWidget.purple(
                label: "Compartilhar",
                onTap: () {
                  print("Clicou");
                }),
            SizedBox(
              height: 5,
            ),
            NextButtonWidget.white(
                label: "Voltar ao início",
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ));
                }),
          ],
        ),
      ),
    );
  }
}
