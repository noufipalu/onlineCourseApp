import 'package:flutter/material.dart';
import 'package:onlinecourseapp/src/core/colors/colors.dart';
import 'package:onlinecourseapp/src/core/constants/image_icon_path.dart';
import 'package:onlinecourseapp/src/core/constants/strings.dart';
import 'package:onlinecourseapp/src/core/theme/font_style.dart';
import 'package:onlinecourseapp/src/views/pages/common/login_page.dart';
import 'package:onlinecourseapp/src/views/widgets/common_container_widget.dart';

class OnbordingPage3 extends StatelessWidget {
  const OnbordingPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.containerBG,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ImageIconPath.tutorImage,
              width: MediaQuery.of(context).size.width,
              height: (MediaQuery.of(context).size.height) / 2,
            ),
            CommomContainerWidget(
              titleText1: const Text(
                Strings.onBoard3Title1,
                style: AppTheme.titleTheme,
                textAlign: TextAlign.center,
              ),
              subText1: const Text(
                Strings.onBoardSub1,
                style: AppTheme.subTitleTheme,
                textAlign: TextAlign.center,
              ),
              line: Container(
                padding: const EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 3,
                      width: 10.0,
                      color: AppColors.line,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 3,
                      width: 10.0,
                      color: AppColors.line,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 3,
                      width: 35.0,
                      color: AppColors.gradGreen,
                    ),
                  ],
                ),
              ),
              button1: Container(
                width: (MediaQuery.of(context).size.width) / 2,
                height: 45,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.containerBG),
                  gradient: const LinearGradient(
                    colors: [AppColors.gradBlue, AppColors.gradGreen],
                  ),
                  borderRadius: BorderRadius.circular(7),
                ),
                padding: const EdgeInsets.all(7),
                child: InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        Strings.start,
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Image.asset(
                        ImageIconPath.forwardArrowIcon,
                        width: 20.2,
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
