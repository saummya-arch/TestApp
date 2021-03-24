import 'dart:async';

import 'package:TestApp/helper/constants.dart';
import 'package:TestApp/views/scenes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChoicePage extends StatefulWidget {
  @override
  _ChoicePageState createState() => _ChoicePageState();
}

class _ChoicePageState extends State<ChoicePage>
    with SingleTickerProviderStateMixin {
  double currentslidervalue = 200.0;
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
    return Container(
      margin: const EdgeInsets.only(top: 300.0),
      padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 25.0),
      height: size.height * 40,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              "Intensity",
              style: TextStyle(
                  decoration: null,
                  fontSize: 22.0,
                  color: kAccentColor,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
          ),
          Row(
            children: <Widget>[
              Container(
                  height: 40.0,
                  child: SvgPicture.asset(
                    "assets/solution2.svg",
                    height: 30.0,
                  )),
              Container(
                width: 290.0,
                child: Slider(
                  min: 100.0,
                  max: 1100.0,
                  divisions: 6,
                  activeColor: kActiveColor,
                  inactiveColor: kInactiveColor,
                  value: currentslidervalue,
                  onChanged: (double value) {
                    setState(() {
                      currentslidervalue = value;
                    });
                  },
                ),
              ),
              Container(
                  height: 50.0,
                  child: SvgPicture.asset(
                    "assets/solution.svg",
                    height: 40.0,
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 27.0),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              "Colors",
              style: TextStyle(
                  decoration: null,
                  fontSize: 22.0,
                  color: kAccentColor,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
          ),
          Row(
            children: <Widget>[

              //1 coloured Circle

              SizedBox(
                height: 27.0,
                width: 27.0,
                child: SlideTransition(
                  position: Tween<Offset>(
                    begin: Offset(-1.8, 0),
                    end: Offset.zero,
                  ).animate(_animationController),
                  child: FadeTransition(
                    opacity: _animationController,
                    child: CircleAvatar(
                      backgroundColor: kFirstCircleColor,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
              ),


              //2 colored circle
              
              SizedBox(
                height: 27.0,
                width: 27.0,
                child: SlideTransition(
                  position: Tween<Offset>(
                    begin: Offset(-1.45, 0),
                    end: Offset.zero,
                  ).animate(_animationController),
                  child: FadeTransition(
                    opacity: _animationController,
                    child: CircleAvatar(
                      backgroundColor: kSecondCircleColor,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
              ),


              //3 colored circle

              SizedBox(
                height: 27.0,
                width: 27.0,
                child: SlideTransition(
                  position: Tween<Offset>(
                    begin: Offset(-1.23, 0),
                    end: Offset.zero,
                  ).animate(_animationController),
                  child: FadeTransition(
                    opacity: _animationController,
                    child: CircleAvatar(
                      backgroundColor: kThirdCircleColor,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
              ),


              //4 colored circle


              SizedBox(
                height: 27.0,
                width: 27.0,
                child: SlideTransition(
                  position: Tween<Offset>(
                    begin: Offset(-0.87, 0),
                    end: Offset.zero,
                  ).animate(_animationController),
                  child: FadeTransition(
                    opacity: _animationController,
                    child: CircleAvatar(
                      backgroundColor: kFourthCircleColor,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
              ),



              //5 colored circle


              SizedBox(
                height: 27.0,
                width: 27.0,
                child: SlideTransition(
                  position: Tween<Offset>(
                    begin: Offset(-0.56, 0),
                    end: Offset.zero,
                  ).animate(_animationController),
                  child: FadeTransition(
                    opacity: _animationController,
                    child: CircleAvatar(
                      backgroundColor: kFifthCircleColor,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
              ),


              //6 colored circle
              
              SizedBox(
                height: 27.0,
                width: 27.0,
                child: SlideTransition(
                  position: Tween<Offset>(
                    begin: Offset(-0.32, 0),
                    end: Offset.zero,
                  ).animate(_animationController),
                  child: FadeTransition(
                    opacity: _animationController,
                    child: CircleAvatar(
                      backgroundColor: kActiveColor,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
              ),


              //add circle

              ClipOval(
                child: Container(
                  height: 27.0,
                  width: 27.0,
                  color: kSixthCircleColor,
                  child: SlideTransition(
                    position: Tween<Offset>(
                      begin: Offset(-0.1, 0),
                      end: Offset.zero,
                    ).animate(_animationController),
                    child: FadeTransition(
                      opacity: _animationController,
                      child: SvgPicture.asset("assets/+.svg"),
                    ),
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(top: 25.0),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              "Scenes",
              style: TextStyle(
                  decoration: null,
                  fontSize: 22.0,
                  color: kAccentColor,
                  fontWeight: FontWeight.w700),
            ),
          ),
          ScenesPage(),
        ],
      ),
    );
  }
}
