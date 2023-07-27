import 'package:flutter/material.dart';
import 'package:studio_d_d_assignment/common_widgets/my_buttom.dart';
import 'package:studio_d_d_assignment/mobile_view/mobile_post_details_view/presentaion/widgets/action_icon_widget.dart';
import 'package:studio_d_d_assignment/mobile_view/mobile_post_details_view/presentaion/widgets/build_comments_widget.dart';
import 'package:studio_d_d_assignment/mobile_view/mobile_post_details_view/presentaion/widgets/build_tag_chip_wiget.dart';
import 'package:studio_d_d_assignment/mobile_view/mobile_post_details_view/presentaion/widgets/replies_widget.dart';
import 'package:studio_d_d_assignment/model/post_model.dart';
import 'package:studio_d_d_assignment/utilities/app_colors.dart';
import 'package:studio_d_d_assignment/utilities/images.dart';
import '../../../../common_widgets/my_divider.dart';
import 'user_details_widget.dart';

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
            UserDetailsWidget(post: post,buildContext: context,),
            const SizedBox(
              height: 8,
            ),
            _postDetails(context),
            ActionIconWidget(post: post,buildContext: context,),
            const SizedBox(
              height: 8,
            ),
            const MyDivider(),
            const SizedBox(
              height: 16,
            ),
            if (post.postDetails.comments.isNotEmpty) ...[
              BuildCommentsWidget(
                post: post,
                buildContext: context,
              ),
            ],
          ],
        ),
      ),
    );
  }

  _postDetails(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            post.postDetails.title,
            style: Theme
                .of(context)
                .textTheme
                .headlineSmall,
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
                .map((tag) =>
                BuildTagClipWidget(
                  buildContext: context,
                  tag: tag,
                ))
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
      ],
    );
  }

}
