import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:short_kid_stories/app/data/story_model.dart';

class HomeController {
  Future<List<StoryModel>> getData(BuildContext context) async {
    String data = await DefaultAssetBundle.of(context)
        .loadString("assets/json/stories.json");

    var jsonData = json.decode(data);
    var stories = <StoryModel>[];

    await jsonData.forEach((value) {
      stories.add(StoryModel(
          id: value["id"],
          title: value["title"],
          image: value["image"],
          storyId: value["storyId"]));
    });

    return stories;
  }
}
