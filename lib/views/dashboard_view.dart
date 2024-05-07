import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dash_board/widgets/desktop/dashboard_desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      body: AdaptiveLayoute(
          mobileLayout: (context) => const SizedBox(),
          tabletLayout: (context) => const SizedBox(),
          desktopLayout: (context) => const DashboardDektopLayout()),
    );
  }
}
