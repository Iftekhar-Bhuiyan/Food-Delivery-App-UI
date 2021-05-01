import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/json/home_page_json.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeMenu = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(menu.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        activeMenu = index;
                      });
                    },
                    child: activeMenu == index
                        ? ElasticIn()
                        : Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(30)),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 15, right: 15, bottom: 8, top: 8),
                              child: Row(
                                children: [
                                  Text(
                                    menu[index],
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          ),
                  ),
                );
              }),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  height: 45,
                  width: size.width - 70,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              "assets/images/pin_icon.svg",
                              width: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Dhaka",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
