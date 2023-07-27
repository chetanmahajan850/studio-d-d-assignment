import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:studio_d_d_assignment/utilities/app_colors.dart';
import 'package:studio_d_d_assignment/utilities/images.dart';

class MobileAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor = Colors.red;
  final String title;
  final List<Widget> widgets;

  const MobileAppBar({Key? key, required this.title, required this.widgets})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Theme.of(context).iconTheme.color),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Theme.of(context).textTheme.bodySmall?.color,
        ),
        onPressed: () {},
      ),
      title: Text(
        title,
        style: Theme.of(context)
            .appBarTheme
            .titleTextStyle!
            .copyWith(fontSize: 20),
      ),
      centerTitle: true,
      actions: widgets,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
