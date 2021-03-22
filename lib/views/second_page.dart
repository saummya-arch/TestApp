import 'package:TestApp/helper/constants.dart';
import 'package:TestApp/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BedRoom extends StatefulWidget {
  @override
  _BedRoomState createState() => _BedRoomState();
}

class _BedRoomState extends State<BedRoom> {


  double currentslidervalue = 200.0;


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
            left: 150.0,
            top: 75.3,
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
            left: 50.0,
            top: 36.0,
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
          Container(
          margin: const EdgeInsets.only(top: 200.0, left: 3.0),
          height: 70.0,
          child: ListView(
            padding: const EdgeInsets.all(5.0),
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              RaisedButton(
                onPressed: ()=>{},
                child: Row(
                  children: <Widget>[
                    SvgPicture.asset("assets/surface1.svg"),
                    Text("Main Light",style: TextStyle(
                  decoration: null, fontSize: 25.0, color: Colors.white),
                  ),
                  ],
                ),
                color: kPrimaryColor,
              ),
              Padding(padding: const EdgeInsets.only(right: 5.0),
              ),
              RaisedButton(
                onPressed: ()=>{},
                child: Row(
                  children: <Widget>[
                    SvgPicture.asset("assets/surface1.svg"),
                    Text("Main Light",style: TextStyle(
                  decoration: null, fontSize: 25.0, color: Colors.white),
                  ),
                  ],
                ),
                color: kPrimaryColor,
              ),
               Padding(padding: const EdgeInsets.only(right: 5.0),
              ),
              RaisedButton(
                onPressed: ()=>{},
                child: Row(
                  children: <Widget>[
                    SvgPicture.asset("assets/surface1.svg"),
                    Text("Main Light",style: TextStyle(
                  decoration: null, fontSize: 25.0, color: Colors.white),
                  ),
                  ],
                ),
                color: kPrimaryColor,
              ),
            ],
          ),
        ),


        //second Container
        Container(
              margin: const EdgeInsets.only(top: 300.0),
              padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0),
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
                  Text("Intensity",style: TextStyle(
                  decoration: null, fontSize: 25.0, color: Colors.black),
                  ),
                 // Padding(padding: const EdgeInsets.only(top: 5.0),
                  //),

                    Row(
                      children: <Widget>[
                        Container(
                          height: 40.0,
                          child: SvgPicture.asset("assets/solution2.svg", height: 30.0,)
                          ),
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
                          },),
                        ),
                        Container(
                          height: 50.0,
                          child: SvgPicture.asset("assets/solution.svg", height: 40.0,)
                          ), 
                      ],
                    ),
                  Text("Colors",style: TextStyle(
                  decoration: null, fontSize: 25.0, color: Colors.black),
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        height: 30.0,
                        width: 30.0,
                        child: CircleAvatar(
                          backgroundColor: Color(0xFFE98479),
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                        width: 30.0,
                        child: CircleAvatar(
                          backgroundColor: Color(0xFFE98479),
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                        width: 30.0,
                        child: CircleAvatar(
                          backgroundColor: Color(0xFFE98479),
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                        width: 30.0,
                        child: CircleAvatar(
                          backgroundColor: Color(0xFFE98479),
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                        width: 30.0,
                        child: CircleAvatar(
                          backgroundColor: Color(0xFFE98479),
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                        width: 30.0,
                        child: CircleAvatar(
                          backgroundColor: Color(0xFFE98479),
                        ),
                      ),
                      ClipOval(
                        child: Container(
                          height: 30.0,
                          width: 30.0,
                          color: Color(0xFFE98479),
                          child: SvgPicture.asset("assets/+.svg"),
                        ),
                      ),
                    ],
                  ),
                  Text("Scenes",style: TextStyle(
                  decoration: null, fontSize: 25.0, color: Colors.black),
                  ),
                  Expanded(
                  child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 1.2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 30,
                      children: <Widget>[
                        RaisedButton(
                onPressed: ()=>{},
                child: Row(
                    children: <Widget>[
                      SvgPicture.asset("assets/surface2.svg"),
                      Text("Main Light",style: TextStyle(
                    decoration: null, fontSize: 25.0, color: Colors.white54),
                    ),
                    ],
                ),
                color: kAccentColor,
              ),

              //2
              RaisedButton(
                onPressed: ()=>{},
                child: Row(
                    children: <Widget>[
                      SvgPicture.asset("assets/surface2.svg"),
                      Text("Main Light",style: TextStyle(
                    decoration: null, fontSize: 25.0, color: Colors.white54),
                    ),
                    ],
                ),
                color: kAccentColor,
              ),

              //3
              RaisedButton(
                onPressed: ()=>{},
                child: Row(
                    children: <Widget>[
                      SvgPicture.asset("assets/surface2.svg"),
                      Text("Main Light",style: TextStyle(
                    decoration: null, fontSize: 25.0, color: Colors.white54),
                    ),
                    ],
                ),
                color: kAccentColor,
              ),

              //4
              RaisedButton(
                onPressed: ()=>{},
                child: Row(
                    children: <Widget>[
                      SvgPicture.asset("assets/surface2.svg"),
                      Text("Main Light",style: TextStyle(
                    decoration: null, fontSize: 25.0, color: Colors.white54),
                    ),
                    ],
                ),
                color: kAccentColor,
              ),
                      ],
                    ),
                  ),
                ],
              ),
          ),
        ],
      ),
    );
  }
}
