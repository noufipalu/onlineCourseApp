import 'package:flutter/material.dart';
import 'package:onlinecourseapp/src/core/colors/colors.dart';
import 'package:onlinecourseapp/src/core/constants/image_icon_path.dart';
import 'package:onlinecourseapp/src/core/constants/strings.dart';
import 'package:onlinecourseapp/src/core/theme/font_style.dart';
import 'package:onlinecourseapp/src/views/pages/common/featured_course_page.dart';
import 'package:onlinecourseapp/src/views/pages/common/message_page.dart';
import 'package:onlinecourseapp/src/views/pages/common/saved_courses_page.dart';
import 'package:onlinecourseapp/src/views/widgets/container_course_name.dart';
import 'package:onlinecourseapp/src/views/widgets/course_details_widget.dart';
import 'package:onlinecourseapp/src/views/widgets/course_title_widget.dart';
import 'package:onlinecourseapp/src/views/widgets/review_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.containerBG,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 150,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [AppColors.gradGreen, AppColors.gradBlue],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            children: [
                              const Text(
                                Strings.welcome,
                                style: AppTheme.contText,
                              ),
                              Image.asset(
                                'assets/icons/wavingHand.png',
                                height: 25,
                                width: 25,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  Strings.startLearn,
                                  style: AppTheme.conTitle,
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      color: AppColors.containerBG,
                                      onPressed: () {},
                                      icon: ImageIconPath.notif,
                                    ),
                                    IconButton(
                                      color: AppColors.containerBG,
                                      onPressed: () {},
                                      icon: Image.asset(
                                        ImageIconPath.adjust,
                                        height: 25,
                                        width: 25,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 120,
                    left: 50,
                    right: 50,
                    height: 45,
                    child: SearchAnchor(
                      builder:
                          (BuildContext context, SearchController controller) {
                        return SearchBar(
                          controller: controller,
                          onTap: () {
                            controller.openView();
                          },
                          onChanged: (_) {
                            controller.openView();
                          },
                          leading: ImageIconPath.search,
                        );
                      },
                      suggestionsBuilder:
                          (BuildContext context, SearchController controller) {
                        return List.empty();
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      Strings.explore,
                      style: AppTheme.sheetTheme,
                    ),
                    InkWell(
                      child: Text(
                        Strings.see,
                        style: AppTheme.see,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 10, 25, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white60,
                        shape: BoxShape.rectangle,
                      ),
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      AppColors.gradBlue,
                                      AppColors.gradGreen
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(7),
                                  ),
                                ),
                                child: Image.asset(
                                  ImageIconPath.design,
                                  color: AppColors.containerBG,
                                ),
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              const Column(
                                children: [
                                  Text(
                                    Strings.design,
                                  ),
                                  Text(Strings.cour1)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white60,
                        shape: BoxShape.rectangle,
                      ),
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      AppColors.gradBlue,
                                      AppColors.gradGreen
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(7),
                                  ),
                                ),
                                child: Image.asset(
                                  ImageIconPath.goal,
                                  color: AppColors.containerBG,
                                ),
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              const Column(
                                children: [
                                  Text(
                                    Strings.buss,
                                  ),
                                  Text(Strings.cour2)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 10, 25, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white60,
                        shape: BoxShape.rectangle,
                      ),
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      AppColors.gradBlue,
                                      AppColors.gradGreen
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(7),
                                  ),
                                ),
                                child: Image.asset(
                                  ImageIconPath.code,
                                  height: 10,
                                  width: 10,
                                  color: AppColors.containerBG,
                                ),
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              const Column(
                                children: [
                                  Text(
                                    Strings.it,
                                  ),
                                  Text(Strings.cour3)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white60,
                        shape: BoxShape.rectangle,
                      ),
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      AppColors.gradBlue,
                                      AppColors.gradGreen
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(7),
                                  ),
                                ),
                                child: Image.asset(
                                  ImageIconPath.chart,
                                  height: 10,
                                  width: 10,
                                  color: AppColors.containerBG,
                                ),
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              const Column(
                                children: [
                                  Text(
                                    Strings.market,
                                  ),
                                  Text(Strings.cour4)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      Strings.featured,
                      style: AppTheme.sheetTheme,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FeaturedCoursePage(),
                          ),
                        );
                      },
                      child: const Text(
                        Strings.see,
                        style: AppTheme.see,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                child: SizedBox(
                  height: 350,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 5, top: 0, right: 5, left: 15),
                        child: Container(
                          height: 320,
                          width: (MediaQuery.of(context).size.width) / 1.25,
                          decoration: BoxDecoration(
                            color: Colors.white60,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 3),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                  image: AssetImage(ImageIconPath.ui),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                CourseNameWidget(constring: Strings.uiux),
                                SizedBox(
                                  height: 7,
                                ),
                                CourseTitleWidget(txtstring: Strings.cname1),
                                SizedBox(
                                  height: 7,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ReviewWidget(
                                      rating: Strings.st1,
                                      rew: Strings.rev1,
                                    ),
                                    Text(
                                      Strings.pr1,
                                      style: AppTheme.bttTheme,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const CourseDetailsWidget(
                        courseimage: AssetImage(ImageIconPath.suppch),
                        constring: Strings.bussman,
                        txtstring: Strings.cname2,
                        price: Strings.pr2,
                        rating: Strings.st2,
                        rew: Strings.rev2,
                      ),
                      const CourseDetailsWidget(
                        courseimage: AssetImage(ImageIconPath.uides),
                        constring: Strings.uiux,
                        txtstring: Strings.cname1,
                        price: Strings.pr1,
                        rating: Strings.st1,
                        rew: Strings.rev1,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: (MediaQuery.of(context).size.width < 640)
          ? BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: (index) {
                setState(() {
                  currentIndex = index;

                  switch (index) {
                    case 0:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                      break;
                    case 1:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SavedCoursesPage(),
                        ),
                      );
                      break;
                    case 2:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                      break;
                    case 3:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MessagePage(),
                        ),
                      );
                      break;
                    case 4:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                      break;
                    default:
                  }
                });
              },
              type: BottomNavigationBarType.fixed,
              unselectedItemColor: AppColors.iconColor,
              selectedItemColor: AppColors.gradGreen,
              iconSize: 23,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: Strings.home,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.cast_for_education),
                  label: Strings.course,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.save),
                  label: Strings.favs,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.message),
                  label: Strings.msgs,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.supervised_user_circle_outlined),
                  label: Strings.user,
                ),
              ],
            )
          : null,
    );
  }
}
