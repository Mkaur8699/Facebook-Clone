import 'package:flutter/material.dart';
import 'package:myfacebook/friends/yourfriends.dart';
import 'package:myfacebook/models/friends.dart';

class FriendsPage extends StatefulWidget {
  const FriendsPage({super.key});

  @override
  State<FriendsPage> createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          width: double.maxFinite,
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 7),
                child: Container(
                  child: const Text(
                    "Friends",
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                child: IconButton(
                  icon: const Icon(Icons.search),
                  color: Colors.black,
                  onPressed: () {
                    print("Clicked on Search");
                  },
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 7),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
              ),
              ElevatedButton(
                onPressed: () {
                  print("Clicked Friend Requests");
                },
                style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.grey[350]),
                child: const Text("Friend Requests"),
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(
                horizontal: 5,
              )),
              ElevatedButton(
                onPressed: () {
                  print("clicked on Your friends");
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> Material(
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        child: const YourFriends(),
                      ),
                    ),),
                  );
                },
                style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.grey[350]),
                child: const Text(
                  "Your friends",
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Divider(
          color: Colors.grey,
          thickness: 1,
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 7),
          child: Container(
            margin: const EdgeInsets.all(12),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "People you may know",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: friendsdata.length,
            itemBuilder: (context, i) => Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 8),
                ),
                ListTile(
                  title: Text(
                    friendsdata[i].name,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  leading: Container(
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(friendsdata[i].avatarimage),
                    ),
                  ),
                  subtitle: Expanded(
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Add Friend'),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7)),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(left: 10)),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Remove"),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.grey[200],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
