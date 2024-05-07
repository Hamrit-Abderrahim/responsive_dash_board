import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/widgets/custom_conatiner.dart';
import 'package:responsive_dash_board/widgets/quick_invoice/latest_transaction.dart';
import 'package:responsive_dash_board/widgets/quick_invoice/quick_invoice_form.dart';
import 'package:responsive_dash_board/widgets/quick_invoice/quick_invoices_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
        padding: 20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuickInvoicesHeader(),
            LatestTransaction(),
            Divider(
              color: Color(0xFFF1F1F1),
              height: 48,
            ),
            QuickInvoiceForm()
          ],
        ));
  }
}
