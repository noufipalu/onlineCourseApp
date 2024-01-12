import 'package:flutter/material.dart';
import 'package:onlinecourseapp/src/core/theme/font_style.dart';
import 'package:onlinecourseapp/src/views/widgets/container_course_name.dart';
import 'package:onlinecourseapp/src/views/widgets/course_title_widget.dart';
import 'package:onlinecourseapp/src/views/widgets/review_widget.dart';

class CourseDetailsWidget extends StatefulWidget {
  const CourseDetailsWidget(
      {super.key,
      required this.courseimage,
      required this.constring,
      required this.txtstring,
      required this.price,
      required this.rating,
      required this.rew});
  final ImageProvider courseimage;
  final String constring;
  final String txtstring;
  final String price;
  final String rating;
  final String rew;

  @override
  State<CourseDetailsWidget> createState() => _CourseDetailsWidgetState();
}

class _CourseDetailsWidgetState extends State<CourseDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5, top: 0, right: 5, left: 15),
      child: Container(
        height: 320,
        width: (MediaQuery.of(context).size.width) / 1.25,
        decoration: BoxDecoration(
          color: Colors.white60,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(image: widget.courseimage),
              const SizedBox(
                height: 5,
              ),
              CourseNameWidget(constring: widget.constring),
              const SizedBox(
                height: 7,
              ),
              CourseTitleWidget(txtstring: widget.txtstring),
              const SizedBox(
                height: 7,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ReviewWidget(
                    rating: widget.rating,
                    rew: widget.rew,
                  ),
                  Text(
                    widget.price,
                    style: AppTheme.bttTheme,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
