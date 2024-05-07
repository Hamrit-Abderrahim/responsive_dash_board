import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/drawer_widget/user_info_list_tile.dart';

import '../../models/user_info.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({
    super.key,
    required this.userInfo,
  });

  final List<UserInfo> userInfo;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: userInfo
            .map((e) => IntrinsicWidth(
                  child: UserInfoListTile(userInfo: e),
                ))
            .toList(),
      ),
    );
  }
}
