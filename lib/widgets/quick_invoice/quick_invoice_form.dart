import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/widgets/custom_button.dart';
import 'package:responsive_dash_board/widgets/quick_invoice/title_text_form_fieled_view.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextFormFieledView(
                  title: 'Customer name', hint: 'Type customer name'),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextFormFieledView(
                  title: 'Customer Email', hint: 'Type customer email'),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: TitleTextFormFieledView(
                  title: 'Item name', hint: 'Type customer name'),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child:
                  TitleTextFormFieledView(title: 'Customer mount', hint: 'USD'),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                title: 'Add more details',
                backColor: Colors.transparent,
                textColor: Color(0xFF4EB7F2),
              ),
            ),
            SizedBox(
              width: 24,
            ),
            Expanded(
              child: CustomButton(
                title: 'Send Money',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
