import 'package:GallerioV1/components/gridviews/explore_page_grid_view.dart';
import 'package:GallerioV1/components/gridviews/profile_page_grid_view.dart';
import 'package:GallerioV1/components/profile_imgs/profile_pic_scroll.dart';
import 'package:GallerioV1/components/settings/notifications/notifications_page.dart';
import 'package:GallerioV1/components/settings/settings_drawer.dart';

import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SettingsDrawer(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 5.0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_active_rounded,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NotificationsPage()));
            },
          ),
        ],
        title: const Center(
          child: Text(
            'Explore',
          ),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          const SizedBox(
            height: 30,
          ),
//search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[850],
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      offset: Offset(5.0, 5.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0),
                  BoxShadow(
                    color: Colors.grey.shade800,
                    offset: Offset(-4, -4),
                    blurRadius: 15,
                    spreadRadius: 1,
                  )
                ],
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 30,
                      child: const Icon(Icons.search_rounded),
                    ),
                  ),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search for a User or NFT'),
                    ),
                  )
                ],
              ),
            ),
          ),

//shows the most popular collectors based on number of followers, likes, and NFT's they own

          SizedBox(
            height: 10,
          ),
          Container(
            height: 130,
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey[850],
              borderRadius: const BorderRadius.all(const Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black,
                    offset: Offset(5.0, 5.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
                BoxShadow(
                  color: Colors.grey.shade800,
                  offset: Offset(-4, -4),
                  blurRadius: 15,
                  spreadRadius: 1,
                )
              ],
            ),
            child: Stack(
              children: const [
                Positioned(
                  top: 40,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: ProfilePicScroll(),
                ),
                Positioned(
                    top: 10,
                    left: 10,
                    child: Text(
                      'Top Collectors',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    )),
              ],
            ),
          ),

//NFTs shown on the explore page

          Container(
            margin: EdgeInsets.all(10),
            height: 2400,
            child: ExploreGridView(),
          )
        ],
      ),
    );
  }
}
