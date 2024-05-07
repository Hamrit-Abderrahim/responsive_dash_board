import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomChart extends StatefulWidget {
  const IncomChart({super.key});

  @override
  State<IncomChart> createState() => _IncomChartState();
}

class _IncomChartState extends State<IncomChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(getChartData()

          // swapAnimationDuration: const Duration(milliseconds: 150), // Optional
          // swapAnimationCurve: Curves.linear, // Optional
          ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
            enabled: true,
            touchCallback: ((p0, pieTouchResponse) {
              activeIndex =
                  pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
              setState(() {});
            })),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
              radius: activeIndex == 0 ? 30 : 20,
              showTitle: false,
              value: 40,
              color: const Color(0xFF208CC8)),
          PieChartSectionData(
              radius: activeIndex == 1 ? 30 : 20,
              showTitle: false,
              value: 25,
              color: const Color(0xFF4EB7F2)),
          PieChartSectionData(
              radius: activeIndex == 2 ? 30 : 20,
              showTitle: false,
              value: 20,
              color: const Color(0xff064061)),
          PieChartSectionData(
              radius: activeIndex == 3 ? 30 : 20,
              showTitle: false,
              value: 22,
              color: const Color(0xFFE2DECD)),
        ]);
  }
}
