import 'package:devquiz/core/core.dart';
import 'package:flutter/material.dart';

class LinearProgressWidget extends StatelessWidget {
  final double value;
  const LinearProgressWidget({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: value,
      backgroundColor: AppColors.chartSecondary,
      valueColor: AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
    );
  }
}
