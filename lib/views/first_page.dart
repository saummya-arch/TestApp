import 'package:TestApp/helper/constants.dart';
import 'package:TestApp/views/second_page.dart';
import 'package:TestApp/widgets/bottom_nav_bar.dart';
import 'package:TestApp/widgets/category_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //THIS size PROVIDES US THE TOTAL HEIGHT AND WIDTH OF OUR SCREEN
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
            right: size.height * 0.06,
            top: size.height * 0.07,
            //height: size.height * 0.4,
            child: SvgPicture.asset("assets/user.svg"), 
          ),  



          Positioned(
            left: size.height * 0.02,
            top: size.height * 0.07,
            //height: size.height * 0.4,
            child: Text("Control"), 
          ), 


          Positioned(
            left: size.height * 0.02,
            top: size.height * 0.09,
            //height: size.height * 0.4,
            child: Text("Panel"), 
          ), 



          // second container
            Container(
              margin: const EdgeInsets.only(top: 180.0),
              padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0),
              height: size.height * 60,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Expanded(
                // child: Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: <Widget>[
                // Text(
                //   "All Rooms",
                //   style: TextStyle(decoration: null, fontSize: 5.0),
                // ),
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 1.2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  children: <Widget>[
                    CategoryCard(
                      title: "Bed Room",
                      svgSrc: "assets/bed.svg",
                      press: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return BedRoom();
                        }));
                      },
                      lights: "4 Lights",
                    ),
                    CategoryCard(
                      title: "Living Room",
                      svgSrc: "assets/room.svg",
                      press: () {},
                      lights: "2 Lights",
                    ),
                    CategoryCard(
                      title: "Kitchen",
                      svgSrc: "assets/kitchen.svg",
                      press: () {},
                      lights: "5 Lights",
                    ),
                    CategoryCard(
                      title: "Bathroom",
                      svgSrc: "assets/bathtube.svg",
                      press: () {},
                      lights: "1 Lights",
                    ),
                    CategoryCard(
                      title: "Outdoor",
                      svgSrc: "assets/house.svg",
                      press: () {},
                      lights: "5 Lights",
                    ),
                    CategoryCard(
                      title: "Balcony",
                      svgSrc: "assets/balcony.svg",
                      press: () {},
                      lights: "2 Lights",
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: size.height * 0.05,
              top: size.height * 0.25,
              child: Text("All Rooms",
              style: TextStyle(
                  decoration: null, fontSize: 22.0, color: Colors.black),
            ),
            ),
          //),
         ],
       ),
     );
   }
 }
