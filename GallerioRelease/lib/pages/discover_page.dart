import 'package:GallerioV1/components/nft_posts/nft1.dart';
import 'package:GallerioV1/components/nft_posts/nft2.dart';
import 'package:GallerioV1/components/nft_posts/nft3.dart';
import 'package:GallerioV1/components/nft_posts/nft4.dart';
import 'package:GallerioV1/components/nft_posts/nft5.dart';
import 'package:GallerioV1/components/nft_posts/nft6.dart';
import 'package:GallerioV1/components/nft_posts/nft7.dart';
import 'package:GallerioV1/components/nft_posts/nft8.dart';
import 'package:GallerioV1/components/nft_posts/nft9.dart';
import 'package:flutter/material.dart';

//this page will show users the new NFT's that those they follow buy or add to their account.
//Also, will recommend users new NFT's with a similar algorithm that tik tok uses

class HomePage extends StatelessWidget {
  final _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        flexibleSpace: Column(
          mainAxisAlignment: MainAxisAlignment.end,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: [
          NFT4(),
          NFT1(),
          NFT2(),
          NFT3(),
          NFT5(),
          NFT6(),
          NFT7(),
          NFT8(),
          NFT9(),
        ],
      ),
    );
  }
}
