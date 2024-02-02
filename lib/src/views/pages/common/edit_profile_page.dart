import 'package:flutter/material.dart';
import 'package:onlinecourseapp/src/core/colors/colors.dart';
import 'package:onlinecourseapp/src/core/constants/image_icon_path.dart';
import 'package:onlinecourseapp/src/core/constants/strings.dart';
import 'package:onlinecourseapp/src/core/theme/font_style.dart';
import 'package:onlinecourseapp/src/views/widgets/app_button_widget.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.containerBG,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: Image.asset(
                      ImageIconPath.back,
                      height: 25,
                      width: 25,
                    ),
                  ),
                  const Expanded(
                    child: Text(
                      Strings.edit,
                      style: AppTheme.pageTitle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Center(
                child: Stack(
                  children: [
                    Image.asset(
                      ImageIconPath.user2,
                      width: 80,
                      height: 80,
                    ),
                    Positioned(
                      top: 45,
                      right: 2,
                      height: 45,
                      child: Container(
                        height: 27,
                        width: 27,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [AppColors.gradBlue, AppColors.gradGreen],
                          ),
                        ),
                        child: Center(
                          child: InkWell(
                            child: Image.asset(
                              ImageIconPath.edit,
                              width: 18,
                              height: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      cursorHeight: 20,
                      decoration: const InputDecoration(
                        labelText: Strings.name,
                        labelStyle: AppTheme.formTextStyle,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(7),
                          ),
                          borderSide: BorderSide(color: AppColors.line),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(7),
                          ),
                          borderSide: BorderSide(
                            color: AppColors.gradBlue,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      cursorHeight: 20,
                      decoration: const InputDecoration(
                        labelText: Strings.emadd,
                        labelStyle: AppTheme.formTextStyle,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(7),
                          ),
                          borderSide: BorderSide(color: AppColors.line),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(7),
                          ),
                          borderSide: BorderSide(
                            color: AppColors.gradBlue,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      cursorHeight: 20,
                      decoration: const InputDecoration(
                        labelText: Strings.mob,
                        labelStyle: AppTheme.formTextStyle,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(7),
                          ),
                          borderSide: BorderSide(color: AppColors.line),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(7),
                          ),
                          borderSide: BorderSide(
                            color: AppColors.gradBlue,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      cursorHeight: 20,
                      decoration: const InputDecoration(
                        labelText: Strings.address,
                        labelStyle: AppTheme.formTextStyle,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(7),
                          ),
                          borderSide: BorderSide(color: AppColors.line),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(7),
                          ),
                          borderSide: BorderSide(
                            color: AppColors.gradBlue,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(child: SizedBox()),
              AppButtonWidget(
                buttonTitle: Strings.update,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
