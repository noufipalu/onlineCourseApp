import 'package:flutter/material.dart';
import 'package:onlinecourseapp/src/core/colors/colors.dart';
import 'package:onlinecourseapp/src/core/constants/strings.dart';
import 'package:onlinecourseapp/src/core/theme/font_style.dart';
import 'package:onlinecourseapp/src/views/pages/common/home_page.dart';
import 'package:onlinecourseapp/src/views/pages/common/message_page.dart';
import 'package:onlinecourseapp/src/views/pages/common/my_profile_page.dart';
import 'package:onlinecourseapp/src/views/pages/common/saved_courses_page.dart';

class MyCoursesPage extends StatefulWidget {
  const MyCoursesPage({super.key});

  @override
  State<MyCoursesPage> createState() => _MyCoursesPageState();
}

class _MyCoursesPageState extends State<MyCoursesPage> {
  int currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.containerBG,
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Center(
                  child: Text(
                    Strings.courses,
                    style: AppTheme.pageTitle,
                  ),
                ),
                SizedBox(
                  height: 25,
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
                          builder: (context) => const MyCoursesPage(),
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
                          builder: (context) => const MyProfilePage(),
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
