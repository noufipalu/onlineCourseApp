import 'package:flutter/material.dart';
import 'package:onlinecourseapp/src/core/colors/colors.dart';

class AppButtonWidget extends StatelessWidget {
  const AppButtonWidget({
    Key? key,
    required this.buttonTitle,
    required this.onPressed,
  }) : super(key: key);

  final String buttonTitle;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (MediaQuery.of(context).size.width) / 1.10,
      height: 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          ),
          backgroundColor: AppColors.gradGreen,
          disabledForegroundColor: AppColors.gradBlue,
        ),
        onPressed: () {
          onPressed();
        },
        child: Text(
          buttonTitle,
          style: const TextStyle(color: AppColors.containerBG),
        ),
      ),
    );
  }
}
