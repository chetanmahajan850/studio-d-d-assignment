import 'package:flutter/material.dart';
import 'package:studio_d_d_assignment/mobile_view/mobile_post_details_view/presentaion/view/mobile_post_details_view.dart';
import 'package:studio_d_d_assignment/utilities/constants.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return MobilePostDetailsView();
  }
}
