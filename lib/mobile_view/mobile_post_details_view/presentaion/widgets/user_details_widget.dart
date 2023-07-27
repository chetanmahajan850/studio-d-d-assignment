import 'package:flutter/material.dart';
import 'package:studio_d_d_assignment/common_widgets/my_buttom.dart';
import 'package:studio_d_d_assignment/model/post_model.dart';
import 'package:studio_d_d_assignment/utilities/app_colors.dart';
import 'package:studio_d_d_assignment/utilities/images.dart';

class UserDetailsWidget extends StatelessWidget {
  final Post post;
  final BuildContext buildContext;

  const UserDetailsWidget({super.key, required this.post, required this.buildContext});

  @override
  Widget build(BuildContext context) {
    return _userDetails(buildContext);
  }

  _userDetails(BuildContext context) {
    return Row(
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
                  style: Theme
                      .of(context)
                      .textTheme
                      .headlineSmall,
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
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodySmall,
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  post.userDetails.height,
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodySmall,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.0),
                  child: Text("·"),
                ),
                Text(
                  post.userDetails.weight,
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodySmall,
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
    );
  }

}
