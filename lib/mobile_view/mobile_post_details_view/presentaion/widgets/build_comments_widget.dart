import 'package:flutter/material.dart';
import 'package:studio_d_d_assignment/mobile_view/mobile_post_details_view/presentaion/widgets/replies_widget.dart';
import 'package:studio_d_d_assignment/model/post_model.dart';
import 'package:studio_d_d_assignment/utilities/images.dart';

class BuildCommentsWidget extends StatelessWidget {
  final Post post;
  final BuildContext buildContext;

  const BuildCommentsWidget({super.key, required this.post, required this.buildContext});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: _buildComments(buildContext),
    );
  }

  List<Widget> _buildComments(BuildContext context) {
    return post.postDetails.comments.map((comment) {
      return Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Column(
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
                        children: [
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Text(
                                post.userDetails.userName,
                                style:
                                Theme.of(context).textTheme.headlineSmall,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Image.asset(
                                  Images.ic_done,
                                  width: 15,
                                ),
                              ),
                              Text(
                                post.userDetails.postTime,
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                const EdgeInsets.symmetric(vertical: 16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      comment.comment.message,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          Images.ic_heart,
                                          width: 24,
                                        ),
                                        const SizedBox(width: 4),
                                        Text(
                                          post.postDetails.likesTotal
                                              .toString(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall,
                                        ),
                                        const SizedBox(width: 8),
                                        Image.asset(
                                          Images.ic_message,
                                          width: 32,
                                        ),
                                        const SizedBox(width: 4),
                                        Text(
                                          post.postDetails.messageTotal
                                              .toString(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              if (comment.replies.isNotEmpty) ...[
                                RepliesWidget(
                                  replies: comment.replies,
                                  buildContext: buildContext,
                                  post: post,
                                )
                              ],
                            ],
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
        ),
      );
    }).toList();
  }
}
