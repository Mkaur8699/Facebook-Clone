import 'package:flutter/material.dart';

class LikeCommentSection2 extends StatelessWidget {
  const LikeCommentSection2({
    super.key,
    required this.likeOnPressed, required this.commentOnPressed, required this.sendOnPressed, required this.shareOnPressed,
  });

  final VoidCallback likeOnPressed;
  final VoidCallback commentOnPressed;
  final VoidCallback sendOnPressed;
  final VoidCallback shareOnPressed;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 80,
            height: 30,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(onPressed: () {
                  likeOnPressed;
                },
                  icon: const Icon(
                    Icons.thumb_up, size: 20, color: Colors.blue,),),
                const Text(
                  "Like", style: TextStyle(fontSize: 14, color: Colors.grey),),
              ],
            ),
          ),
          SizedBox(
            width: 120,
            height: 30,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.message_outlined, size: 22, color: Colors.grey,),
                  onPressed: commentOnPressed,
                ),
                const Text('Comment',
                  style: TextStyle(fontSize: 14, color: Colors.grey),),
              ],
            ),
          ),
          SizedBox(
            width: 90,
            height: 30,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.send, size: 22, color: Colors.grey,),
                  onPressed: sendOnPressed,
                ),
                const Text(
                  'Send', style: TextStyle(fontSize: 14, color: Colors.grey),),
              ],
            ),
          ),
          SizedBox(
            width: 95,
            height: 30,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.share, size: 22, color: Colors.grey,),
                  onPressed: shareOnPressed,),
                const Text(
                  'Share', style: TextStyle(fontSize: 14, color: Colors.grey),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}