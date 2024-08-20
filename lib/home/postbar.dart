import 'package:flutter/material.dart';

class PostBar extends StatelessWidget {
  const PostBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: const CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/images/rich_girl.jpg'),
          ),
        ),
        // const SizedBox(
        //   width: 5,
        // ),
        Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "What's on your mind?",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
              ),
              maxLines: 1,
              style: const TextStyle(color: Colors.black, fontSize: 12),
            )),
        Column(
          children: [
            IconButton(
              iconSize: 30,
              onPressed: (){
                print("Image button clicked!");
              },
              icon: const Icon(Icons.image_sharp, color: Colors.green,),
            ),
          ],
        ),
      ],
    );
  }
}
