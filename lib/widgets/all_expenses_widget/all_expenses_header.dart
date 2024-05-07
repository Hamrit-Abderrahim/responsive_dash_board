import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_widget/range_options.dart';

import '../../utils/app_styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20,
        ),
        Spacer(),
        RangeOptions()
      ],
    );
  }
}
