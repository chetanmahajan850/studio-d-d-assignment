import 'package:flutter/material.dart';
import 'package:studio_d_d_assignment/utilities/app_colors.dart';

class BuildTagClipWidget extends StatelessWidget {
  final BuildContext buildContext;
  final String tag;

  const BuildTagClipWidget({super.key, required this.buildContext, required this.tag});

  @override
  Widget build(BuildContext context) {
    return _buildTagChip(buildContext,tag);
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
}
