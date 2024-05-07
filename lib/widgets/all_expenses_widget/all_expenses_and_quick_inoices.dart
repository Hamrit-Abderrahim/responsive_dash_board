import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_widget/all_expenses.dart';
import 'package:responsive_dash_board/widgets/quick_invoice/quick_invice.dart';

class AllExpensesAndQuickInvoices extends StatelessWidget {
  const AllExpensesAndQuickInvoices({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 40,
        ),
        AllExpanses(),
        SizedBox(
          height: 24,
        ),
        QuickInvoice()
      ],
    );
  }
}
