import 'package:flutter/material.dart';
import 'package:onlinecourseapp/src/core/colors/colors.dart';
import 'package:onlinecourseapp/src/core/constants/image_icon_path.dart';
import 'package:onlinecourseapp/src/core/constants/strings.dart';
import 'package:onlinecourseapp/src/core/theme/font_style.dart';
import 'package:onlinecourseapp/src/views/pages/common/mentor_profile_page.dart';
import 'package:onlinecourseapp/src/views/pages/common/mentor_review_page.dart';
import 'package:onlinecourseapp/src/views/widgets/container_course_name.dart';
import 'package:onlinecourseapp/src/views/widgets/course_title_widget.dart';
import 'package:onlinecourseapp/src/views/widgets/review_widget.dart';

class MentorCoursePage extends StatefulWidget {
  const MentorCoursePage({super.key});

  @override
  State<MentorCoursePage> createState() => _MentorCoursePageState();
}

class _MentorCoursePageState extends State<MentorCoursePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.containerBG,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                          Strings.mentor,
                          style: AppTheme.pageTitle,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 45,
                ),
                const Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(ImageIconPath.people),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        Strings.tutor1,
                        style: AppTheme.pageTitle,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Column(
                      children: [
                        Text(
                          '10',
                          style: AppTheme.pageTitle,
                        ),
                        Text(
                          Strings.course,
                          style: AppTheme.pageSubTitle,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 1,
                      decoration: const BoxDecoration(
                        color: Colors.black26,
                      ),
                    ),
                    const Column(
                      children: [
                        Text(
                          '2.3K',
                          style: AppTheme.pageTitle,
                        ),
                        Text(
                          Strings.fav,
                          style: AppTheme.pageSubTitle,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 1,
                      decoration: const BoxDecoration(
                        color: Colors.black26,
                      ),
                    ),
                    const Column(
                      children: [
                        Text(
                          '89',
                          style: AppTheme.pageTitle,
                        ),
                        Text(
                          Strings.rew,
                          style: AppTheme.pageSubTitle,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 5),
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                        width: (MediaQuery.of(context).size.width) / 1.099,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: AppColors.lineDec,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: AppColors.containerBG,
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const MentorProfilePage(),
                                    ),
                                  );
                                },
                                child: SizedBox(
                                  height: 80,
                                  width:
                                      (MediaQuery.of(context).size.width) / 3.3,
                                  child: const Center(
                                    child: Text(
                                      'About',
                                      textAlign: TextAlign.center,
                                      style: AppTheme.bttTheme,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    AppColors.gradBlue,
                                    AppColors.gradGreen,
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(7),
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const MentorCoursePage(),
                                    ),
                                  );
                                },
                                child: SizedBox(
                                  height: 80,
                                  width:
                                      (MediaQuery.of(context).size.width) / 3.3,
                                  child: const Center(
                                    child: Text(
                                      Strings.course,
                                      textAlign: TextAlign.center,
                                      style: AppTheme.conText,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                color: AppColors.containerBG,
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const MentorReviewPage(),
                                    ),
                                  );
                                },
                                child: SizedBox(
                                  height: 80,
                                  width:
                                      (MediaQuery.of(context).size.width) / 3.3,
                                  child: const Center(
                                    child: Text(
                                      Strings.rew,
                                      textAlign: TextAlign.center,
                                      style: AppTheme.bttTheme,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 7, 0),
                                child: Image.asset(
                                  ImageIconPath.ui,
                                  height: 90,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const CourseNameWidget(
                                    constring: Strings.uiux,
                                  ),
                                  SizedBox(
                                    width:
                                        (MediaQuery.of(context).size.width) / 2,
                                    child: const CourseTitleWidget(
                                      txtstring: Strings.cname1,
                                    ),
                                  ),
                                  const Row(
                                    children: [
                                      ReviewWidget(
                                        rating: Strings.st1,
                                        rew: Strings.rev1,
                                      ),
                                      SizedBox(
                                        width: 50,
                                      ),
                                      Text(
                                        Strings.pr1,
                                        style: AppTheme.courseTheme,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 7, 0),
                                child: Image.asset(
                                  ImageIconPath.suppch,
                                  height: 90,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const CourseNameWidget(
                                    constring: Strings.uiux,
                                  ),
                                  SizedBox(
                                    width:
                                        (MediaQuery.of(context).size.width) / 2,
                                    child: const CourseTitleWidget(
                                      txtstring: Strings.cname3,
                                    ),
                                  ),
                                  const Row(
                                    children: [
                                      ReviewWidget(
                                        rating: Strings.st2,
                                        rew: Strings.rev2,
                                      ),
                                      SizedBox(
                                        width: 40,
                                      ),
                                      Text(
                                        Strings.pr2,
                                        style: AppTheme.courseTheme,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
