import 'package:facebook_ui/Pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'friendsPage.dart';
import 'notificationsPage.dart';

// import '../items/creatStoryItem.dart';
// import '../items/posstItem.dart';
// import '../items/storyItem.dart';
// import '../states(attributes).dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          bottom: TabBar(
            controller: _tabController,
            tabs: [
              Tab(icon: Icon(Icons.home, color: Colors.blue)),
              Tab(icon: Icon(Icons.people, color: Colors.blue)),
              Tab(icon: Icon(Icons.alarm, color: Colors.blue)),
            ],
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            "Facebook",
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 30),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.search, color: Colors.black)),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.camera_alt, color: Colors.black)),
            SizedBox(width: 10),
          ],
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            HomePage(),
            FriendsPage(),
            NotificationsPage(),
          ],
        ),
      ),
    );
  }
}
