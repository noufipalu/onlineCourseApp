import 'package:flutter/material.dart';
import 'package:onlinecourseapp/src/core/colors/colors.dart';
import 'package:onlinecourseapp/src/core/constants/image_icon_path.dart';
import 'package:onlinecourseapp/src/views/pages/common/onbording_page1.dart';
import 'package:onlinecourseapp/src/views/widgets/colored_icon_widget.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const OnbordingPage1(),
        ),
      );
    });

    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: ColoredIconWidget(
            assetPath: ImageIconPath.education60Icon,
            startColor: AppColors.gradBlue,
            endColor: AppColors.gradGreen,
          ),
        ),
      ),
    );
  }
}
