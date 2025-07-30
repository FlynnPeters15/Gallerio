import 'package:GallerioV1/components/settings/edit_profile_page.dart';
import 'package:flutter/material.dart';

class EditProfileCard extends StatelessWidget {
  const EditProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 75,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey[850],
          borderRadius: const BorderRadius.all(Radius.circular(10)),
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
          children: [
            Positioned(
              left: 20,
              top: 20,
              child: Icon(
                Icons.person,
                size: 30,
              ),
            ),
            Positioned(
              left: 60,
              top: 26,
              child: Text(
                'Edit Profile',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
            ),
            Positioned(
                right: 20,
                top: 25,
                child: Transform.rotate(
                  angle: 3.1,
                  child: Icon(Icons.arrow_back_ios_new_rounded),
                )),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => EditProfilePage()));
      },
    );
  }
}
