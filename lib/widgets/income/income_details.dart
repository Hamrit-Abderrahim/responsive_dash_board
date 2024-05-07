import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/incom_details_model.dart';
import 'package:responsive_dash_board/widgets/income/incom_details_item.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    IncomDetailsModel(
        title: 'Design service', trailingText: '40%', color: Color(0xFF208CC8)),
    IncomDetailsModel(
        title: 'Design product', trailingText: '25%', color: Color(0xFF4EB7F2)),
    IncomDetailsModel(
        title: 'Product royalti',
        trailingText: '20%',
        color: Color(0xFF064061)),
    IncomDetailsModel(
        title: 'Other', trailingText: '22%', color: Color(0xFFE2DECD)),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) =>
          IncomDetailsItem(incomDetailsModel: items[index]),
      itemCount: items.length,
      shrinkWrap: true,
    );
  }
}
