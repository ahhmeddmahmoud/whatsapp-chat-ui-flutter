import 'package:fist_project/core/models/message_model.dart';
import 'package:fist_project/core/widgets/bubble_message.dart';
import 'package:fist_project/core/widgets/input_bar_widget.dart';
import 'package:fist_project/core/widgets/utils/app_assets.dart';
import 'package:fist_project/core/widgets/utils/app_colors.dart';
import 'package:fist_project/core/widgets/whats_app_appbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.black,
        image: DecorationImage(
          image: AssetImage(AppImages.background),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,

        appBar: const WhatsAppAppbar(),
        body: Column(
          children: [
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.all(16),
                itemBuilder: (context, index) {
                  return BubbleMessage(message: Message.Messages[index]);
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 16);
                },
                itemCount: Message.Messages.length,
              ),
            ),
            const InputBarWidget(),
          ],
        ),
      ),
    );
  }
}
