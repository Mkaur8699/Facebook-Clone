import 'package:flutter/material.dart';
import 'package:myfacebook/home/post.dart';
import 'package:myfacebook/home/postbar.dart';
import 'package:myfacebook/home/storybar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        PostBar(),
        Divider(
          thickness: 3,
          color: Colors.grey,
        ),
        StoryBar(),
        Divider(
          thickness: 3,
          color: Colors.grey,
        ),
        Posts(),
      ],
    );
  }
}
