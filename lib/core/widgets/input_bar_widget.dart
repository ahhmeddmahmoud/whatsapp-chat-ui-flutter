import 'package:fist_project/core/widgets/utils/app_colors.dart';
import 'package:flutter/material.dart';

class InputBarWidget extends StatelessWidget {
  const InputBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        spacing: 8,
        children: [
          Expanded(
            child: TextField(
              autocorrect: true,
              cursorColor: AppColors.Green,
              cursorRadius: Radius.circular(16),
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.send,
              style: TextStyle(
                fontSize: 16,
                color: AppColors.White,
                fontWeight: FontWeight.w500,
              ),
              decoration: InputDecoration(
                hintText: "Type a Message ...",
                hintStyle: TextStyle(
                  fontSize: 14,
                  color: AppColors.White,
                  fontWeight: FontWeight.w500,
                ),
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.white54,
                    size: 22,
                  ),
                ),
                suffixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send_outlined,
                        color: Colors.white54,
                        size: 22,
                      ),
                    ),
                  ],
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(64),
                  borderSide: BorderSide(color: AppColors.Green, width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(64),
                  borderSide: BorderSide(color: AppColors.Green, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(64),
                  borderSide: BorderSide(color: AppColors.Green, width: 1),
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            style: IconButton.styleFrom(
              padding: EdgeInsets.all(12),
              backgroundColor: AppColors.Green,
              shape: const CircleBorder(),
            ),
            icon: const Icon(Icons.mic, color: Colors.white, weight: 24),
          ),
        ],
      ),
    );
  }
}