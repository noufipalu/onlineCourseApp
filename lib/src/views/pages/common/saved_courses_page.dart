import 'package:flutter/material.dart';
import 'package:onlinecourseapp/src/core/colors/colors.dart';
import 'package:onlinecourseapp/src/core/constants/image_icon_path.dart';
import 'package:onlinecourseapp/src/core/constants/strings.dart';
import 'package:onlinecourseapp/src/core/theme/font_style.dart';
import 'package:onlinecourseapp/src/views/pages/common/home_page.dart';
import 'package:onlinecourseapp/src/views/pages/common/message_page.dart';
import 'package:onlinecourseapp/src/views/widgets/course_details_widget.dart';

class SavedCoursesPage extends StatefulWidget {
  const SavedCoursesPage({super.key});

  @override
  State<SavedCoursesPage> createState() => _SavedCoursesPageState();
}

class _SavedCoursesPageState extends State<SavedCoursesPage> {
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
                          Strings.savedcourse,
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
                          builder: (context) => const HomePage(),
                        ),
                      );
                      break;
                    case 2:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SavedCoursesPage(),
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
