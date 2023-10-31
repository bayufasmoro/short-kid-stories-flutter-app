import 'package:flutter/material.dart';
import 'package:short_kid_stories/app/data/story_model.dart';
import 'package:short_kid_stories/app/modules/home/home_controller.dart';
import 'package:short_kid_stories/app/modules/home/widgets/home_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var controller = HomeController();
  var stories = <StoryModel>[];

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero, () {
      controller.getData(context).then((value) {
        setState(() {
          stories = value;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: HomeWidget(stories: stories)
        ),
      ),
    );
  }
}
