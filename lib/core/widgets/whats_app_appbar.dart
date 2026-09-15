import 'package:fist_project/core/widgets/utils/app_assets.dart';
import 'package:fist_project/core/widgets/utils/app_colors.dart';
import 'package:flutter/material.dart';

class WhatsAppAppbar extends StatelessWidget implements PreferredSizeWidget {
  const WhatsAppAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.Green,
      foregroundColor: AppColors.White,
      leadingWidth: 24,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.arrow_back_ios_new_rounded),
      ),

      title: Row(
        spacing: 8,
        children: [
          CircleAvatar(backgroundImage: AssetImage(AppImages.profile)),
          Text(
            "Ahmed Mahmoud",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.call_outlined, color: Colors.white, size: 22),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.videocam_outlined,
            color: Colors.white,
            size: 24,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert, color: Colors.white, size: 22),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56);
}
