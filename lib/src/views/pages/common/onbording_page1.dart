import 'package:flutter/material.dart';
import 'package:onlinecourseapp/src/core/colors/colors.dart';
import 'package:onlinecourseapp/src/core/constants/image_icon_path.dart';
import 'package:onlinecourseapp/src/core/constants/strings.dart';
import 'package:onlinecourseapp/src/core/theme/font_style.dart';
import 'package:onlinecourseapp/src/views/pages/common/onbording_page2.dart';
import 'package:onlinecourseapp/src/views/widgets/common_container_widget.dart';

class OnbordingPage1 extends StatelessWidget {
  const OnbordingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.containerBG,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset(
              ImageIconPath.learningImage,
              width: MediaQuery.of(context).size.width,
              height: (MediaQuery.of(context).size.height) / 2,
            ),
            CommomContainerWidget(
              titleText1: const Text(
                Strings.onBoardTitle1,
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
                      width: 35.0,
                      color: AppColors.gradGreen,
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
                      width: 10.0,
                      color: AppColors.line,
                    ),
                  ],
                ),
              ),
              button1: Container(
                width: (MediaQuery.of(context).size.width) / 2,
                height: 45,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.containerBG),
                  color: AppColors.containerBG,
                  borderRadius: BorderRadius.circular(7),
                ),
                padding: const EdgeInsets.fromLTRB(7, 7, 0, 7),
                child: InkWell(
                  child: const Text(
                    Strings.skip,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black87),
                  ),
                  onTap: () {},
                ),
              ),
              button2: Container(
                width: (MediaQuery.of(context).size.width) / 2,
                height: 45,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.containerBG),
                  gradient: const LinearGradient(
                    colors: [AppColors.gradBlue, AppColors.gradGreen],
                  ),
                  borderRadius: BorderRadius.circular(7),
                ),
                padding: const EdgeInsets.fromLTRB(0, 7, 7, 7),
                child: InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        Strings.next,
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
                        builder: (context) => const OnbordingPage2(),
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
