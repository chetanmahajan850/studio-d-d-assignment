import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:studio_d_d_assignment/common_widgets/mobile_app_bar.dart';
import 'package:studio_d_d_assignment/common_widgets/text_field.dart';
import 'package:studio_d_d_assignment/mobile_view/mobile_post_details_view/presentaion/widgets/post_details_widget.dart';
import 'package:studio_d_d_assignment/model/post_model.dart';
import 'package:studio_d_d_assignment/utilities/constants.dart';
import 'package:studio_d_d_assignment/utilities/images.dart';
import 'package:studio_d_d_assignment/utilities/strings.dart';


class MobilePostDetailsView extends StatefulWidget {
  const MobilePostDetailsView({super.key});

  @override
  State<MobilePostDetailsView> createState() => _MobilePostDetailsViewState();
}

class _MobilePostDetailsViewState extends State<MobilePostDetailsView> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var jsonData = json.decode(Constants.jsonStr);
    var post = Post.fromJson(jsonData);
    return Scaffold(
      resizeToAvoidBottomInset: true, // Set this property to false
      appBar: MobileAppBar(
        title: Strings.title,
        widgets: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Image.asset(
              Images.ic_notification,
              width: 25,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  Images.ic_image,
                  width: 30,
                ),
                Expanded(
                  child: AppTextField(
                    hintText: "댓글을 남겨주세요.",
                    isEnabledDigit: false,
                    isEnabled: true,
                    validator: (String? value) {
                      return null;
                    },
                    textEditingController: textEditingController,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "등록",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: PostDetailsWidget(post: post),
      ),
    );
  }
}
