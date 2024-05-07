import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_assets.dart';
import 'package:responsive_dash_board/widgets/drawer_widget/drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({
    super.key,
  });

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  final List<DrawerItemModel> items = [
    const DrawerItemModel(image: Assets.imagesDashboard, title: 'Dashboard'),
    const DrawerItemModel(
        image: Assets.imagesTransaction, title: 'My Transaction'),
    const DrawerItemModel(image: Assets.imagesStatistics, title: 'Statistics'),
    const DrawerItemModel(image: Assets.imagesWallet, title: 'Wallet Account'),
    const DrawerItemModel(
        image: Assets.imagesInvestement, title: 'My Investments'),
  ];
  int selectedIndex = 0;
  final bool isACtive = true;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: items.length,
        itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(top: 20),
              child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (selectedIndex != index) {
                        selectedIndex = index;
                      }
                    });
                  },
                  child: DrawerItem(
                    isActive: selectedIndex == index,
                    drawerItemModel: items[index],
                  )),
            ));
  }
}
