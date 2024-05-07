import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/models/transiction_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/transiction_history/transaction_history_item.dart';

class TrnasictionHistory extends StatelessWidget {
  const TrnasictionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2022',
          style:
              AppStyles.styleMedium16.copyWith(color: const Color(0xFFAAAAAA)),
        ),
        const SizedBox(
          height: 16,
        ),
        const TransactionHistoryList()
      ],
    );
  }
}

class TransactionHistoryList extends StatelessWidget {
  const TransactionHistoryList({
    super.key,
  });
  static const items = [
    TransictionItemModel(
        subtitle: '13 Apr, 2022 ',
        title: 'Cash Withdrawal',
        trailing: r'$20,129',
        isWithDrawal: true),
    TransictionItemModel(
        subtitle: '13 Apr, 2022 ',
        title: 'Cash Withdrawal',
        trailing: r'$20,129',
        isWithDrawal: false),
    TransictionItemModel(
        subtitle: '13 Apr, 2022 ',
        title: 'Cash Withdrawal',
        trailing: r'$20,129',
        isWithDrawal: false)
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) =>
          TransactionItemHistory(transictionItemModel: items[index]),
      itemCount: items.length,
      shrinkWrap: true,
    );
  }
}

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Transaction History',
          style:
              AppStyles.styleMeduim20.copyWith(color: const Color(0xFF064061)),
        ),
        const Spacer(),
        Text(
          'See all',
          style:
              AppStyles.styleMedium16.copyWith(color: const Color(0xFF4EB7F2)),
        ),
      ],
    );
  }
}
