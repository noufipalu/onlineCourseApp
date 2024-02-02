import 'package:flutter/material.dart';
import 'package:onlinecourseapp/src/core/theme/font_style.dart';

class MyProfileWidget extends StatelessWidget {
  final String image;
  final String settings;
  final Widget? widget;
  const MyProfileWidget({
    super.key,
    required this.image,
    required this.settings,
    this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        image,
        width: 30,
        height: 30,
        color: Colors.black,
      ),
      title: Text(
        settings,
        style: AppTheme.bttTheme,
      ),
      trailing: widget,
    );
  }
}
