import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/incom_details_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class IncomDetailsItem extends StatelessWidget {
  const IncomDetailsItem({
    super.key,
    required this.incomDetailsModel,
  });
  final IncomDetailsModel incomDetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          shape: const OvalBorder(),
          color: incomDetailsModel.color,
        ),
      ),
      title: Text(
        incomDetailsModel.title,
        style:
            AppStyles.styleRegular16.copyWith(color: const Color(0xFF064061)),
      ),
      trailing: Text(
        incomDetailsModel.trailingText,
        style: AppStyles.styleMedium16.copyWith(color: const Color(0xFF208CC8)),
      ),
    );
  }
}
