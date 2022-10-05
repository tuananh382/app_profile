// ignore: depend_on_referenced_packages
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
              home: Journeys(),
            );
          },
        );
      },
    );
  }
}

var iconadd = "iconadd.png";

class Journeys extends StatefulWidget {
  @override
  _JourneysState createState() => _JourneysState();
}

class _JourneysState extends State<Journeys> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Container(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding:
                        EdgeInsets.only(top: 2 * SizeConfig.heightMultiplier),
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
                    height: 10 * SizeConfig.imageSizeMultiplier,
                    width: 70 * SizeConfig.imageSizeMultiplier,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          color: Colors.green,
                          width: 2,
                        )),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            child: Image.asset(
                              iconadd,
                              height: 5 * SizeConfig.imageSizeMultiplier,
                              width: 5 * SizeConfig.imageSizeMultiplier,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 3 * SizeConfig.widthMultiplier,
                          ),
                          Text(
                            "Add Photos",
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 1.5 * SizeConfig.textMultiplier,
                                fontWeight: FontWeight.bold),
                          )
                        ]),
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
          )
        ],
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
