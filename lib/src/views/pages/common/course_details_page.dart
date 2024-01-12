import 'package:flutter/material.dart';
import 'package:onlinecourseapp/src/core/colors/colors.dart';
import 'package:onlinecourseapp/src/core/constants/image_icon_path.dart';
import 'package:onlinecourseapp/src/core/constants/strings.dart';
import 'package:onlinecourseapp/src/core/theme/font_style.dart';
import 'package:onlinecourseapp/src/views/widgets/container_course_name.dart';
import 'package:onlinecourseapp/src/views/widgets/course_title_widget.dart';
import 'package:onlinecourseapp/src/views/widgets/review_widget.dart';

class CourseDetailsPage extends StatefulWidget {
  const CourseDetailsPage({super.key});

  @override
  State<CourseDetailsPage> createState() => _CourseDetailsPageState();
}

class _CourseDetailsPageState extends State<CourseDetailsPage> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.containerBG,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 275,
                    foregroundDecoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(ImageIconPath.ui),
                        opacity: .75,
                      ),
                    ),
                    width: (MediaQuery.of(context).size.width),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20.0,
                    left: 20.0,
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        ImageIconPath.back,
                        height: 25,
                        width: 25,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20.0,
                    right: 20.0,
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        ImageIconPath.favs,
                        height: 25,
                        width: 25,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CourseNameWidget(constring: Strings.uiux),
                        Text(
                          Strings.pr1,
                          style: AppTheme.bttTheme,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const CourseTitleWidget(txtstring: Strings.cname1),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        const ReviewWidget(
                          rating: Strings.st1,
                          rew: Strings.rev1,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Image.asset(
                          ImageIconPath.timer,
                          height: 20,
                          width: 20,
                        ),
                        const Text(Strings.t1),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage(ImageIconPath.people),
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Strings.tutor1,
                              style: AppTheme.pageTitle,
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              Strings.role1,
                              style: AppTheme.pageSubThem,
                            ),
                          ],
                        ),
                        Expanded(child: Container()),
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: Container(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  AppColors.gradGreen,
                                  AppColors.gradBlue,
                                ],
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(7),
                              ),
                            ),
                            child: const Icon(
                              Icons.message,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ExpansionTile(
                      title: const Text("Title"),
                      initiallyExpanded: false,
                      onExpansionChanged: (bool expanding) {
                        setState(() {
                          isExpanded = expanding;
                        });
                      },
                      children: [
                        Text(
                          Strings.exp1,
                          textAlign: TextAlign.justify,
                          maxLines: isExpanded ? null : 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
