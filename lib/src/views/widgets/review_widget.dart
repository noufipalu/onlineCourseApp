import 'package:flutter/material.dart';
import 'package:onlinecourseapp/src/core/colors/colors.dart';

class ReviewWidget extends StatefulWidget {
  const ReviewWidget({super.key, required this.rating, required this.rew});
  final String rating;
  final String rew;

  @override
  State<ReviewWidget> createState() => _ReviewWidgetState();
}

class _ReviewWidgetState extends State<ReviewWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star,
          color: AppColors.gold,
        ),
        Text(widget.rating),
        Text(widget.rew)
      ],
    );
  }
}
