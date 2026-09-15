import 'package:fist_project/core/widgets/utils/app_assets.dart';

class Message {
  final String text;
  final String? imagePath;
  final bool isSender;

  const Message({required this.text, this.imagePath, this.isSender = false});

  static List<Message> Messages = [
    Message(text: 'Hello !'),
    Message(text: 'Hello !', isSender: true),
    Message(
      text:
          'Hey! Have you ever thought about how random moments can sometimes turn into the best memories? It’s like the universe loves to surprise us when we least expect it!',
    ),
    Message(
      text: 'what a Great Content Tp learn Flutter',
      imagePath: AppImages.depi,
    ),
    Message(text: 'what a Great Content Tp learn Flutter', isSender: true),
  ];
}
