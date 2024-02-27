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
  String selectedPaymentMethod = '';
  List<String> paymentMethods = ['Credit Card', 'Debit Card', 'PayPal'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.containerBG,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                      Strings.cout,
                      style: AppTheme.pageTitle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
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
                            children: [
                              ReviewWidget(
                                rating: Strings.st1,
                                rew: Strings.rev1,
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Text(
                                Strings.pr1,
                                style: AppTheme.courseTheme,
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
                height: 25,
              ),
              const Text(
                Strings.pay,
                style: AppTheme.sheeTheme,
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (_, __) => const SizedBox(height: 5),
                  itemCount: 10,
                  itemBuilder: (_, index) => const Column(
                    children: [],
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Add new payment method logic here
                },
                child: const Text('Add New Payment Method'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
