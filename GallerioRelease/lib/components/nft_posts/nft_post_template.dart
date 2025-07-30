import 'dart:io';
import 'package:GallerioV1/components/comments/comment_build_sheet.dart';
import 'package:GallerioV1/components/comments/item_history_buildsheet.dart';
import 'package:GallerioV1/components/nft_posts/nft1.dart';
import 'package:GallerioV1/components/nft_posts/scroll_buttons.dart';
import 'package:flutter/material.dart';

//template for what an NFT post should look like once clicked

class NFTTemplate extends StatefulWidget {
  final String creator;
  final String title;
  final String description;
  final String numberOfLikes;
  final String numberOfComments;
  final String numberOfActivity;

  final ProfileImg;
  final userPost;

  NFTTemplate({
    required this.creator,
    required this.title,
    required this.description,
    required this.numberOfLikes,
    required this.numberOfComments,
    required this.userPost,
    required this.ProfileImg,
    required this.numberOfActivity,
  });

  @override
  State<NFTTemplate> createState() => _NFTTemplateState();
}

class _NFTTemplateState extends State<NFTTemplate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 900,
        margin: EdgeInsets.fromLTRB(0, 50, 0, 20),
        decoration: BoxDecoration(
            color: Colors.grey[850],
            borderRadius: BorderRadius.all(
              Radius.circular(10),
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
              ),
            ]),
        child: Stack(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 80, 0, 80),
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0)),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: widget.userPost,
                ),
              ),
            ),

            Positioned(
              top: 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  widget.ProfileImg,
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      widget.title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              right: 110,
              child: ScrollButtons(
                icon: IconButton(
                  icon: Icon(Icons.favorite_border_rounded,
                      size: 35, color: Colors.white),
                  onPressed: () => {print('clicked like button')},
                ),
                number: widget.numberOfLikes,
              ),
            ),

            Positioned(
              bottom: 20,
              right: 60,
              child: ScrollButtons(
                icon: IconButton(
                  icon: Icon(Icons.chat_bubble_outline_rounded,
                      size: 35, color: Colors.white),
                  onPressed: () => showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                    ),
                    context: context,
                    builder: (context) => CommentBuildSheet(),
                  ),
                ),
                number: widget.numberOfComments,
              ),
            ),
            Positioned(
              bottom: 20,
              right: 10,
              child: ScrollButtons(
                icon: IconButton(
                  icon: Icon(Icons.local_offer_outlined,
                      size: 35, color: Colors.white),
                  onPressed: () => showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                    ),
                    context: context,
                    builder: (context) => HistoryBuildSheet(),
                  ),
                ),
                number: widget.numberOfActivity,
              ),
            ),

            Positioned(
              bottom: 60,
              left: 25,
              child: Text(
                widget.creator,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 25,
              child: Text(
                widget.description,
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                    color: Colors.white70),
              ),
            ),

//old code, keeping it for testing purposes
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 60, 20),
              child: Container(
                alignment: Alignment(-1, 1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 10),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                alignment: Alignment(1, 1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
