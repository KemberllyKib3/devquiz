import 'package:flutter/material.dart';

import 'package:devquiz/challenge/widgets/buttons/next_button_widget.dart';
import 'package:devquiz/core/app_images.dart';
import 'package:devquiz/core/core.dart';
import 'package:devquiz/home/home_page.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

class ResultPage extends StatefulWidget {
  final String title;
  final int length;
  final int result;

  const ResultPage({
    Key? key,
    required this.title,
    required this.length,
    required this.result,
  }) : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  ScreenshotController _screenshotController = ScreenshotController();

  void _takeCapture() async {
    // final imageFile = await _screenshotController.capture(pixelRatio: 1);

    Share.share(
        "Resultado do quiz ${widget.title}\nObtive ${((widget.result / widget.length) * 100).truncate()}% de acerto.");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Screenshot(
              controller: _screenshotController,
              child: Container(
                child: Column(
                  children: [
                    Image.asset(AppImages.trophy),
                    SizedBox(height: 24),
                    Text(
                      "Parabéns!",
                      textAlign: TextAlign.center,
                      style: AppTextStyles.heading40,
                    ),
                    SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Você concluiu", style: AppTextStyles.body),
                        Text(widget.title, style: AppTextStyles.bodyBold),
                        Text(
                            "com ${widget.result} de ${widget.length} acertos.",
                            style: AppTextStyles.body),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 48,
            ),
            NextButtonWidget.purple(
              label: "Compartilhar",
              onTap: _takeCapture,
              // Share.share(
              //   "Resultado do quiz ${widget.title}\nObtive ${((widget.result / widget.length) * 100).truncate()}% de acerto.",
              // );
            ),
            SizedBox(height: 5),
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
