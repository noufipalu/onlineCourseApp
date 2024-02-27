import 'package:flutter/material.dart';
import 'package:onlinecourseapp/src/views/widgets/container_course_name.dart';

class MyCoursesWidget extends StatefulWidget {
  const MyCoursesWidget({
    super.key,
    required this.courseimage,
    required this.constring,
    required this.lessonProg,
    required this.progPercnt,
  });
  final ImageProvider courseimage;
  final String constring;
  final String lessonProg;
  final String progPercnt;

  @override
  State<MyCoursesWidget> createState() => _MyCoursesWidgetState();
}

class _MyCoursesWidgetState extends State<MyCoursesWidget> {
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
              const Row(
                children: [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
