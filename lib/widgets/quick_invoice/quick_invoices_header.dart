import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class QuickInvoicesHeader extends StatelessWidget {
  const QuickInvoicesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Quick Invoice',
          style: AppStyles.styleSemiBold20,
        ),
        Spacer(),
        CircleAvatar(
          backgroundColor: Color(0xFFFAFAFA),
          radius: 28,
          child: Icon(
            Icons.add,
            color: Color(0xFF4EB7F2),
          ),
        )
      ],
    );
  }
}
