import 'package:flutter/material.dart';
import 'package:onlinecourseapp/src/core/colors/colors.dart';
import 'package:onlinecourseapp/src/core/constants/image_icon_path.dart';
import 'package:onlinecourseapp/src/core/constants/strings.dart';
import 'package:onlinecourseapp/src/core/theme/font_style.dart';
import 'package:onlinecourseapp/src/views/widgets/app_button_widget.dart';

class SelectCategoryPage extends StatefulWidget {
  const SelectCategoryPage({
    super.key,
  });

  @override
  State<SelectCategoryPage> createState() => _SelectCategoryPageState();
}

class _SelectCategoryPageState extends State<SelectCategoryPage> {
  @override
  Widget build(BuildContext context) {
    bool isClicked = false;
    Color gradientStart =
        isClicked == true ? AppColors.gradBlue : AppColors.lineDec;
    Color gradientEnd =
        isClicked == true ? AppColors.gradGreen : AppColors.lineDec;
    Color textColor = isClicked == true ? Colors.white : Colors.black;
    return Scaffold(
      backgroundColor: AppColors.containerBG,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                Strings.interest,
                style: AppTheme.titleTheme,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                Strings.choose,
                style: AppTheme.formTextStyle,
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: LinearGradient(
                          colors: [
                            gradientStart,
                            gradientEnd,
                          ],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            ImageIconPath.design,
                            height: 30,
                            width: 30,
                          ),
                          Text(
                            Strings.design,
                            style: TextStyle(color: textColor),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        isClicked = true;
                      });
                    },
                  ),
                  InkWell(
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: LinearGradient(
                          colors: [
                            gradientStart,
                            gradientEnd,
                          ],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            ImageIconPath.design,
                            height: 30,
                            width: 30,
                          ),
                          Text(
                            Strings.design,
                            style: TextStyle(color: textColor),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        isClicked = true;
                      });
                    },
                  ),
                  InkWell(
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: LinearGradient(
                          colors: [
                            gradientStart,
                            gradientEnd,
                          ],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            ImageIconPath.design,
                            height: 30,
                            width: 30,
                          ),
                          Text(
                            Strings.design,
                            style: TextStyle(color: textColor),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        isClicked = true;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: LinearGradient(
                          colors: [
                            gradientStart,
                            gradientEnd,
                          ],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            ImageIconPath.design,
                            height: 30,
                            width: 30,
                          ),
                          Text(
                            Strings.design,
                            style: TextStyle(color: textColor),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        isClicked = true;
                      });
                    },
                  ),
                  InkWell(
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: LinearGradient(
                          colors: [
                            gradientStart,
                            gradientEnd,
                          ],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            ImageIconPath.design,
                            height: 30,
                            width: 30,
                          ),
                          Text(
                            Strings.design,
                            style: TextStyle(color: textColor),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        isClicked = true;
                      });
                    },
                  ),
                  InkWell(
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: LinearGradient(
                          colors: [
                            gradientStart,
                            gradientEnd,
                          ],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            ImageIconPath.design,
                            height: 30,
                            width: 30,
                          ),
                          Text(
                            Strings.design,
                            style: TextStyle(color: textColor),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        isClicked = true;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: LinearGradient(
                          colors: [
                            gradientStart,
                            gradientEnd,
                          ],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            ImageIconPath.design,
                            height: 30,
                            width: 30,
                          ),
                          Text(
                            Strings.design,
                            style: TextStyle(color: textColor),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        isClicked = true;
                      });
                    },
                  ),
                  InkWell(
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: LinearGradient(
                          colors: [
                            gradientStart,
                            gradientEnd,
                          ],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            ImageIconPath.design,
                            height: 30,
                            width: 30,
                          ),
                          Text(
                            Strings.design,
                            style: TextStyle(color: textColor),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        isClicked = true;
                      });
                    },
                  ),
                  InkWell(
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: LinearGradient(
                          colors: [
                            gradientStart,
                            gradientEnd,
                          ],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            ImageIconPath.design,
                            height: 30,
                            width: 30,
                          ),
                          Text(
                            Strings.design,
                            style: TextStyle(color: textColor),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        isClicked = true;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: LinearGradient(
                          colors: [
                            gradientStart,
                            gradientEnd,
                          ],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            ImageIconPath.design,
                            height: 30,
                            width: 30,
                          ),
                          Text(
                            Strings.design,
                            style: TextStyle(color: textColor),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        isClicked = true;
                      });
                    },
                  ),
                  InkWell(
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: LinearGradient(
                          colors: [
                            gradientStart,
                            gradientEnd,
                          ],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            ImageIconPath.design,
                            height: 30,
                            width: 30,
                          ),
                          Text(
                            Strings.design,
                            style: TextStyle(color: textColor),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        isClicked = true;
                      });
                    },
                  ),
                  InkWell(
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: LinearGradient(
                          colors: [
                            gradientStart,
                            gradientEnd,
                          ],
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            ImageIconPath.design,
                            height: 30,
                            width: 30,
                          ),
                          Text(
                            Strings.design,
                            style: TextStyle(color: textColor),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        isClicked = true;
                      });
                    },
                  ),
                ],
              ),
              Expanded(
                child: Container(),
              ),
              AppButtonWidget(buttonTitle: Strings.finish, onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
