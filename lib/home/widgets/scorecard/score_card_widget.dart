import 'package:devquiz/core/app_colors.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:devquiz/home/widgets/scorecard/chart_widget.dart';
import 'package:flutter/material.dart';

class ScoreCardWidget extends StatelessWidget {
  const ScoreCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 130,
        decoration: BoxDecoration(
          // USO DO BOXSHADOW
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2), //color of shadow
              spreadRadius: 2, //spread radius
              blurRadius: 5, // blur radius
              offset: Offset(0, 2),
            )
          ],
          // USO DO BORDER E BORDERSIDE
          border: Border.fromBorderSide(
            BorderSide(color: AppColors.border),
          ),
          color: AppColors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: ChartWidget(),
              ),
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
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
