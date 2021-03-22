import 'package:TestApp/helper/constants.dart';
import 'package:TestApp/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BedRoom extends StatefulWidget {
  @override
  _BedRoomState createState() => _BedRoomState();
}

class _BedRoomState extends State<BedRoom> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      backgroundColor: kAccentColor,
      body: Stack(
        children: <Widget>[
          Container(
            //color: Colors.grey,
            height: size.height * 0.4,
            child: Positioned(
              left: 0.0,
              top: 0.0,
              height: size.height * 0.4,
              child: SvgPicture.asset("assets/Circles.svg"),
            ),
          ),
          Positioned(
            left: 10.0,
            top: 2.0,
            height: size.height * 0.1,
            child:
                SvgPicture.asset("assets/Icon ionic-md-arrow-round-back.svg"),
          ),
          // Container(color: Colors.yellow, height: size.height * 0.4),
          Positioned(
            left: 10.0,
            top: 5.3,
            height: size.height * 0.3,
            child: Text(
              "Bed",
              style: TextStyle(
                decoration: null,
                fontSize: 25.0,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            left: 10.0,
            top: 6.0,
            height: size.height * 0.3,
            child: Text(
              "Rooms",
              style: TextStyle(
                  decoration: null, fontSize: 25.0, color: Colors.white),
            ),
          ),
          Positioned(
            right: 30.0,
            top: 0.0,
            child: SvgPicture.asset("assets/light bulb.svg"),
          ),
          Positioned(
            left: 30.0,
            top: 48.0,
            child: Text(
              "4 Lights",
              style: TextStyle(
                  decoration: null, fontSize: 25.0, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
          ),
          //ScoreCard()
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
          ),
          // Container(
          //   height: size.height *0.3,
          //   decoration: ,
          // ),
        ],
      ),
    );
  }
}
