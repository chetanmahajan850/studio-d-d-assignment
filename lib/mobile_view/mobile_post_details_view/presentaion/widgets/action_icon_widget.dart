import 'package:flutter/material.dart';
import 'package:studio_d_d_assignment/model/post_model.dart';
import 'package:studio_d_d_assignment/utilities/images.dart';

class ActionIconWidget extends StatelessWidget {
  final Post post;
  final BuildContext buildContext;

  const ActionIconWidget(
      {super.key, required this.post, required this.buildContext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
      child: Row(
        children: [
          Image.asset(
            Images.ic_heart,
            width: 24,
          ),
          const SizedBox(width: 4),
          Text(
            post.postDetails.likesTotal.toString(),
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(width: 8),
          Image.asset(
            Images.ic_message,
            width: 32,
          ),
          const SizedBox(width: 4),
          Text(
            post.postDetails.messageTotal.toString(),
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(width: 8),
          Image.asset(
            Images.ic_save,
            width: 32,
          ),
          const SizedBox(width: 8),
          Image.asset(
            Images.ic_horizontal_menu,
            width: 32,
          ),
        ],
      ),
    );
  }
}
