import 'package:TestApp/helper/animations.dart';
import 'package:TestApp/helper/constants.dart';
import 'package:TestApp/views/choices.dart';
import 'package:TestApp/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:async';

class BedRoom extends StatefulWidget {
  @override
  _BedRoomState createState() => _BedRoomState();
}

class _BedRoomState extends State<BedRoom> with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));
    Timer(Duration(milliseconds: 200), () => _animationController.forward());

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      backgroundColor: kAccentColor,
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.4,
            child: Positioned(
              left: 0.0,
              top: 0.0,
              height: size.height * 0.4,
              child: SvgPicture.asset("assets/Circles.svg"),
            ),
          ),
          Positioned(
            left: size.height * 0.030,
            top: size.height * 0.028,
            height: size.height * 0.1,
            child:
                SvgPicture.asset("assets/Icon ionic-md-arrow-round-back.svg"),
          ),
          Positioned(
            left: size.height * 0.06,
            top: size.height * 0.064,
            height: size.height * 0.3,
            child: Text(
              "Bed",
              style: TextStyle(
                decoration: null,
                fontSize: 35.0,
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            left: size.height * 0.030,
            top: size.height * 0.1,
            height: size.height * 0.3,
            child: Text(
              "Room",
              style: TextStyle(
                  decoration: null,
                  fontSize: 35.0,
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            right: size.height * 0.042,
            top: size.height * 0.0,
            child:
                FadeAnimation(1.125, SvgPicture.asset("assets/light bulb.svg")),
          ),
          Positioned(
            left: size.height * 0.030,
            top: size.height * 0.165,
            child: FadeAnimation(
              1.0,
              Text(
                "4 Lights",
                style: TextStyle(
                  decoration: null,
                  fontSize: 20.0,
                  color: kActiveColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
          ),
          SlideTransition(
            position: Tween<Offset>(
              begin: Offset(1, 0),
              end: Offset.zero,
            ).animate(_animationController),
            child: FadeTransition(
              opacity: _animationController,
              child: Container(
                margin: const EdgeInsets.only(top: 200.0, left: 13.0),
                height: 70.0,
                child: ListView(
                  padding: const EdgeInsets.all(10.0),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () => {},
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(15.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          SvgPicture.asset("assets/surface1.svg"),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                          ),
                          Text(
                            "Main Light",
                            style: TextStyle(
                                decoration: null,
                                fontSize: 17.0,
                                color: kAccentColor,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      color: kPrimaryColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                    ),
                    RaisedButton(
                      onPressed: () => {},
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(15.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SvgPicture.asset(
                              "assets/furniture-and-household.svg"),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                          ),
                          Text(
                            "Dark Light",
                            style: TextStyle(
                                decoration: null,
                                fontSize: 17.0,
                                color: kPrimaryColor,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      color: kAccentColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                    ),
                    RaisedButton(
                      onPressed: () => {},
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(15.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SvgPicture.asset("assets/restbed.svg"),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                          ),
                          Text(
                            "Bed Light",
                            style: TextStyle(
                                decoration: null,
                                fontSize: 17.0,
                                color: kAccentColor,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      color: kPrimaryColor,
                    ),
                  ],
                ),
              ),
            ),
          ),
          ChoicePage(),
          Positioned(
            right: size.height * 0.025,
            top: size.height * 0.345,
            child: Container(
              width: size.height * 0.027,
              height: size.height * 0.027,
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(3.0, 3.0),
                      blurRadius: 5.0,
                      spreadRadius: 0.5,
                    ),
                  ]),
              child: SvgPicture.asset("assets/Icon awesome-power-off.svg"),
            ),
          ),
        ],
      ),
    );
  }
}
