import 'package:GallerioV1/pages/discover_page.dart';
import 'package:GallerioV1/pages/explore_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ExploreGridView extends StatelessWidget {
  const ExploreGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => StaggeredGridView.countBuilder(
        staggeredTileBuilder: (index) => StaggeredTile.fit(2),
        crossAxisCount: 4,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        itemCount: 19,
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
  'https://res.cloudinary.com/nifty-gateway/video/upload/v1648565126/ADaniel/Vexx/3.30/open/OE_1_TakeOff_FRAMED_NFTs_kq3zkj.png',
  'https://res.cloudinary.com/nifty-gateway/video/upload/v1613576449/A/MadDogJones/MDJ_-_Escalation_C2_iskzf4.png',
  'https://res.cloudinary.com/nifty-gateway/video/upload/v1610827318/A/Billelis/%CE%9A%CE%91%CE%98%CE%91%CE%A1%CE%A3%CE%99%CE%A3_udzhmj.png',
  'https://res.cloudinary.com/nifty-gateway/video/upload/v1610463118/A/DeadmauMadDog/MDJxDeadmau5_Dead_ramen_md6abq.png',
  'https://res.cloudinary.com/nifty-gateway/video/upload/v1614741616/Ashley/AndreasWannerstedt3/the_smooth_saint_-_Andreas_Wannerstedt_jetmhb.png',
  'https://res.cloudinary.com/nifty-gateway/video/upload/v1614650252/A/SteveAoki/character_X_-_Carly_Bernstein_rgtnih.png',
  'https://res.cloudinary.com/nifty-gateway/video/upload/v1618196543/Pak/ACube.png',
  'https://res.cloudinary.com/nifty-gateway/video/upload/v1605799567/MadDogJones/MDJ_-_Ideas_r_the_currency_e1o1r2.png',
  'https://res.cloudinary.com/nifty-gateway/video/upload/v1608149382/AndreasWannerstedt/4_caught_in_the_middle_-_Andreas_Wannerstedt_szgkzs.png',
  'https://res.cloudinary.com/nifty-gateway/video/upload/v1629082199/Andrea/NessGraphics/NessGraphics_L0G1ST1CS_Final_cg81g5.png',
  'https://res.cloudinary.com/nifty-gateway/video/upload/v1610827298/A/Billelis/%CE%A5%CE%A0%CE%9F%CE%9B%CE%97%CE%A8%CE%97_eplg0j.png',
  'https://ikzttp.mypinata.cloud/ipfs/QmYDvPAXtiJg7s8JdRBSLWdgSphQdac8j1YuQNNxcGE1hg/9107.png',
  'https://res.cloudinary.com/nifty-gateway/video/upload/v1614741607/Ashley/AndreasWannerstedt3/the_open_hand_-_Andreas_Wannerstedt_au1bjs.png',
  'https://res.cloudinary.com/nifty-gateway/video/upload/v1613507277/A/MadDogJones/Why_would_I_care__I_m_just_a_cat_1_tvtdr3.png',
  'https://res.cloudinary.com/nifty-gateway/video/upload/v1608176992/PakxTJ/extrusion_whkoly.png',
  'https://res.cloudinary.com/nifty-gateway/image/upload/v1609366179/Fewocious2/slimesunday2/UNISWAP_wdppg8.jpg',
  'https://res.cloudinary.com/nifty-gateway/video/upload/v1608149367/AndreasWannerstedt/1_eternal_zen_-_Andreas_Wannerstedt_hakul8.png',
  'https://res.cloudinary.com/nifty-gateway/video/upload/v1616032595/AMatthew/BillelisMarch24/Nifty%20Delivery/4K%20To%20Mint/YOU_CREATED_ME_ibpsci.png',
  'https://res.cloudinary.com/nifty-gateway/video/upload/v1614650218/A/SteveAoki/run_-_Carly_Bernstein_jz17n7.png',
];
