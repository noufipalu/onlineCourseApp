import 'package:flutter/material.dart';
import 'package:onlinecourseapp/src/core/colors/colors.dart';
import 'package:onlinecourseapp/src/core/constants/image_icon_path.dart';
import 'package:onlinecourseapp/src/core/constants/strings.dart';
import 'package:onlinecourseapp/src/core/helpers/validation_helpers.dart';
import 'package:onlinecourseapp/src/core/theme/font_style.dart';
import 'package:onlinecourseapp/src/views/pages/common/register_page.dart';
import 'package:onlinecourseapp/src/views/pages/web/forgot_password_page.dart';
import 'package:onlinecourseapp/src/views/widgets/app_button_widget.dart';
import 'package:onlinecourseapp/src/views/widgets/colored_icon_widget.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isFocused = false;
  bool obscurePass = true;
  bool isHovered = false;
  bool isEmail = false;
  late TextStyle labelStyle;

  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _mobFocusNode = FocusNode();
  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController emailOrPhoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController mobController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  void dispose() {
    _mobFocusNode.dispose();
    _emailFocusNode.dispose();
    mobController.dispose();
    emailController.dispose();
    super.dispose();
  }

  void navigateToRegisterPage() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const RegisterPage(),
      ),
    );
  }

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

  void _showActionSheet(BuildContext context) {
    showModalBottomSheet(
      barrierColor: AppColors.conBg,
      backgroundColor: AppColors.containerBG,
      context: context,
      builder: (BuildContext context) {
        return Container(
          width: (MediaQuery.of(context).size.width),
          padding: const EdgeInsets.fromLTRB(15, 5, 20, 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 3,
                width: 35.0,
                color: AppColors.line,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                Strings.fpass,
                style: AppTheme.sheetTheme,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                Strings.select,
                style: AppTheme.subTitleTheme,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: ValidationHelpers.validatePhone,
                      focusNode: _mobFocusNode,
                      controller: mobController,
                      decoration: InputDecoration(
                        labelText: Strings.sms,
                        prefixIcon: Icon(
                          Icons.sms_rounded,
                          color: _mobFocusNode.hasFocus
                              ? AppColors.gradBlue
                              : AppColors.iconColor,
                        ),
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
                      validator: ValidationHelpers.validateEmail,
                      focusNode: _emailFocusNode,
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: Strings.mail,
                        prefixIcon: Icon(
                          Icons.mail_rounded,
                          color: _emailFocusNode.hasFocus
                              ? AppColors.gradBlue
                              : AppColors.iconColor,
                        ),
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
                      height: 25,
                    ),
                    AppButtonWidget(
                      buttonTitle: Strings.send,
                      onPressed: () {
                        _enterOtp(context);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _enterOtp(BuildContext context) {
    showModalBottomSheet(
      barrierColor: AppColors.conBg,
      backgroundColor: AppColors.containerBG,
      context: context,
      builder: (BuildContext context) {
        return Container(
          width: (MediaQuery.of(context).size.width),
          padding: const EdgeInsets.fromLTRB(15, 5, 20, 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 3,
                width: 35.0,
                color: AppColors.line,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                Strings.code,
                style: AppTheme.sheetTheme,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                Strings.codeMsg,
                style: AppTheme.subTitleTheme,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                Strings.emailOrPhone,
                style: AppTheme.btnTextTheme,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              PinCodeTextField(
                appContext: context,
                length: 5,
                pinTheme: PinTheme(
                  inactiveColor: AppColors.iconColor,
                  activeColor: AppColors.gradGreen,
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(7),
                  fieldHeight: 45,
                  fieldWidth: 50,
                ),
                enablePinAutofill: true,
              ),
              const SizedBox(
                height: 7,
              ),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: Strings.resend,
                      style: AppTheme.formHint,
                    ),
                    TextSpan(
                      text: Strings.time,
                      style: AppTheme.logRegStyle,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              AppButtonWidget(
                buttonTitle: Strings.submit,
                onPressed: () {
                  _changePassword(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _changePassword(BuildContext context) {
    showModalBottomSheet(
      barrierColor: AppColors.conBg,
      backgroundColor: AppColors.containerBG,
      context: context,
      builder: (BuildContext context) {
        return Container(
          width: (MediaQuery.of(context).size.width),
          padding: const EdgeInsets.fromLTRB(15, 5, 20, 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 3,
                width: 35.0,
                color: AppColors.line,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                Strings.newPass,
                style: AppTheme.sheetTheme,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                Strings.enterNewPass,
                style: AppTheme.subTitleTheme,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              Form(
                key: _formKey,
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
                        labelText: Strings.pass,
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
                        labelText: Strings.rePass,
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
                      height: 25,
                    ),
                    AppButtonWidget(
                      buttonTitle: Strings.chanPass,
                      onPressed: () {
                        _changedPswdDone(context);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _changedPswdDone(BuildContext context) {
    showModalBottomSheet(
      barrierColor: AppColors.conBg,
      backgroundColor: AppColors.containerBG,
      context: context,
      builder: (BuildContext context) {
        return Container(
          width: (MediaQuery.of(context).size.width),
          padding: const EdgeInsets.fromLTRB(15, 5, 20, 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 3,
                width: 35.0,
                color: AppColors.line,
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  width: 105,
                  height: 105,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.lineDec,
                  ),
                  child: Center(
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [AppColors.gradBlue, AppColors.gradGreen],
                        ),
                      ),
                      child: Image.asset(ImageIconPath.check),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                Strings.pswdUpd,
                style: AppTheme.pageTitle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(50, 5, 50, 20),
                child: Text(
                  Strings.pswdUpdSub,
                  style: AppTheme.btTheme,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              AppButtonWidget(
                buttonTitle: Strings.back,
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
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
              Strings.loginTitle,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: (MediaQuery.of(context).size.width) / 2.5,
                  height: 45,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.line),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          ImageIconPath.google,
                          width: 20.2,
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        const Text(
                          Strings.google,
                          style: AppTheme.btnTheme,
                        ),
                      ],
                    ),
                    onTap: () {},
                  ),
                ),
                const SizedBox(
                  width: 16.0,
                ),
                Container(
                  width: (MediaQuery.of(context).size.width) / 2.5,
                  height: 45,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.line),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          ImageIconPath.fb,
                          width: 20.2,
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        const Text(
                          Strings.fb,
                          style: AppTheme.btnTheme,
                        ),
                      ],
                    ),
                    onTap: () {},
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 1,
                  width: (MediaQuery.of(context).size.width) / 3,
                  color: AppColors.line,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(Strings.orLogin),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 1,
                  width: (MediaQuery.of(context).size.width) / 3,
                  color: AppColors.line,
                ),
              ],
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
                        validator: (value) {
                          if (isEmail) {
                            ValidationHelpers.validateEmail;
                          } else {
                            ValidationHelpers.validatePhone;
                          }
                          return null;
                        },
                        controller: emailOrPhoneController,
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
                          prefixIcon: ImageIconPath.email,
                          prefixIconColor: AppColors.line,
                          labelText: Strings.emailOrPhone,
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
                          prefixIcon: ImageIconPath.pass,
                          prefixIconColor: AppColors.line,
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
                          labelText: Strings.pass,
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
                        height: 5,
                      ),
                      TextButton(
                        style: ButtonStyle(
                          overlayColor:
                              MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.hovered)) {
                                return AppColors.containerBG;
                              }
                              return AppColors.containerBG;
                            },
                          ),
                        ),
                        onPressed: () {
                          if (MediaQuery.of(context).size.width <= 360) {
                            _showActionSheet(context);
                          } else {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ForgotPasswordPage(),
                              ),
                            );
                          }
                        },
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              Strings.fpass,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: AppColors.gradBlue,
                              ),
                            ),
                            Text(
                              "?",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: AppColors.gradBlue,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      AppButtonWidget(
                        buttonTitle: Strings.login,
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
                      builder: (context) => const RegisterPage(),
                    ),
                  );
                },
                child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: Strings.newAcc,
                      ),
                      TextSpan(
                        text: Strings.register,
                        style: AppTheme.logRegStyle,
                      ),
                      TextSpan(
                        text: Strings.now,
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
