import 'package:flutter/material.dart';
import 'package:myfacebook/common_widget/like_comment_section2.dart';
import 'package:myfacebook/models/postmodel.dart';

import '../common_widget/like_comment_section.dart';

class Posts extends StatelessWidget {
  const Posts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var i = 0; i < postdata.length; i++)...[
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(postdata[i].avatarimage),
                  )),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          postdata[i].name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Follow",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Wrap(
                      spacing: 5.0,
                      children: [
                        Text(
                          postdata[i].time,
                          style: const TextStyle(
                            fontSize: 15.0, color: Colors.grey,
                          ),
                        ),
                        Text(
                          postdata[i].space, style: const TextStyle(color: Colors.grey,),
                        ),
                        const Icon(Icons.public, size: 20, color: Colors.grey,)
                      ],
                    ),
                  ],
                ),
              ),
              IconButton(
                iconSize: 30,
                onPressed: () {
                  postdata[i].moreOnPressed();
                },
                icon: const Icon(
                  Icons.more_horiz_outlined,
                  color: Colors.grey,
                ),
              ),
              IconButton(
                iconSize: 30,
                onPressed: () {
                  postdata[i].cutOnPressed();
                },
                icon: const Icon(
                  Icons.close_rounded,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    postdata[i].postTitle,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
              ),
              Image(image: AssetImage(postdata[i].postImage),),
            ],
          ),
          LikeCommentSection(comment: postdata[i].comments,
          like: postdata[i].like,
          views: postdata[i].views,
          share: postdata[i].share,
          ),

          const Divider(),
          LikeCommentSection2(commentOnPressed: (){},
          likeOnPressed: (){},
          sendOnPressed: (){},
          shareOnPressed: (){},),
          Container(
            height: 7,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey[350],
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 13, vertical: 7),
            ),
          ),
        ],
      ],
    );
  }
}




