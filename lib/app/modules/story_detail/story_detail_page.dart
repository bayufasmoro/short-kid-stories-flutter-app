import 'package:flutter/material.dart';
import 'package:short_kid_stories/app/core/res/app_colors.dart';
import 'package:short_kid_stories/app/data/story_model.dart';
import 'package:short_kid_stories/app/modules/story_detail/widgets/story_detail_widget.dart';

class StoryDetailPage extends StatefulWidget {
  final StoryModel story;

  const StoryDetailPage({super.key, required this.story});

  @override
  State<StoryDetailPage> createState() => _StoryDetailPageState();
}

class _StoryDetailPageState extends State<StoryDetailPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.illusBlue,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: StoryDetailWidget(storyData: widget.story)
      ),
    );
  }
}
