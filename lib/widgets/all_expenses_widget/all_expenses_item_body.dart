// import 'package:flutter/material.dart';
// import 'package:responsive_dash_board/utils/app_styles.dart';

// import '../../models/all_expenses_item_model.dart';

// class AllExpensesItemBody extends StatelessWidget {
//   const AllExpensesItemBody({super.key, required this.allExpensesItemModel});
//   final AllExpensesItemModel allExpensesItemModel;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text(
//           allExpensesItemModel.title,
//           style: AppStyles.styleSemiBold16,
//         ),
//         const SizedBox(
//           height: 8,
//         ),
//         Text(
//           allExpensesItemModel.date,
//           style: AppStyles.styleRegular14,
//         ),
//         const SizedBox(
//           height: 16,
//         ),
//         Text(allExpensesItemModel.price, style: AppStyles.styleSemiBold24),
//       ],
//     );
//   }
// }
