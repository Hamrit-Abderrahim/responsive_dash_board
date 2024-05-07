import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_widget/all_expenses_item_header.dart';

import '../../models/all_expenses_item_model.dart';
import '../../utils/app_styles.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
              borderRadius: BorderRadius.circular(12))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: allExpensesItemModel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          Column(
            children: [
              Text(
                allExpensesItemModel.title,
                style: AppStyles.styleSemiBold16,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                allExpensesItemModel.date,
                style: AppStyles.styleRegular14,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(allExpensesItemModel.price,
                  style: AppStyles.styleSemiBold24),
            ],
          )
        ],
      ),
    );
  }
}
