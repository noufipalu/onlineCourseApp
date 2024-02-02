import 'package:flutter/material.dart';
import 'package:onlinecourseapp/src/core/colors/colors.dart';
import 'package:onlinecourseapp/src/core/constants/image_icon_path.dart';
import 'package:onlinecourseapp/src/core/constants/strings.dart';
import 'package:onlinecourseapp/src/core/helpers/validation_helpers.dart';
import 'package:onlinecourseapp/src/core/theme/font_style.dart';
import 'package:onlinecourseapp/src/views/widgets/app_button_widget.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  bool isFocused = false;
  bool obscurePass = true;
  bool isHovered = false;
  bool isEmail = false;
  late TextStyle labelStyle;
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (isHovered == true) {
      labelStyle = const TextStyle(
        backgroundColor: Colors.transparent,
      );
    }
    labelStyle = const TextStyle(
      color: AppColors.line,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.containerBG,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
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
                      Strings.chanPass,
                      style: AppTheme.pageTitle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      validator: ValidationHelpers.validatePassword,
                      controller: passwordController,
                      cursorHeight: 20,
                      onTap: () {
                        setState(() {
                          isFocused = true;
                          labelStyle = const TextStyle(
                            color: AppColors.gradBlue,
                          );
                        });
                      },
                      onFieldSubmitted: (value) {
                        setState(() {
                          isFocused = false;
                          labelStyle = const TextStyle(
                            color: AppColors.line,
                          );
                        });
                      },
                      obscureText: obscurePass,
                      decoration: InputDecoration(
                        suffixIconColor: AppColors.iconColor,
                        suffixIcon: IconButton(
                          icon: obscurePass
                              ? ImageIconPath.passNotClick
                              : ImageIconPath.passOnClick,
                          onPressed: () {
                            setState(() {
                              obscurePass = !obscurePass;
                            });
                          },
                        ),
                        labelText: Strings.newpas,
                        labelStyle: AppTheme.formTextStyle,
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(7),
                          ),
                          borderSide: BorderSide(color: AppColors.line),
                        ),
                        border: const OutlineInputBorder(
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
                      validator: ValidationHelpers.validatePassword,
                      controller: confirmPasswordController,
                      cursorHeight: 20,
                      onTap: () {
                        setState(() {
                          isFocused = true;
                          labelStyle = const TextStyle(
                            color: AppColors.gradBlue,
                          );
                        });
                      },
                      onFieldSubmitted: (value) {
                        setState(() {
                          isFocused = false;
                          labelStyle = const TextStyle(
                            color: AppColors.line,
                          );
                        });
                      },
                      obscureText: obscurePass,
                      decoration: InputDecoration(
                        suffixIconColor: AppColors.iconColor,
                        suffixIcon: IconButton(
                          icon: obscurePass
                              ? ImageIconPath.passNotClick
                              : ImageIconPath.passOnClick,
                          onPressed: () {
                            setState(() {
                              obscurePass = !obscurePass;
                            });
                          },
                        ),
                        labelText: Strings.confpass,
                        labelStyle: AppTheme.formTextStyle,
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(7),
                          ),
                          borderSide: BorderSide(color: AppColors.line),
                        ),
                        border: const OutlineInputBorder(
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
              const Expanded(child: SizedBox()),
              AppButtonWidget(
                buttonTitle: Strings.save,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
