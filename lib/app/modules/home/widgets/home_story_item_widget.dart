import 'package:flutter/material.dart';
import 'package:short_kid_stories/app/data/story_model.dart';

import '../../../core/res/app_colors.dart';
import '../../../core/utils/app_textstyles.dart';

class HomeStoryItemWidget extends StatefulWidget {
  const HomeStoryItemWidget({Key? key, required this.storyData}) : super(key: key);

  final StoryModel storyData;

  @override
  State<HomeStoryItemWidget> createState() => _HomeStoryItemWidgetState();
}

class _HomeStoryItemWidgetState extends State<HomeStoryItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: AppColors.illusDarkBlue.withOpacity(0.2),
            spreadRadius: 4,
            blurRadius: 8,
            offset: const Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                clipBehavior: Clip.antiAlias,
                child: Image.asset(widget.storyData.image, fit: BoxFit.cover)),
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 36,
            child: Center(
              child: Text(
                widget.storyData.title,
                style: AppTextStyle.size14Bold(color: AppColors.illusDarkBlue),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
