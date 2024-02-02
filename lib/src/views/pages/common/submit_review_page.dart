import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:onlinecourseapp/src/core/colors/colors.dart';
import 'package:onlinecourseapp/src/core/constants/image_icon_path.dart';
import 'package:onlinecourseapp/src/core/constants/strings.dart';
import 'package:onlinecourseapp/src/core/theme/font_style.dart';
import 'package:onlinecourseapp/src/views/widgets/app_button_widget.dart';

class SubmitReviewPage extends StatefulWidget {
  const SubmitReviewPage({super.key});

  @override
  State<SubmitReviewPage> createState() => _SubmitReviewPageState();
}

class _SubmitReviewPageState extends State<SubmitReviewPage> {
  double rating = 0.0;
  bool isSubmitting = false;
  double containerHeight = 200;

  TextEditingController commentController = TextEditingController();

  void _feedBackDone(BuildContext context) {
    showModalBottomSheet(
      barrierColor: AppColors.conBg,
      backgroundColor: AppColors.containerBG,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: (MediaQuery.of(context).size.height) / 2.5,
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
                Strings.feedTitle,
                style: AppTheme.pageTitle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(50, 5, 50, 20),
                child: Text(
                  Strings.feedBody,
                  style: AppTheme.btTheme,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              AppButtonWidget(
                buttonTitle: Strings.done,
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SubmitReviewPage(),
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
    Color gradientStart =
        isSubmitting == true ? AppColors.gradBlue : AppColors.line;
    Color gradientEnd =
        isSubmitting == true ? AppColors.gradGreen : AppColors.line;
    Color textColor = isSubmitting == true ? Colors.white : Colors.black;
    return Scaffold(
      backgroundColor: AppColors.containerBG,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                      Strings.rew,
                      style: AppTheme.pageTitle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Image.asset(ImageIconPath.ui),
              const SizedBox(
                height: 10,
              ),
              const Text(
                Strings.cname1,
                style: AppTheme.sheeTheme,
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    foregroundImage: AssetImage(ImageIconPath.user1),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Column(
                    children: [
                      Text(
                        Strings.tutor1,
                        style: AppTheme.bttTheme,
                      ),
                      Text(
                        Strings.role1,
                        style: AppTheme.btnTextTheme,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                Strings.rating,
                style: AppTheme.coursTheme,
              ),
              RatingBar.builder(
                initialRating: 0,
                minRating: 1,
                direction: Axis.horizontal,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: AppColors.gold,
                ),
                onRatingUpdate: (rating) {
                  setState(() {
                    rating = rating;
                    isSubmitting = true;
                  });
                },
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: containerHeight,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.line,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: TextField(
                    controller: commentController,
                    maxLines: null,
                    decoration: const InputDecoration(
                      hintText: Strings.addCmnt,
                      border: InputBorder.none,
                      focusColor: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: Container(
                      height: 50,
                      width: (MediaQuery.of(context).size.width) / 2.25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.line,
                      ),
                      child: const Center(
                        child: Text(
                          Strings.cancel,
                          style: AppTheme.coursTheme,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      height: 50,
                      width: (MediaQuery.of(context).size.width) / 2.25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: LinearGradient(
                          colors: [gradientStart, gradientEnd],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          Strings.submit,
                          style: TextStyle(
                            color: textColor,
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    onTap: () {
                      _feedBackDone(context);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
