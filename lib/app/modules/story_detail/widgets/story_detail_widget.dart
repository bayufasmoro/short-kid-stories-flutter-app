import 'package:flutter/material.dart';

import '../../../core/res/app_colors.dart';
import '../../../core/utils/app_textstyles.dart';
import '../../../data/story_model.dart';

class StoryDetailWidget extends StatefulWidget {
  const StoryDetailWidget({Key? key, required this.storyData}) : super(key: key);

  final StoryModel storyData;

  @override
  State<StoryDetailWidget> createState() => _StoryDetailWidgetState();
}

class _StoryDetailWidgetState extends State<StoryDetailWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: Stack(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: AppColors.illusBlue,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40))),
              ),
              Padding(
                padding: EdgeInsets.only(left: 32, bottom: 16, right: 32),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Image.asset(widget.storyData.image, fit: BoxFit.cover),
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 32),
        Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              widget.storyData.title,
              style: AppTextStyle.size22Bold(color: AppColors.illusDarkBlue),
            )),
        const SizedBox(height: 16),
        Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              widget.storyData.storyId,
              style: AppTextStyle.size14Normal(color: AppColors.illusDarkBlue),
            )),
        const SizedBox(height: 32),
        Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              "~Tamat~",
              style: AppTextStyle.size18Bold(weight: FontWeight.w400, color: AppColors.illusDarkBlue),
              textAlign: TextAlign.center,
            )),
        const SizedBox(height: 32),
      ],
    );
  }
}
