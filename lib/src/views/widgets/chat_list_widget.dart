import 'package:flutter/material.dart';
import 'package:onlinecourseapp/src/core/colors/colors.dart';
import 'package:onlinecourseapp/src/core/helpers/date_time_helper.dart';
import 'package:onlinecourseapp/src/core/theme/font_style.dart';

class ChatListWidget extends StatelessWidget {
  const ChatListWidget(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.image,
      required this.lastChatTime,
      required this.unreadCount});

  final String title;
  final String subTitle;
  final String image;
  final DateTime lastChatTime;
  final int unreadCount;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(image),
          radius: 40,
        ),
        title: Text(
          title,
          style: AppTheme.pageSubTitle,
        ),
        subtitle: Text(
          subTitle,
          style: AppTheme.see,
        ),
        trailing: Column(
          children: [
            Text(
              DateTimeHelper.getFormatteddate(lastChatTime),
              style: AppTheme.date,
            ),
            Visibility(
              visible: unreadCount > 0,
              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [AppColors.gradBlue, AppColors.gradGreen],
                  ),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Center(
                  child: Text(
                    '$unreadCount',
                    style: const TextStyle(color: Colors.white),
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
