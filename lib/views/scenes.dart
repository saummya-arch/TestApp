import 'dart:async';

import 'package:TestApp/helper/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScenesPage extends StatefulWidget {
  @override
  _ScenesPageState createState() => _ScenesPageState();
}

class _ScenesPageState extends State<ScenesPage>
    with SingleTickerProviderStateMixin {
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
    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 2.4,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        children: <Widget>[
          RaisedButton(
            elevation: 0.0,
            onPressed: () => {},
            child: Container(
              height: size.height * 0.05,
              width: size.width * 0.62,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                gradient: LinearGradient(
                  colors: <Color>[
                    kFirstCircleColor,
                    Color(0xFFEEA097),
                    Color(0xFFFFA07A),
                  ],
                ),
              ),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                  ),
                  SvgPicture.asset("assets/surface2.svg"),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                  ),
                  Text(
                    "Birthday",
                    style: TextStyle(
                        decoration: null,
                        fontSize: 18.0,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            color: kPrimaryColor,
          ),

          //2
          SlideTransition(
            position: Tween<Offset>(
              begin: Offset(-0.5, 0),
              end: Offset.zero,
            ).animate(_animationController),
            child: FadeTransition(
              opacity: _animationController,
              child: RaisedButton(
                elevation: 0.0,
                onPressed: () => {},
                child: Container(
                  height: size.height * 0.05,
                  width: size.width * 0.62,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    gradient: LinearGradient(
                      colors: <Color>[
                        kFourthCircleColor,
                        Color(0xFFBC83D3),
                        Color(0xFFE971E9),
                      ],
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                      ),
                      SvgPicture.asset("assets/surface2.svg"),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                      ),
                      Text(
                        "Party",
                        style: TextStyle(
                            decoration: null,
                            fontSize: 18.0,
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                color: kPrimaryColor,
              ),
            ),
          ),

          //3
          RaisedButton(
            elevation: 0.0,
            onPressed: () => {},
            child: Container(
              height: size.height * 0.05,
              width: size.width * 0.62,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                gradient: LinearGradient(
                  colors: <Color>[
                    kThirdCircleColor,
                    Color(0xFFA7D2EF),
                    Color(0xFFC4E5FB),
                  ],
                ),
              ),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                  ),
                  SvgPicture.asset("assets/surface2.svg"),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                  ),
                  Text(
                    "Relax",
                    style: TextStyle(
                        decoration: null,
                        fontSize: 18.0,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            color: kPrimaryColor,
          ),

          //4
          SlideTransition(
            position: Tween<Offset>(
              begin: Offset(-0.5, 0),
              end: Offset.zero,
            ).animate(_animationController),
            child: FadeTransition(
              opacity: _animationController,
              child: RaisedButton(
                elevation: 0.0,
                onPressed: () => {},
                child: Container(
                  height: size.height * 0.05,
                  width: size.width * 0.62,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    gradient: LinearGradient(
                      colors: <Color>[
                        kSecondCircleColor,
                        Color(0xFF6AE69E),
                        Color(0xFF97E3B7),
                      ],
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                      ),
                      SvgPicture.asset("assets/surface2.svg"),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                      ),
                      Text(
                        "Fun",
                        style: TextStyle(
                            decoration: null,
                            fontSize: 18.0,
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                color: kPrimaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
