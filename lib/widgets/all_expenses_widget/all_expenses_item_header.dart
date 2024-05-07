import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    this.color,
    this.colorICon,
    this.backIamgeColor,
  });
  final String image;
  final Color? color;
  final Color? backIamgeColor;
  final Color? colorICon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: backIamgeColor ?? const Color(0xFFFAFAFA),
          child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(
                color ?? const Color(0xFF4EB7F2), BlendMode.srcIn),
          ),
        ),
        const Spacer(),
        Icon(
          Icons.arrow_forward_ios,
          color: colorICon ?? const Color(0xFF064061),
        ),
      ],
    );
  }
}
