import 'package:GallerioV1/components/follow_button.dart';
import 'package:GallerioV1/components/gridviews/other_user_grid_view.dart';
import 'package:GallerioV1/components/gridviews/profile_page_grid_view.dart';
import 'package:GallerioV1/components/profile_imgs/profile_img1.dart';
import 'package:flutter/material.dart';
import 'package:GallerioV1/components/Gallery_Button.dart';
import 'package:GallerioV1/components/Liked_NFT_Button.dart';

class OtherUserProfilePage extends StatefulWidget {
  const OtherUserProfilePage({Key? key}) : super(key: key);

  @override
  _OtherUserProfilePageState createState() => _OtherUserProfilePageState();
}

class _OtherUserProfilePageState extends State<OtherUserProfilePage> {
  bool isFollowButtonPressed = false;
  void FollowButtonPressed() {
    setState(() {
      if (isFollowButtonPressed == false) {
        isFollowButtonPressed = true;
      } else if (isFollowButtonPressed == true) {
        isFollowButtonPressed = false;
      }
    });
  }

  bool isGalleryButtonPressed = false;
  void GalleryButtonPressed() {
    setState(() {
      if (isGalleryButtonPressed == false) {
        isGalleryButtonPressed = true;
      } else if (isGalleryButtonPressed == true) {
        isGalleryButtonPressed = false;
      }
    });
  }

  bool isLikedButtonPressed = false;
  void LikedButtonPressed() {
    setState(() {
      if (isLikedButtonPressed == false) {
        isLikedButtonPressed = true;
      } else if (isLikedButtonPressed == true) {
        isLikedButtonPressed = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//Top App Bar
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 5.0,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_active_rounded),
            onPressed: () => {print('clicked notifications button')},
          ),
        ],
        title: const Center(
          child: Text(
            'Profile',
          ),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          const SizedBox(
            height: 5,
          ),

//user info section
          Container(
            height: 260,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey[850],
              borderRadius: const BorderRadius.all(
                const Radius.circular(10),
              ),
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
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  right: 50,
                  top: 25,
                  child: Text(
                    '456',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                ),
                Positioned(
                  right: 30,
                  top: 45,
                  child: Text(
                    'Followers',
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 25,
                  child: Text(
                    '50',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                ),
                Positioned(
                  left: 30,
                  top: 45,
                  child: Text(
                    'Followers',
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
                  ),
                ),
                Positioned(
                    top: 100,
                    child: Text(
                      'Inanes volent formis age imo vul.',
                    )),

                Positioned(
                  child: UserProfileImg1(),
                ),

//follow button
                Stack(
                  children: [
                    Positioned(
                        top: 140,
                        left: 115,
                        right: 115,
                        child: FollowButton(
                          onTap: FollowButtonPressed,
                          isFollowButtonPressed: isFollowButtonPressed,
                        ))
                  ],
                ),

//image icons shows users to their NFT gallery. favorite icon shows users to the NFTs they have liked

                Positioned(
                  left: 80,
                  bottom: 5,
                  child: GalleryButton(
                      onTap: GalleryButtonPressed,
                      isGalleryButtonPressed: isGalleryButtonPressed),
                ),
                Positioned(
                  right: 80,
                  bottom: 5,
                  child: LikedButton(
                      onTap: LikedButtonPressed,
                      isLikedButtonPressed: isLikedButtonPressed),
                ),
              ],
            ),
          ),

//NFTs shown in the user's profile

          Container(
            margin: EdgeInsets.all(10),
            height: 600,
            child: OtherUserProfileGridView(),
          )
        ],
      ),
    );
  }
}
