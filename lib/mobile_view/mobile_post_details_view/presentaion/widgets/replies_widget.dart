import 'package:flutter/material.dart';
import 'package:studio_d_d_assignment/model/post_model.dart';
import 'package:studio_d_d_assignment/utilities/images.dart';

class RepliesWidget extends StatelessWidget {
  final List<Reply> replies;
  final BuildContext buildContext;
  final Post post;

  RepliesWidget({super.key, required this.replies, required this.buildContext, required this.post});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _buildReplies(replies, buildContext),
    );
  }

  List<Widget> _buildReplies(List<Reply> replies, BuildContext context) {
    return replies.map((reply) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: const Color(0xFFFFDCA9),
                child: Image.asset(
                  Images.ic_placeholder,
                  width: 35,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Text(
                              reply.userDetails.userName,
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Image.asset(
                                Images.ic_done,
                                width: 15,
                              ),
                            ),
                            Text(
                              reply.userDetails.postTime,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 0.0),
                                child: Text(reply.reply.message),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    Images.ic_heart,
                                    width: 24,
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    post.postDetails.likesTotal.toString(),
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      right: 0,
                      child: Image.asset(
                        Images.ic_horizontal_menu,
                        width: 32,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      );
    }).toList();
  }
}
