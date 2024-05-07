import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transiction_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransactionItemHistory extends StatelessWidget {
  const TransactionItemHistory(
      {super.key, required this.transictionItemModel, this.trilingColor});
  final TransictionItemModel transictionItemModel;
  final Color? trilingColor;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(
          transictionItemModel.title,
          style: AppStyles.styleSemiBold16
              .copyWith(color: const Color(0xFF064061)),
        ),
        subtitle: Text(
          transictionItemModel.subtitle,
          style:
              AppStyles.styleRegular16.copyWith(color: const Color(0xFFAAAAAA)),
        ),
        trailing: Text(
          transictionItemModel.trailing,
          style: AppStyles.styleSemiBold20.copyWith(
              color: transictionItemModel.isWithDrawal
                  ? Colors.red
                  : const Color(0xFF7DD97B)),
        ),
      ),
    );
  }
}
