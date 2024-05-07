import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/utils/app_assets.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/quick_invoice/latest_transaction_list_view.dart';

import '../../models/user_info.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});
  static List<UserInfo> userInfo = [
    UserInfo(
        assetsImage: Assets.imagesUserOne,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
    UserInfo(
        assetsImage: Assets.imagesUserTwo,
        title: 'Josua Nunito',
        subtitle: 'Josh Nunito@gmail.com'),
    UserInfo(
        assetsImage: Assets.imagesUserThree,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'LatestTransaction',
          style: AppStyles.styleMedium16,
        ),
        const SizedBox(
          height: 12,
        ),
        LatestTransactionListView(userInfo: userInfo)
        // SizedBox(
        //   height: 80,
        //   child: ListView.builder(
        //       scrollDirection: Axis.horizontal,
        //       itemCount: userInfo.length,
        //       itemBuilder: (context, index) => IntrinsicWidth(
        //           child: UserInfoListTile(userInfo: userInfo[index]))),
        // )
      ],
    );
  }
}
