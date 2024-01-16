import 'package:flutter/material.dart';
import 'package:onlinecourseapp/src/core/colors/colors.dart';
import 'package:onlinecourseapp/src/core/theme/font_style.dart';

class MentorReviewWidget extends StatelessWidget {
  const MentorReviewWidget({
    super.key,
    required this.image,
    required this.name,
    required this.date,
    required this.rew,
    required this.rating,
  });
  final double rating;
  final AssetImage image;
  final String name;
  final String date;
  final String rew;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  backgroundImage: image,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: AppTheme.bttTheme,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (int i = 0; i < 5; i++)
                        i < rating
                            ? const Icon(
                                Icons.star,
                                color: AppColors.gold,
                              )
                            : const Icon(
                                Icons.star_border,
                                color: Colors.grey,
                              ),
                      const SizedBox(
                        width: 90,
                      ),
                      Text(
                        date,
                        textAlign: TextAlign.right,
                        style: AppTheme.date,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            rew,
            style: AppTheme.subTitleTheme,
          ),
        ],
      ),
    );
  }
}
