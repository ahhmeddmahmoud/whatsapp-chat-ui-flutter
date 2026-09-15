import 'package:fist_project/core/models/message_model.dart';
import 'package:fist_project/core/widgets/utils/app_colors.dart';
import 'package:flutter/material.dart';

class BubbleMessage extends StatelessWidget {
  final Message message;
  const BubbleMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: message.isSender
          ? Alignment.centerRight
          : Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: BoxConstraints(
          maxWidth: MediaQuery.sizeOf(context).width * .75,
        ),
        decoration: BoxDecoration(
          color: message.isSender ? AppColors.darkBlue : AppColors.Green,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
            topLeft: message.isSender ? Radius.circular(16) : Radius.zero,
            topRight: message.isSender ? Radius.zero : Radius.circular(16),
          ),
        ),
        child: Column(
          spacing: 8,
          children: [
            Text(
              message.text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.White,
              ),
            ),
            if (message.imagePath != null)
              Image.asset(message.imagePath!, fit: BoxFit.fill),
          ],
        ),
      ),
    );
  }
}