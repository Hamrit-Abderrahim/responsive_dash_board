import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_my_card_tansiction_incom.dart';
import 'package:responsive_dash_board/widgets/drawer_widget/custom_drawer.dart';

import '../all_expenses_widget/all_expenses_and_quick_inoices.dart';

class DashboardDektopLayout extends StatelessWidget {
  const DashboardDektopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(flex: 2, child: AllExpensesAndQuickInvoices()),
        SizedBox(
          width: 24,
        ),
        Expanded(
          child: AllMyCardTransactionIncom(),
        ),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
