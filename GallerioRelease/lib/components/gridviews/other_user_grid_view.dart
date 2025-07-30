import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class OtherUserProfileGridView extends StatelessWidget {
  const OtherUserProfileGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => StaggeredGridView.countBuilder(
        staggeredTileBuilder: (index) => StaggeredTile.fit(2),
        crossAxisCount: 4,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        itemCount: 4,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => buildImageCard(index),
      );

  Widget buildImageCard(int index) => Card(
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
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
      );
}

List<String> _NFTImgurls = [
  'https://www.tbstat.com/wp/uploads/2021/12/Screen-Shot-2021-12-09-at-4.12.12-PM.png',
  'https://res.cloudinary.com/nifty-gateway/video/upload/v1623771287/A/AndreasWannerstedt/sliding_zeus_S_clppjz.png',
  'https://image.mux.com/8IGzifEl3oGaOA01vVw4BpunPe027Gi7hNjQfKgQnLHGQ/thumbnail.jpg',
  'https://res.cloudinary.com/nifty-gateway/video/upload/v1610827323/A/Billelis/%CE%A0%CE%91%CE%98%CE%9F%CE%A3_qyarem.png',
];
