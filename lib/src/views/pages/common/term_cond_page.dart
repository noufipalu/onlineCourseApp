import 'package:flutter/material.dart';
import 'package:onlinecourseapp/src/core/constants/image_icon_path.dart';
import 'package:onlinecourseapp/src/core/constants/strings.dart';
import 'package:onlinecourseapp/src/core/theme/font_style.dart';

class TermsNdCondPage extends StatefulWidget {
  const TermsNdCondPage({super.key});

  @override
  State<TermsNdCondPage> createState() => _TermsNdCondPageState();
}

class _TermsNdCondPageState extends State<TermsNdCondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
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
                      Strings.termcon,
                      style: AppTheme.pageTitle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  Text(
                    Strings.lastupd,
                    style: AppTheme.date,
                  ),
                  Text(
                    Strings.lstupdate,
                    style: AppTheme.date,
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                Strings.lstupdhead,
                style: AppTheme.coursTheme,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                Strings.conditions,
                style: AppTheme.seee,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                Strings.tutAbt,
                style: AppTheme.coursTheme,
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
