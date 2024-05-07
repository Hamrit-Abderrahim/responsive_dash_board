import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/widgets/custom_conatiner.dart';
import 'package:responsive_dash_board/widgets/all_expenses_widget/all_expenses_body.dart';
import 'package:responsive_dash_board/widgets/all_expenses_widget/all_expenses_header.dart';

class AllExpanses extends StatelessWidget {
  const AllExpanses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      padding: 20,
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesBody()
        ],
      ),
    );
  }
}
