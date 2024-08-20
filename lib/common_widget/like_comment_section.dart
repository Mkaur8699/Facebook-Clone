import 'package:flutter/material.dart';

class LikeCommentSection extends StatelessWidget {
  const LikeCommentSection({
    super.key,
    required this.like,
    required this.comment,
    required this.share,
    required this.views,
  });

  final String like;
  final String comment;
  final String share;
  final String views;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 100,
            height: 30,
            child: Row(
              children: [
                const Icon(
                  Icons.thumb_up,
                  size: 20,
                  color: Colors.blue,
                ),
                const Icon(
                  Icons.favorite,
                  size: 20,
                  color: Colors.red,
                ),
                Text(
                  like,
                  style: const TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Text(
                comment,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
              const Text(
                ' comments ',
                style: TextStyle(color: Colors.grey),
              ),
              const Text(
                '•',
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                share,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
              const Text(
                ' share ',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              const Text(
                '•',
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                views,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
              const Text(
                ' views',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
