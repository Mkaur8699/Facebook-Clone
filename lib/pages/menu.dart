import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:myfacebook/common_widget/menu_drop_down_item.dart';
import 'package:myfacebook/common_widget/menu_widgets/menu_custom_sized_button.dart';
import 'package:myfacebook/home/post.dart';
import 'package:myfacebook/pages/marketpage.dart';
import 'package:myfacebook/pages/videopage.dart';
import 'package:myfacebook/profile/profilepage.dart';

import '../common_widget/menu_widgets/menu_custom_size_elevated_button.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  bool seeMore = false;

  void _isToggle() {
    setState(() {
      seeMore = !seeMore;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Menu',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.settings,
                        color: Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 80,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfilePage(),
                    ),
                  );
                },
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
                        Text(
                          'Mandeep Kaur',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.keyboard_arrow_down_rounded))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            SizedBox(
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.add_circle_rounded,
                          color: Colors.grey.shade600,
                          size: 35,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Create new profile or Page',
                          style: TextStyle(
                              fontSize: 20, color: Colors.grey.shade600),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            seeMore ? const AllButtons() : const LimitedButtons(),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                  _isToggle();
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: Text(
                  seeMore ? 'See Less' : 'See more',
                  style: const TextStyle(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const MenuCustomSizedButton(
              icon: Icons.help,
              text: 'Help & support',
              children: [
                MenuDropDownItem(
                  icon: Icons.center_focus_strong_rounded,
                  text: 'Help Centre',
                ),
                SizedBox(
                  height: 10,
                ),
                MenuDropDownItem(
                  icon: Icons.inbox_rounded,
                  text: 'Supoort Inbox',
                ),
                SizedBox(
                  height: 10,
                ),
                MenuDropDownItem(
                  icon: Icons.warning,
                  text: 'Report a problem',
                ),
                SizedBox(
                  height: 10,
                ),
                MenuDropDownItem(
                  icon: Icons.person_pin,
                  text: 'Safety',
                ),
                SizedBox(
                  height: 10,
                ),
                MenuDropDownItem(
                  icon: Icons.note_alt_rounded,
                  text: 'Terms & Policies',
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
            const SizedBox(
              height: 1,
            ),
            const MenuCustomSizedButton(
              icon: Icons.settings,
              text: 'Settings & privacy',
              children: [
                MenuDropDownItem(
                  icon: Icons.settings,
                  text: 'Settings',
                ),
                MenuDropDownItem(
                  icon: Icons.device_unknown_rounded,
                  text: 'Device requests',
                ),
                MenuDropDownItem(
                  icon: Icons.computer_rounded,
                  text: 'Recent ad activity',
                ),
                MenuDropDownItem(
                  icon: Icons.credit_card_rounded,
                  text: 'Facebook Pay',
                ),
                MenuDropDownItem(
                  icon: Icons.link,
                  text: 'Link history',
                ),
              ],
            ),
            const SizedBox(
              height: 1,
            ),
            const MenuCustomSizedButton(
              icon: Icons.apps,
              text: 'Also from Meta',
              children: [
                MenuDropDownItem(
                  icon: Bootstrap.threads,
                  text: 'Threads',
                ),
                MenuDropDownItem(
                  icon: Bootstrap.messenger,
                  text: 'Messenger',
                ),
                MenuDropDownItem(
                  icon: Bootstrap.whatsapp,
                  text: 'Whatsapp',
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text(
                  'Log Out',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AllButtons extends StatelessWidget {
  const AllButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MenuCustomSizeElevatedButton(
          firstIcon: Icons.card_giftcard_rounded,
          secondIcon: Icons.find_in_page_rounded,
          firstText: "Birthdays",
          secondText: "Finds",
          firstIconColor: Colors.blue,
          secondIconColor: Colors.red,
          onPressed1: () {},
          onPressed2: () {},
        ),
        MenuCustomSizeElevatedButton(
          firstIcon: Icons.timer_outlined,
          secondIcon: Icons.bookmark,
          firstText: "Memories",
          secondText: "Saved",
          firstIconColor: Colors.blue,
          secondIconColor: Colors.purple,
          onPressed1: () {},
          onPressed2: () {},
        ),
        MenuCustomSizeElevatedButton(
          firstIcon: Icons.groups,
          secondIcon: Icons.ondemand_video_rounded,
          firstText: "Groups",
          secondText: "Video",
          firstIconColor: Colors.blue,
          secondIconColor: Colors.blue,
          onPressed1: () {},
          onPressed2: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Scaffold(
                    appBar: AppBar(
                      title: const Text('Videos'),
                    ),
                    body: const VideoPage()),
              ),
            );
          },
        ),
        MenuCustomSizeElevatedButton(
          firstIcon: Icons.shopping_bag_rounded,
          secondIcon: Icons.find_in_page_rounded,
          firstText: "Marketplace",
          secondText: "Find Friends",
          firstIconColor: Colors.blue,
          secondIconColor: Colors.blue,
          onPressed1: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Scaffold(
                  appBar: AppBar(
                    title: const Text('Market Page'),
                  ),
                  body: const MarketPage(),
                ),
              ),
            );
          },
          onPressed2: () {},
        ),
        MenuCustomSizeElevatedButton(
          firstIcon: Icons.face,
          secondIcon: Icons.event_available_rounded,
          firstText: "Avatars",
          secondText: "Events",
          firstIconColor: Colors.blue,
          secondIconColor: Colors.red,
          onPressed1: () {},
          onPressed2: () {},
        ),
        MenuCustomSizeElevatedButton(
          firstIcon: Icons.feed_rounded,
          secondIcon: Icons.videogame_asset_rounded,
          firstText: "Feeds",
          secondText: "Gaming",
          firstIconColor: Colors.blue,
          secondIconColor: Colors.blue,
          onPressed1: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Scaffold(
                    appBar: AppBar(
                      title: const Text('Posts'),
                    ),
                    body: const SingleChildScrollView(child: Posts())),
              ),
            );
          },
          onPressed2: () {},
        ),
        MenuCustomSizeElevatedButton(
          firstIcon: Icons.flag,
          secondIcon: Icons.video_collection_rounded,
          firstText: "Pages",
          secondText: "Reels",
          firstIconColor: Colors.red,
          secondIconColor: Colors.red,
          onPressed1: () {},
          onPressed2: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Scaffold(
                    appBar: AppBar(
                      title: const Text('Videos'),
                    ),
                    body: const VideoPage()),
              ),
            );
          },
        ),
      ],
    );
  }
}

