import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/all_expenses_widget/all_expenses_item_header.dart';

import '../../models/all_expenses_item_model.dart';

class AllExpaneseItemActive extends StatelessWidget {
  const AllExpaneseItemActive({super.key, required this.allExpensesItemModel});
  final AllExpensesItemModel allExpensesItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      decoration: ShapeDecoration(
          color: const Color(0xFF4EB7F2),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: allExpensesItemModel.image,
            color: Colors.white,
            colorICon: Colors.white,
            backIamgeColor: const Color(0xFF98DAFF),
          ),
          const SizedBox(
            height: 34,
          ),
          Column(
            children: [
              Text(
                allExpensesItemModel.title,
                style: AppStyles.styleSemiBold16.copyWith(color: Colors.white),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                allExpensesItemModel.date,
                style: AppStyles.styleRegular14.copyWith(color: Colors.white),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(allExpensesItemModel.price,
                  style:
                      AppStyles.styleSemiBold24.copyWith(color: Colors.white)),
            ],
          )
        ],
      ),
    );
  }
}
