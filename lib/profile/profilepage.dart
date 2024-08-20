import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myfacebook/home/post.dart';
import 'package:myfacebook/pages/videopage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: TextButton(
          onPressed: () {},
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Mandeep Kaur',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Icon(
                Icons.arrow_drop_down,
                color: Colors.black,
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              child: Stack(
                children: [
                  Image(
                    image: const AssetImage('assets/images/rich_girl.jpg'),
                    height: MediaQuery.of(context).size.height / 3 - 50,
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                  ),
                  const Positioned(
                    left: 15,
                    bottom: 0,
                    child: CircleAvatar(
                      radius: 100,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 95,
                        backgroundImage:
                            AssetImage('assets/images/rich_girl.jpg'),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    bottom: 60,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey.shade100,
                      child: const Icon(
                        Icons.camera_alt,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 30,
                    left: 0,
                    bottom: 5,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey.shade300,
                      child: const Icon(
                        Icons.camera_alt,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 15),
              child: Text(
                'Mandeep Kaur',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Text(
                    '3K',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text('followers'),
                  SizedBox(
                    width: 10,
                  ),
                  Text('•'),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '100',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text('following'),
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const CircleAvatar(
                      radius: 20,
                      backgroundImage:
                          AssetImage('assets/images/rich_girl.jpg'),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const CircleAvatar(
                      radius: 20,
                      backgroundImage:
                          AssetImage('assets/images/rich_girl.jpg'),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const CircleAvatar(
                      radius: 20,
                      backgroundImage:
                          AssetImage('assets/images/rich_girl.jpg'),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const CircleAvatar(
                      radius: 20,
                      backgroundImage:
                          AssetImage('assets/images/rich_girl.jpg'),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const CircleAvatar(
                      radius: 20,
                      backgroundImage:
                          AssetImage('assets/images/rich_girl.jpg'),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const CircleAvatar(
                      radius: 20,
                      backgroundImage:
                          AssetImage('assets/images/rich_girl.jpg'),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    IconButton(
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 15),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2 - 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: () {},
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          Text(
                            'Add to story',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: Colors.grey.shade300,
                    ),
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Icon(
                          Icons.edit,
                          color: Colors.black,
                        ),
                        Text(
                          'Edit Profile',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 4 - 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: Colors.grey.shade300,
                      ),
                      onPressed: () {},
                      child: const Center(
                        child: Icon(
                          size: 21,
                          Icons.more_horiz,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 5,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 10),
              child: Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                    ),
                    onPressed: () {},
                    child: Text(
                      'Posts',
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                    ),
                    onPressed: () {},
                    child: Text(
                      'Photos',
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                    ),
                    onPressed: () {},
                    child: Text(
                      'Reels',
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Text(
                'Details',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
              ),
              onPressed: () {},
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.more_horiz,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'See your About info',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade50,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Edit public details',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Friends',
                    style: TextStyle(fontSize: 18),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Find Friends',
                      style: TextStyle(color: Colors.blue),
                    ),
                  )
                ],
              ),
            ),
            const Divider(
              thickness: 5,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Posts',
                    style: TextStyle(fontSize: 18),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Filters',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            AssetImage('assets/images/rich_girl.jpg'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Whats on your mind?'),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.image,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              height: 1,
              thickness: 1,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 60,
              padding: const EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      surfaceTintColor: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Scaffold(
                        appBar: AppBar(title: Text('Reels Page'),),
                        body: VideoPage(),),),);
                    },
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.ondemand_video_rounded,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Reel',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      surfaceTintColor: Colors.white,
                    ),
                    onPressed: () {},
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.videocam,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Live',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              height: 1,
              thickness: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade200,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.chat_rounded,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Manage posts',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 5,
              color: Colors.grey,
            ),
            const Posts(),
          ],
        ),
      ),
    );
  }
}
