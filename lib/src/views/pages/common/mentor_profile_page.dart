import 'package:flutter/material.dart';
import 'package:onlinecourseapp/src/core/colors/colors.dart';
import 'package:onlinecourseapp/src/core/constants/image_icon_path.dart';
import 'package:onlinecourseapp/src/core/constants/strings.dart';
import 'package:onlinecourseapp/src/core/theme/font_style.dart';
import 'package:onlinecourseapp/src/views/pages/common/mentor_course_page.dart';
import 'package:onlinecourseapp/src/views/pages/common/mentor_review_page.dart';

class MentorProfilePage extends StatefulWidget {
  const MentorProfilePage({super.key});

  @override
  State<MentorProfilePage> createState() => _MentorProfilePageState();
}

class _MentorProfilePageState extends State<MentorProfilePage> {
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
                                child: SizedBox(
                                  height: 80,
                                  width:
                                      (MediaQuery.of(context).size.width) / 3.3,
                                  child: const Center(
                                    child: Text(
                                      'About',
                                      textAlign: TextAlign.center,
                                      style: AppTheme.conText,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: AppColors.containerBG,
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
                                      style: AppTheme.bttTheme,
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
                      const Text(
                        Strings.tutAbt,
                        style: AppTheme.btTheme,
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: (MediaQuery.of(context).size.width) / 1.099,
                        height: 1,
                        color: AppColors.line,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Social Media',
                        style: AppTheme.pageTitle,
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: AppColors.lineDec,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Image.asset(ImageIconPath.fb),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: AppColors.lineDec,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Image.asset(ImageIconPath.insta),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: AppColors.lineDec,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Image.asset(ImageIconPath.tweet),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: AppColors.lineDec,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Image.asset(ImageIconPath.linkedin),
                      ),
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
