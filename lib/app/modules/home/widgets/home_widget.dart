import 'package:flutter/material.dart';

import '../../../core/res/app_colors.dart';
import '../../../core/res/app_images.dart';
import '../../../core/utils/app_textstyles.dart';
import '../../../data/story_model.dart';
import '../../story_detail/story_detail_page.dart';
import 'home_story_item_widget.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key, required this.stories}) : super(key: key);

  final List<StoryModel> stories;

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 150,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 110,
                decoration: const BoxDecoration(
                  color: AppColors.illusBlue,
                  borderRadius: BorderRadius.only(
                    // bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(20)),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(8, 40, 8, 8),
                // color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          backgroundImage:
                          AssetImage(AppIcons.avatarDeer),
                          radius: 50.0,
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 10),
                              Text("Selamat Datang 👋",
                                  style: AppTextStyle.size16Bold(
                                      color: Colors.white)),
                              Text("Baca Cerita Kesukaanmu Sekarang!",
                                  style: AppTextStyle.size12Normal(
                                      color: Colors.white)),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text("Dongeng Untukmu",
              style: AppTextStyle.size22Bold(
                  color: AppColors.illusDarkBlue)),
        ),
        const SizedBox(height: 16),
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          primary: false,
          shrinkWrap: true,
          itemCount: widget.stories.length,
          padding: const EdgeInsets.all(16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            childAspectRatio: 8 / 10,
            crossAxisSpacing: 16,
          ),
          itemBuilder: (context, index) {
            var storyData = widget.stories[index];

            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          StoryDetailPage(story: storyData)),
                );
              },
              child: HomeStoryItemWidget(storyData: storyData),
            );
          },
        ),
        const SizedBox(height: 16)
      ],
    );
  }
}
