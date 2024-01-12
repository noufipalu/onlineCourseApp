import 'package:flutter/material.dart';
import 'package:onlinecourseapp/src/core/colors/colors.dart';
import 'package:onlinecourseapp/src/core/constants/image_icon_path.dart';
import 'package:onlinecourseapp/src/views/widgets/colored_icon_widget.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Center(
              child: ColoredIconWidget(
                  assetPath: ImageIconPath.education60Icon,
                  startColor: AppColors.gradBlue,
                  endColor: AppColors.gradGreen),
            ),
          ],
        ),
      ),
    );
  }
}
