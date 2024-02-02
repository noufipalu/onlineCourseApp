import 'package:flutter/material.dart';
import 'package:onlinecourseapp/src/core/colors/colors.dart';
import 'package:onlinecourseapp/src/core/constants/image_icon_path.dart';
import 'package:onlinecourseapp/src/core/constants/strings.dart';
import 'package:onlinecourseapp/src/core/theme/font_style.dart';
import 'package:onlinecourseapp/src/views/pages/common/change_password_page.dart';
import 'package:onlinecourseapp/src/views/pages/common/check_out/checkout_page.dart';
import 'package:onlinecourseapp/src/views/pages/common/edit_profile_page.dart';
import 'package:onlinecourseapp/src/views/pages/common/home_page.dart';
import 'package:onlinecourseapp/src/views/pages/common/message_page.dart';
import 'package:onlinecourseapp/src/views/pages/common/privacy_policy_page.dart';
import 'package:onlinecourseapp/src/views/pages/common/saved_courses_page.dart';
import 'package:onlinecourseapp/src/views/pages/common/term_cond_page.dart';
import 'package:onlinecourseapp/src/views/widgets/my_profile_widget.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  int currentIndex = 4;
  bool switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.containerBG,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                gradient: LinearGradient(
                  colors: [
                    AppColors.gradBlue,
                    AppColors.gradGreen,
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          Strings.prof,
                          style: AppTheme.conTitle,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          height: 70,
                          width: 70,
                          child: Image.asset(ImageIconPath.user2),
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Michelle Rivera',
                              style: AppTheme.conTitle,
                            ),
                            Text(
                              'mechelle.rivera@example.com',
                              style: AppTheme.contText,
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Colors.white,
                              width: 1,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: InkWell(
                              child: Image.asset(
                                ImageIconPath.edit,
                                height: 25,
                                width: 25,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  MyProfileWidget(
                    image: ImageIconPath.edit,
                    settings: Strings.edit,
                    widget: InkWell(
                        child: Image.asset(
                          ImageIconPath.next,
                          color: Colors.black,
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const EditProfilePage(),
                            ),
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: (MediaQuery.of(context).size.width) / 1.15,
                    height: .5,
                    decoration: const BoxDecoration(
                      color: AppColors.line,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MyProfileWidget(
                    image: ImageIconPath.chpass,
                    settings: Strings.changePswd,
                    widget: InkWell(
                      child: Image.asset(
                        ImageIconPath.next,
                        color: Colors.black,
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const ChangePasswordPage(),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: (MediaQuery.of(context).size.width) / 1.15,
                    height: 0.5,
                    decoration: const BoxDecoration(
                      color: AppColors.line,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MyProfileWidget(
                    image: ImageIconPath.pay,
                    settings: Strings.paymeth,
                    widget: InkWell(
                      child: Image.asset(
                        ImageIconPath.next,
                        color: Colors.black,
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const CheckoutPage(),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: (MediaQuery.of(context).size.width) / 1.15,
                    height: .5,
                    decoration: const BoxDecoration(
                      color: AppColors.line,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MyProfileWidget(
                    image: ImageIconPath.certi,
                    settings: Strings.certi,
                    widget: Image.asset(
                      ImageIconPath.next,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: (MediaQuery.of(context).size.width) / 1.15,
                    height: .5,
                    decoration: const BoxDecoration(
                      color: AppColors.line,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MyProfileWidget(
                    image: ImageIconPath.dark,
                    settings: Strings.darkMode,
                    widget: Switch(
                      value: switchValue,
                      onChanged: (value) {
                        setState(() {
                          switchValue = value;
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: (MediaQuery.of(context).size.width) / 1.15,
                    height: .5,
                    decoration: const BoxDecoration(
                      color: AppColors.line,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MyProfileWidget(
                    image: ImageIconPath.prpol,
                    settings: Strings.prpol,
                    widget: InkWell(
                      child: Image.asset(
                        ImageIconPath.next,
                        color: Colors.black,
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const PrivacyPolicyPage(),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: (MediaQuery.of(context).size.width) / 1.15,
                    height: .5,
                    decoration: const BoxDecoration(
                      color: AppColors.line,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MyProfileWidget(
                    image: ImageIconPath.tc,
                    settings: Strings.termcon,
                    widget: InkWell(
                      child: Image.asset(
                        ImageIconPath.next,
                        color: Colors.black,
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const TermsNdCondPage(),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  InkWell(
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            AppColors.gradBlue,
                            AppColors.gradGreen,
                          ],
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(7),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(ImageIconPath.logout),
                            const SizedBox(
                              width: 8,
                            ),
                            const Text(
                              Strings.logout,
                              style: AppTheme.conText,
                            ),
                          ],
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
