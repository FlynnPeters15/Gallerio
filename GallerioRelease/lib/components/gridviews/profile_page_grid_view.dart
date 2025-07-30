import 'package:GallerioV1/pages/discover_page.dart';
import 'package:GallerioV1/pages/explore_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProfileGridView extends StatelessWidget {
  const ProfileGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => StaggeredGridView.countBuilder(
        staggeredTileBuilder: (index) => StaggeredTile.fit(2),
        crossAxisCount: 4,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        itemCount: 6,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => buildImageCard(context, index),
      );

  Widget buildImageCard(BuildContext context, int index) => Card(
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: GestureDetector(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[850],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black,
                    offset: Offset(5.0, 5.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(_NFTImgurls[index]),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          },
        ),
      );
}

List<String> _NFTImgurls = [
  'https://res.cloudinary.com/nifty-gateway/video/upload/v1610827323/A/Billelis/%CE%A0%CE%91%CE%98%CE%9F%CE%A3_qyarem.png',
  'https://res.cloudinary.com/nifty-gateway/video/upload/v1614741607/Ashley/AndreasWannerstedt3/the_open_hand_-_Andreas_Wannerstedt_au1bjs.png',
  'https://res.cloudinary.com/nifty-gateway/video/upload/v1648565149/ADaniel/Vexx/3.30/open/OE_2_Blame_Game_FRAMED_NFTs_xl0ooh.png',
  'https://res.cloudinary.com/nifty-gateway/video/upload/v1615752199/A/ODESZA/Artifact_H264_01_-_Adam_Foley_bodogo.png',
  'https://res.cloudinary.com/nifty-gateway/video/upload/v1614650218/A/SteveAoki/run_-_Carly_Bernstein_jz17n7.png',
  'https://res.cloudinary.com/nifty-gateway/image/upload/v1615869684/A/JustinRoiland2/002_Modern_Times_elywha.jpg',
];
