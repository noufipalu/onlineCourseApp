import 'package:flutter/material.dart';
import 'package:onlinecourseapp/src/core/theme/font_style.dart';

class CourseTitleWidget extends StatefulWidget {
  const CourseTitleWidget({super.key, required this.txtstring});
  final String txtstring;

  @override
  State<CourseTitleWidget> createState() => _CourseTitleWidgetState();
}

class _CourseTitleWidgetState extends State<CourseTitleWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.txtstring,
      style: AppTheme.courseTheme,
    );
  }
}
