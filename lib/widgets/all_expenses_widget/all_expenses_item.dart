import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/widgets/all_expenses_widget/active_all_expenses_item.dart';
import 'package:responsive_dash_board/widgets/all_expenses_widget/in_active_all_expenses_item.dart';

class AllExpaneseItem extends StatelessWidget {
  const AllExpaneseItem(
      {super.key,
      required this.allExpensesItemModel,
      required this.isSelected});
  final AllExpensesItemModel allExpensesItemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? AllExpaneseItemActive(allExpensesItemModel: allExpensesItemModel)
        : InActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel);
  }
}
