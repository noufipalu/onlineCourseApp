import 'package:flutter/material.dart';
import 'package:onlinecourseapp/src/core/colors/colors.dart';

class ChatMessage extends StatelessWidget {
  const ChatMessage({super.key, required this.text, required this.isSentByMe});

  final String text;
  final bool isSentByMe;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      child: Row(
        mainAxisAlignment:
            isSentByMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Container(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
            margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
            decoration: BoxDecoration(
              color: isSentByMe ? AppColors.gradGreen : AppColors.conBg,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Text(
              text,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
