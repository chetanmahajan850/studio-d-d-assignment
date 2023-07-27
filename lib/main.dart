import 'package:flutter/material.dart';
import 'package:studio_d_d_assignment/common_view/home_view/presentaion/view/home_view.dart';
import 'package:studio_d_d_assignment/utilities/size_config.dart';
import 'package:studio_d_d_assignment/utilities/theme.dart';

void main() async {
  runApp(StudioDD());
}

class StudioDD extends StatefulWidget {
  @override
  State<StudioDD> createState() => _StudioDDState();
}

class _StudioDDState extends State<StudioDD> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: "studio-d-d",
              theme: AppThemes.lightTheme,
              home: const HomeView(),
            );
          },
        );
      },
    );
  }
}
