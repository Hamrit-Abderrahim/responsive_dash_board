import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/utils/widgets/custom_conatiner.dart';
import 'package:responsive_dash_board/widgets/my_card/my_card.dart';
import 'package:responsive_dash_board/widgets/transiction_history/transiction_history.dart';

class MyCardTransacionHistory extends StatelessWidget {
  const MyCardTransacionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      padding: 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My card',
            style: AppStyles.styleSemiBold20,
          ),
          SizedBox(
            height: 20,
          ),
          MyCard(),
          Divider(
            height: 40,
            color: Color(0xFFF1F1F1),
          ),
          TrnasictionHistory()
        ],
      ),
    );
  }
}
