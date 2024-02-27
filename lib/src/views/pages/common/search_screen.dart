import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:onlinecourseapp/src/core/colors/colors.dart';
import 'package:onlinecourseapp/src/core/constants/image_icon_path.dart';
import 'package:onlinecourseapp/src/core/constants/strings.dart';
import 'package:onlinecourseapp/src/core/theme/font_style.dart';
import 'package:onlinecourseapp/src/views/widgets/custom_text_form_field.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.containerBG,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        child: Image.asset(
                          ImageIconPath.back,
                          height: 25,
                          width: 25,
                        ),
                      ),
                      const Expanded(
                        child: Center(
                          child: Text(
                            Strings.search,
                            style: AppTheme.pageTitle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Expanded(
                  child: CustomTextFormField(
                    hint: Strings.search,
                    prefixIcon: IconlyBroken.search,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
