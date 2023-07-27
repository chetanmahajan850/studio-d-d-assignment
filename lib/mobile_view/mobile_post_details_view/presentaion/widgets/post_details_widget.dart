import 'package:flutter/material.dart';
import 'package:studio_d_d_assignment/common_widgets/my_buttom.dart';
import 'package:studio_d_d_assignment/model/post_model.dart';
import 'package:studio_d_d_assignment/utilities/app_colors.dart';
import 'package:studio_d_d_assignment/utilities/images.dart';
import '../../../../common_widgets/my_divider.dart';


class PostDetailsWidget extends StatelessWidget {
  final Post post;

  PostDetailsWidget({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: const Color(0xFFFFDCA9),
                  child: Image.asset(
                    Images.ic_placeholder,
                    width: 35,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          post.userDetails.userName,
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
                          post.userDetails.postTime,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          post.userDetails.height,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.0),
                          child: Text("·"),
                        ),
                        Text(
                          post.userDetails.weight,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                SizedBox(
                  height: 25,
                  child: MyButton(
                    voidCallback: () {},
                    buttonTitle: "팔로우",
                    backgroundColor: AppColors.secondaryColor,
                    textColor: AppColors.white,
                    borderColor: AppColors.secondaryColor,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                post.postDetails.title,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(post.postDetails.description),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Wrap(
                spacing: 8,
                runSpacing: -3,
                children: post.postDetails.tag
                    .map((tag) => _buildTagChip(context, tag))
                    .toList(),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            FadeInImage(
              placeholder: const AssetImage(
                Images.ic_empty,
              ),
              // Replace with your placeholder image asset
              image: NetworkImage(post.postDetails.image),
              fit: BoxFit.fill,
              width: double.maxFinite,
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
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
            ),
            const SizedBox(
              height: 8,
            ),
            const MyDivider(),
            const SizedBox(
              height: 16,
            ),
            if (post.postDetails.comments.isNotEmpty)
              ..._buildComments(context),
          ],
        ),
      ),
    );
  }

  Widget _buildTagChip(BuildContext context, String tag) {
    return Chip(
      backgroundColor: Theme.of(context).colorScheme.surface,
      shape: RoundedRectangleBorder(
        side: const BorderSide(width: 0.1), // Adding 1px width border
        borderRadius: BorderRadius.circular(
            20), // You can adjust the border radius as desired
      ),
      label: Text(
        tag,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
          fontWeight: FontWeight.bold,
          color: AppColors.tagCardColor,
        ),
      ),
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
                              if (comment.replies.isNotEmpty)
                                ..._buildReplies(comment.replies, context),
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
