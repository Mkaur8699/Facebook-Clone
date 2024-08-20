import 'package:flutter/material.dart';
import 'package:myfacebook/common_widget/like_comment_section.dart';
import 'package:myfacebook/common_widget/like_comment_section2.dart';
import 'package:myfacebook/models/video.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Video',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 3,
          color: Colors.grey,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, i) => Column(
              children: [
                // const Padding(padding: EdgeInsets.only(top: 8),),
                ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                videodata[i].name,
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                  onTap: () {},
                                  child: const Text(
                                    "Follow",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue),
                                  )),
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.more_horiz,
                                  color: Colors.grey,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.close_rounded,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            videodata[i].time,
                            style: const TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            videodata[i].space,
                            style: const TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          const Icon(Icons.public),
                        ],
                      ),
                    ],
                  ),
                  leading: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/rich_girl.jpg'),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        videodata[i].videoTitle,
                        style: const TextStyle(fontSize: 15),
                      ),
                    ),
                    YoutubePlayerControllerProvider(
                      controller: YoutubePlayerController.fromVideoId(
                        videoId: videodata[i].videoId,
                        autoPlay: true,
                        params: const YoutubePlayerParams(
                            showControls: true,
                            mute: false,
                            showFullscreenButton: true),
                      ),
                      child: YoutubePlayer(
                        controller: YoutubePlayerController.fromVideoId(
                          params: const YoutubePlayerParams(
                              showControls: true,
                              mute: false,
                              showFullscreenButton: true),
                          autoPlay: true,
                          videoId: videodata[i].videoId,
                        ),
                        aspectRatio: 16/9,
                      ),
                    ),
                  ],
                ),
                const LikeCommentSection(like: "12", comment: "29", share: "2", views: "3"),
                LikeCommentSection2(
                  commentOnPressed: (){},
                  likeOnPressed: (){},
                  sendOnPressed: (){},
                  shareOnPressed: (){},
                ),
                const Divider(thickness: 5,),
              ],
            ),

          ),
        ),
      ],
    );
  }
}
