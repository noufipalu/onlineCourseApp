import 'package:flutter/material.dart';
import 'package:onlinecourseapp/src/core/colors/colors.dart';
import 'package:onlinecourseapp/src/core/constants/image_icon_path.dart';
import 'package:onlinecourseapp/src/core/constants/strings.dart';
import 'package:onlinecourseapp/src/core/helpers/validation_helpers.dart';
import 'package:onlinecourseapp/src/core/theme/font_style.dart';
import 'package:onlinecourseapp/src/views/pages/common/login_page.dart';
import 'package:onlinecourseapp/src/views/widgets/app_button_widget.dart';
import 'package:onlinecourseapp/src/views/widgets/colored_icon_widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isFocused = false;
  bool obscurePass = true;
  bool isHovered = false;
  bool isEmail = false;
  late TextStyle labelStyle;

  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 25,
            ),
            const Center(
              child: ColoredIconWidget(
                  assetPath: ImageIconPath.education60Icon,
                  startColor: AppColors.gradBlue,
                  endColor: AppColors.gradGreen),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              Strings.register,
              style: AppTheme.pageTitle,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              Strings.loginSub,
              style: AppTheme.subTitleTheme,
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(
              child: Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Column(
                    children: [
                      TextFormField(
                        validator: ValidationHelpers.validateName,
                        controller: nameController,
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
                        validator: ValidationHelpers.validateEmail,
                        controller: emailController,
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
                        validator: ValidationHelpers.validatePhone,
                        controller: phoneController,
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
                        validator: ValidationHelpers.checkIsNullOrEmpty,
                        controller: addressController,
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
                      const SizedBox(
                        height: 25,
                      ),
                      AppButtonWidget(
                        buttonTitle: Strings.register,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  );
                },
                child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: Strings.member,
                      ),
                      TextSpan(
                        text: Strings.login,
                        style: AppTheme.logRegStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
