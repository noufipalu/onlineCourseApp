import 'package:flutter/material.dart';
import 'package:onlinecourseapp/src/core/colors/colors.dart';
import 'package:onlinecourseapp/src/core/theme/font_style.dart';

class CourseNameWidget extends StatefulWidget {
  const CourseNameWidget({super.key, required this.constring});
  final String constring;

  @override
  State<CourseNameWidget> createState() => _CourseNameWidgetState();
}

class _CourseNameWidgetState extends State<CourseNameWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.gradBlue, AppColors.gradGreen],
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(7),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: InkWell(
          child: Text(
            widget.constring,
            style: AppTheme.courseDetails,
          ),
        ),
      ),
    );
  }
}
