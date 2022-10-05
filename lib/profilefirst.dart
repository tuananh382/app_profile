// ignore: depend_on_referenced_packages

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/SizeConfig.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'HomeScreen App',
              home: ProfileFirst(),
            );
          },
        );
      },
    );
  }
}

class ProfileFirst extends StatefulWidget {
  @override
  _ProfileFirstState createState() => _ProfileFirstState();
}

var iconcamera = "iconcamera.png";
var iconcamera2 = "iconadd2.png";
var vector = "vector.png";

class _ProfileFirstState extends State<ProfileFirst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("background.png"), fit: BoxFit.fill)),
            height: 20 * SizeConfig.heightMultiplier,
          ),
          Padding(
              padding: EdgeInsets.only(left: 350, top: 140),
              child: ClipRRect(
                child: Image.asset(
                  iconcamera2,
                  width: 5 * SizeConfig.imageSizeMultiplier,
                  fit: BoxFit.cover,
                ),
              )),
          Padding(
              padding: EdgeInsets.only(left: 350, top: 40),
              child: ClipRRect(
                child: Image.asset(
                  vector,
                  width: 5 * SizeConfig.imageSizeMultiplier,
                  fit: BoxFit.cover,
                ),
              )),
          Container(
            child: Padding(
              padding: EdgeInsets.only(
                  left: 30.0,
                  right: 30.0,
                  top: 17.5 * SizeConfig.heightMultiplier),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 11 * SizeConfig.heightMultiplier,
                        width: 22 * SizeConfig.widthMultiplier,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("profileimg.png"))),
                      ),
                      SizedBox(
                        width: 4 * SizeConfig.widthMultiplier,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 1 * SizeConfig.heightMultiplier,
                          ),
                          Text(
                            "Yoo Jin",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 2.5 * SizeConfig.textMultiplier,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "yoojin@gmail.com",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 2 * SizeConfig.textMultiplier,
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(
                            height: 1 * SizeConfig.heightMultiplier,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 3 * SizeConfig.heightMultiplier,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 220, left: 57),
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.4),
                      offset: Offset(0, 0),
                      blurRadius: 5,
                      spreadRadius: 1,
                    )
                  ]),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      child: Image.asset(
                        iconcamera,
                        // height: 5 * SizeConfig.imageSizeMultiplier,
                        width: 4 * SizeConfig.imageSizeMultiplier,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ]),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30 * SizeConfig.heightMultiplier),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          right: 250, top: 2 * SizeConfig.heightMultiplier),
                      child: Text(
                        "My Photos",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 2.5 * SizeConfig.textMultiplier),
                      ),
                    ),
                    SizedBox(
                      height: 2 * SizeConfig.heightMultiplier,
                    ),
                    Container(
                      height: 37 * SizeConfig.heightMultiplier,
                      child: ListView(
                        children: <Widget>[
                          _myAlbumCard(
                              "travelfive.png",
                              "traveltwo.png",
                              "travelsix.png",
                              "travelthree.png",
                              "+178",
                              "Best Trip"),
                          SizedBox(
                            width: 40 * SizeConfig.widthMultiplier,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          right: 250, top: 2 * SizeConfig.heightMultiplier),
                      child: Text(
                        "My Journeys",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 2.5 * SizeConfig.textMultiplier),
                      ),
                    ),
                    SizedBox(
                      height: 3 * SizeConfig.heightMultiplier,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 19),
                      height: 35 * SizeConfig.heightMultiplier,
                      child: ListView(
                        children: <Widget>[
                          _favoriteCard(
                            "image1.png",
                            "image2.png",
                            "image3.png",
                            "A memory in Danang",
                            "Danang, Vietnam",
                            "Jan 20, 2020",
                            "234 likes",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3 * SizeConfig.heightMultiplier,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 19,
                      ),
                      height: 35 * SizeConfig.heightMultiplier,
                      child: ListView(
                        children: <Widget>[
                          _favoriteCard(
                            "image4.png",
                            "image5.png",
                            "image6.png",
                            "Sapa in spring",
                            "Sapa, Vietnam",
                            "Jan 20, 2020",
                            "234 likes",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3 * SizeConfig.heightMultiplier,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  _myAlbumCard(String asset1, String asset2, String asset3, String asset4,
      String more, String name) {
    return Padding(
      padding: const EdgeInsets.only(left: 0.0),
      child: Container(
        height: 37 * SizeConfig.heightMultiplier,
        width: 100 * SizeConfig.widthMultiplier,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  ClipRRect(
                    child: Image.asset(
                      asset1,
                      height: 32 * SizeConfig.imageSizeMultiplier,
                      width: 33 * SizeConfig.imageSizeMultiplier,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 1 * SizeConfig.widthMultiplier,
                  ),
                  ClipRRect(
                    child: Image.asset(
                      asset2,
                      height: 32 * SizeConfig.imageSizeMultiplier,
                      width: 32.5 * SizeConfig.imageSizeMultiplier,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 1 * SizeConfig.widthMultiplier,
                  ),
                  ClipRRect(
                    child: Image.asset(
                      asset3,
                      height: 32 * SizeConfig.imageSizeMultiplier,
                      width: 32.5 * SizeConfig.imageSizeMultiplier,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 0.5 * SizeConfig.heightMultiplier,
              ),
              Row(
                children: <Widget>[
                  ClipRRect(
                    child: Image.asset(
                      asset4,
                      height: 42 * SizeConfig.imageSizeMultiplier,
                      width: 100 * SizeConfig.imageSizeMultiplier,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _favoriteCard(String img1, String img2, String img3, String name, String add,
      String date, String like) {
    return Container(
      child: Container(
        height: 35 * SizeConfig.heightMultiplier,
        width: 90 * SizeConfig.widthMultiplier,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.4),
                  offset: Offset(0, 0),
                  blurRadius: 5,
                  spreadRadius: 1,
                )
              ]),
          child: Column(
            children: [
              Row(
                children: [
                  ClipRRect(
                    child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                        ),
                        child: Image.asset(
                          img1,
                          height: 21 * SizeConfig.heightMultiplier,
                          width: 45 * SizeConfig.widthMultiplier,
                          fit: BoxFit.cover,
                        )),
                  ),
                  Container(
                    child: Column(
                      children: [
                        ClipRRect(
                          child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10)),
                              child: Image.asset(
                                img2,
                                height: 10.5 * SizeConfig.heightMultiplier,
                                width: 45 * SizeConfig.widthMultiplier,
                                fit: BoxFit.cover,
                              )),
                        ),
                        ClipRRect(
                          child: ClipRRect(
                              child: Image.asset(
                            img3,
                            height: 10.5 * SizeConfig.heightMultiplier,
                            width: 45 * SizeConfig.widthMultiplier,
                            fit: BoxFit.cover,
                          )),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                ),
                child: Container(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 2 * SizeConfig.heightMultiplier,
                    ),
                    Padding(
                      padding: EdgeInsets.only(),
                      child: Text(
                        name,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 2 * SizeConfig.textMultiplier),
                      ),
                    ),
                    SizedBox(
                      height: 1 * SizeConfig.heightMultiplier,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 1.7 * SizeConfig.heightMultiplier,
                          width: 3 * SizeConfig.widthMultiplier,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("addicon.png"))),
                        ),
                        SizedBox(
                          width: 1.7 * SizeConfig.widthMultiplier,
                        ),
                        Padding(
                          padding: EdgeInsets.only(),
                          child: Text(
                            add,
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 1.5 * SizeConfig.textMultiplier),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1 * SizeConfig.heightMultiplier,
                    ),
                    Padding(
                        padding: EdgeInsets.only(),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(),
                              child: Text(
                                date,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 1.5 * SizeConfig.textMultiplier),
                              ),
                            ),
                            SizedBox(
                              width: 40 * SizeConfig.widthMultiplier,
                            ),
                            Row(
                              children: [
                                Container(
                                    height: 2.1 * SizeConfig.heightMultiplier,
                                    width: 5.1 * SizeConfig.widthMultiplier,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image:
                                                AssetImage("likeicon.png")))),
                                SizedBox(
                                  width: 1.7 * SizeConfig.widthMultiplier,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(),
                                  child: Text(
                                    like,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize:
                                            1.5 * SizeConfig.textMultiplier),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ))
                  ],
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