class LimitedButtons extends StatelessWidget {
  const LimitedButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MenuCustomSizeElevatedButton(
          firstIcon: Icons.card_giftcard_rounded,
          secondIcon: Icons.find_in_page_rounded,
          firstText: "Birthdays",
          secondText: "Finds",
          firstIconColor: Colors.blue,
          secondIconColor: Colors.red,
          onPressed1: () {},
          onPressed2: () {},
        ),
        MenuCustomSizeElevatedButton(
          firstIcon: Icons.timer_outlined,
          secondIcon: Icons.bookmark,
          firstText: "Memories",
          secondText: "Saved",
          firstIconColor: Colors.blue,
          secondIconColor: Colors.purple,
          onPressed1: () {},
          onPressed2: () {},
        ),
        MenuCustomSizeElevatedButton(
          firstIcon: Icons.groups,
          secondIcon: Icons.ondemand_video_rounded,
          firstText: "Groups",
          secondText: "Video",
          firstIconColor: Colors.blue,
          secondIconColor: Colors.blue,
          onPressed1: () {},
          onPressed2: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Scaffold(
                    appBar: AppBar(
                      title: const Text('Videos'),
                    ),
                    body: const VideoPage()),
              ),
            );
          },
        ),
        MenuCustomSizeElevatedButton(
          firstIcon: Icons.shopping_bag_rounded,
          secondIcon: Icons.find_in_page_rounded,
          firstText: "Marketplace",
          secondText: "Find Friends",
          firstIconColor: Colors.blue,
          secondIconColor: Colors.blue,
          onPressed1: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Scaffold(
                  appBar: AppBar(
                    title: const Text('Market Page'),
                  ),
                  body: const MarketPage(),
                ),
              ),
            );
          },
          onPressed2: () {},
        ),
      ],
    );
  }
}
