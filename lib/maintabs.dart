import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/services.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:myfacebook/message/message.dart';
import 'package:myfacebook/pages/friendspage.dart';
import 'package:myfacebook/pages/homepage.dart';
import 'package:myfacebook/pages/marketpage.dart';
import 'package:myfacebook/pages/menu.dart';
import 'package:myfacebook/pages/notificationpage.dart';
import 'package:myfacebook/pages/videopage.dart';

class MainTabs extends StatefulWidget {
  const MainTabs({super.key});

  @override
  State<MainTabs> createState() => _MainTabsState();
}

class _MainTabsState extends State<MainTabs>
    with SingleTickerProviderStateMixin {

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  TabController? _tabController;
  final List<Tab> topTabs = <Tab>[
    const Tab(
      icon: Icon(Icons.home_filled),
    ),
    const Tab(
      icon: Icon(Icons.ondemand_video_rounded),
    ),
    const Tab(
      icon: badges.Badge(
        badgeContent: Text(
          "1",
          style: TextStyle(
            color: Colors.black,
            fontSize: 10,
          ),
        ),
        child: Icon(Icons.people_alt_outlined),
      ),
    ),
    const Tab(
      icon: Icon(Bootstrap.shop_window,color: Colors.black,),
    ),
    const Tab(
      icon: badges.Badge(
        badgeContent: Text(
          "1",
          style: TextStyle(
            color: Colors.black,
            fontSize: 10,
          ),
        ),
        child: Icon(Icons.notifications_none_outlined),
      ),
    ),
    const Tab(
      icon: Icon(Icons.menu),
    ),
  ];

  Future<bool> _onWillPop() async {
    if (_tabController!.index == 0) {
      await SystemNavigator.pop();
    }
    Future.delayed(const Duration(milliseconds: 200), () {
      _tabController!.index = 0;
    });
    return _tabController!.index == 0;
  }

  @override
  void initState() {
    _tabController =
        TabController(length: topTabs.length, initialIndex: 0, vsync: this)
          ..addListener(() {
            setState(() {});
          });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text(
            "facebook",
            style: TextStyle(
                color: Colors.blue.shade800,
                fontSize: 30,
                fontWeight: FontWeight.w900),
          ),
          actions: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 3),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
              ),
              child: IconButton(
                icon: const Icon(Icons.add_circle),
                color: Colors.black,
                splashColor: Colors.transparent,
                hoverColor: Colors.grey,
                onPressed: () {
                  print("Add Button Clicked!");
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 3),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
              ),
              child: IconButton(
                icon: const Icon(Icons.search),
                splashColor: Colors.transparent,
                hoverColor: Colors.grey,
                color: Colors.black,
                onPressed: () {
                  print("Search Button Clicked!");
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 3),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
              ),
              child: IconButton(
                icon: const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Icon(Bootstrap.messenger),
                ),
                splashColor: Colors.transparent,
                hoverColor: Colors.grey,
                color: Colors.black,
                onPressed: () {
                  _scaffoldKey.currentState!.openEndDrawer();
                },
              ),
            ),
          ],
          bottom: TabBar(
            controller: _tabController, labelColor: Colors.blue.shade800, indicatorColor: Colors.blue.shade800, indicatorSize: TabBarIndicatorSize.tab,
            tabs: topTabs,
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: const [
            HomePage(),
            VideoPage(),
            FriendsPage(),
            MarketPage(),
            NotificationPage(),
            MenuPage(),
          ],
        ),
        endDrawer: Container(
          width: MediaQuery.of(context).size.width * 1,
          color: Colors.white,
          child: const MessagePage(),
        ),
      ),
    );
  }
}
