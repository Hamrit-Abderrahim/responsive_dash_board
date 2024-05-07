import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/widgets/income/incom_section.dart';
import 'package:responsive_dash_board/widgets/my_card_tansacion_hisotry.dart';

class AllMyCardTransactionIncom extends StatelessWidget {
  const AllMyCardTransactionIncom({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 40,
        ),
        MyCardTransacionHistory(),
        SizedBox(
          height: 12,
        ),
        Expanded(child: IcomsSection())
      ],
    );
  }
}
