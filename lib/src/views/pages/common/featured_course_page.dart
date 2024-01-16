import 'package:flutter/material.dart';
import 'package:onlinecourseapp/src/core/colors/colors.dart';
import 'package:onlinecourseapp/src/core/constants/image_icon_path.dart';
import 'package:onlinecourseapp/src/core/constants/strings.dart';
import 'package:onlinecourseapp/src/core/theme/font_style.dart';
import 'package:onlinecourseapp/src/views/widgets/course_details_widget.dart';

class FeaturedCoursePage extends StatefulWidget {
  const FeaturedCoursePage({super.key});

  @override
  State<FeaturedCoursePage> createState() => _FeaturedCoursePageState();
}

class _FeaturedCoursePageState extends State<FeaturedCoursePage> {
  int currentIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.containerBG,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      ImageIconPath.back,
                      height: 25,
                      width: 25,
                    ),
                    const Expanded(
                      child: Center(
                        child: Text(
                          Strings.featured,
                          style: AppTheme.pageTitle,
                        ),
                      ),
                    ),
                  ],
                ),
                const Column(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    CourseDetailsWidget(
                      courseimage: AssetImage(ImageIconPath.ui),
                      constring: Strings.uiux,
                      txtstring: Strings.cname1,
                      price: Strings.pr1,
                      rating: Strings.st1,
                      rew: Strings.rev1,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CourseDetailsWidget(
                      courseimage: AssetImage(ImageIconPath.suppch),
                      constring: Strings.bussman,
                      txtstring: Strings.cname2,
                      price: Strings.pr2,
                      rating: Strings.st2,
                      rew: Strings.rev2,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CourseDetailsWidget(
                      courseimage: AssetImage(ImageIconPath.uides),
                      constring: Strings.uiux,
                      txtstring: Strings.cname1,
                      price: Strings.pr1,
                      rating: Strings.st1,
                      rew: Strings.rev1,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
