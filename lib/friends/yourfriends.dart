import 'package:flutter/material.dart';
import 'package:myfacebook/models/friends1.dart';

class YourFriends extends StatefulWidget {
  const YourFriends({super.key});

  @override
  State<YourFriends> createState() => _YourFriendsState();
}

class _YourFriendsState extends State<YourFriends> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          width: double.maxFinite,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back_ios), onPressed: () => Navigator.of(context).pop(),
              ),
              const Text(
                "Your friends",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              const Icon(
                Icons.search,
                color: Colors.black,
                size: 30,
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10,),
          child: Expanded(
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                  hintText: "Search Friends",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),),
              maxLines: 1,
              style: const TextStyle(color: Colors.black, fontSize: 15),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '200 friends',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            TextButton(
              onPressed: () {
                print("Sort clicked!");
    },
                child: const Text('Sort', style: TextStyle(color: Colors.blue),)
              ),
          ],
        ),
        // const SizedBox(
        //   height: 5,
        // ),
        Expanded(
            child: ListView.builder(
                itemCount: yourfriendsdata.length,
                itemBuilder: (context, i) =>  Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 8),
                        ),
                        ListTile(
                          title: Text(yourfriendsdata[i].name,
                            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),
                          subtitle: Text(yourfriendsdata[i].subtitle,
                          style: const TextStyle(fontSize: 15, color: Colors.grey,),),
                          leading: Container(
                            child: const CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('assets/images/rich_girl.jpg'),
                            ),
                          ),
                          trailing: IconButton(
                            onPressed: () {
                            print("Clicked!");
                            }, icon: const Icon(Icons.more_horiz, color: Colors.black,),),
                        ),
                      ],
                    ),
            ),
        ),
      ],
    );
  }
}
