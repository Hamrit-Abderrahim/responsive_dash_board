import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/quick_invoice/custom_text_fieled.dart';

class TitleTextFormFieledView extends StatelessWidget {
  const TitleTextFormFieledView(
      {super.key, required this.title, required this.hint});
  final String title, hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16,
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextFieled(
          hint: hint,
        )
      ],
    );
  }
}
