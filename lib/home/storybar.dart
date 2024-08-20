import 'package:flutter/material.dart';
import 'package:myfacebook/models/storymodel.dart';

class StoryBar extends StatelessWidget {
  const StoryBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          spacing: 10,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              height: 250,
              width: 150,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  GestureDetector(
                    onTap: () {
                      print("Photo is clicked");
                    },
                    child: Column(
                      children: [
                        Container(
                          height: 160,
                          width: 150,
                          margin: const EdgeInsets.only(bottom: 30),
                          child: const ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                            child: Image(
                              image: AssetImage("assets/images/men_image.jpg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Center(
                          child: TextButton(
                            onPressed: () {
                              print("Photo is clicked");
                            },
                            child: const Text(
                              "Create Story",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 42,
                    left: 40,
                    child: IconButton(
                      onPressed: () {
                        print("Add to Story is clicked");
                      },
                      icon: const Icon(Icons.add_circle_rounded,
                          color: Colors.blueAccent),
                      iconSize: 50,
                    ),
                  ),
                ],
              ),
            ),
            for (int i = 0; i < storyList.length; i++)...[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                height: 250,
                width: 150,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    GestureDetector(
                      onTap: () => storyList[i].onTap(),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image(
                          image: AssetImage(storyList[i].image),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 7,
                      left: 10,
                      child: Text(
                        storyList[i].name,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
