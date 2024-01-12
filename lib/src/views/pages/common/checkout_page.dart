import 'package:flutter/material.dart';
import 'package:onlinecourseapp/src/core/colors/colors.dart';
import 'package:onlinecourseapp/src/core/constants/image_icon_path.dart';
import 'package:onlinecourseapp/src/core/constants/strings.dart';
import 'package:onlinecourseapp/src/core/theme/font_style.dart';
import 'package:onlinecourseapp/src/views/widgets/container_course_name.dart';
import 'package:onlinecourseapp/src/views/widgets/course_title_widget.dart';
import 'package:onlinecourseapp/src/views/widgets/review_widget.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.containerBG,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      ImageIconPath.back,
                      height: 25,
                      width: 25,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Expanded(
                      child: Text(
                        Strings.cout,
                        textAlign: TextAlign.center,
                        style: AppTheme.pageTitle,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 7, 0),
                          child: Image.asset(
                            ImageIconPath.ui,
                            height: 90,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CourseNameWidget(
                              constring: Strings.uiux,
                            ),
                            SizedBox(
                              width: (MediaQuery.of(context).size.width) / 2,
                              child: const CourseTitleWidget(
                                txtstring: Strings.cname1,
                              ),
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ReviewWidget(
                                  rating: Strings.st1,
                                  rew: Strings.rev1,
                                ),
                                Text(
                                  Strings.pr1,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  Strings.pay,
                ),
                Column(
                  children: [
                    CheckboxListTile(
                      title: const Text(Strings.master),
                      subtitle: const Text('xxxx xxxx xxxx xxxx'),
                      secondary: Image.asset(
                        ImageIconPath.masterCard,
                        height: 25,
                        width: 25,
                      ),
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
