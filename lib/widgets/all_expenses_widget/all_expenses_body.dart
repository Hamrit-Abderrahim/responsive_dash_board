import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_assets.dart';

import 'all_expenses_item.dart';

class AllExpensesBody extends StatefulWidget {
  const AllExpensesBody({super.key});

  @override
  State<AllExpensesBody> createState() => _AllExpensesBodyState();
}

class _AllExpensesBodyState extends State<AllExpensesBody> {
  final List<AllExpensesItemModel> model = [
    const AllExpensesItemModel(
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129',
      image: Assets.imagesBalance,
    ),
    const AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    const AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129'),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
        children:
            // image
            // .map((e) => Expanded(
            //         child: Padding(
            //       padding: const EdgeInsets.only(left: 12),
            //       child: AllExpaneseItem(image: e),
            //     )))
            // .toList(),
            model.asMap().entries.map((e) {
      //!-- asMap تسمح ت access حاجة اسمها entries
      //!-- entries هذي مكونة من من value and index
      int index = e.key;
      var item = e.value;
      return Expanded(
          child: Padding(
        padding: index == 1
            ? const EdgeInsets.only(left: 12, right: 12)
            : EdgeInsets.zero,
        child: GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: AllExpaneseItem(
            allExpensesItemModel: item,
            isSelected: selectedIndex == index,
          ),
        ),
      ));
    }).toList());
  }
}
