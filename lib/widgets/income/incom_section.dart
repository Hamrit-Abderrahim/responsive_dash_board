import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/utils/widgets/custom_conatiner.dart';
import 'package:responsive_dash_board/widgets/income/incom_chart.dart';
import 'package:responsive_dash_board/widgets/income/incom_section_header.dart';
import 'package:responsive_dash_board/widgets/income/income_details.dart';

class IcomsSection extends StatelessWidget {
  const IcomsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
        padding: 24,
        child: Column(
          children: [
            IncomSectionHeader(),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: IncomChart()),
                  Expanded(flex: 2, child: IncomeDetails())
                ],
              ),
            ),
          ],
        ));
  }
}
