import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/models/user_info.dart';
import 'package:responsive_dash_board/utils/app_assets.dart';
import 'package:responsive_dash_board/widgets/drawer_widget/drawer_item_list_view.dart';
import 'package:responsive_dash_board/widgets/drawer_widget/inactive_darwer_item.dart';
import 'package:responsive_dash_board/widgets/drawer_widget/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
                userInfo: UserInfo(
                    assetsImage: Assets.imagesUserThree,
                    title: 'Lekan Okeowo',
                    subtitle: 'demo@gmail.com')),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          const DrawerItemListView(),
          const SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                InactiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        image: Assets.imagesSettings, title: 'Setting system')),
                InactiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        image: Assets.imagesLogOut, title: 'Logout account')),
                SizedBox(
                  height: 48,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
