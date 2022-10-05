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
              home: Photo(),
            );
          },
        );
      },
    );
  }
}

class Photo extends StatefulWidget {
  @override
  _PhotoState createState() => _PhotoState();
}

var asset1 = "travelfive.png";
var asset2 = "traveltwo.png";
var asset3 = "travelsix.png";
var asset4 = "travelthree.png";
var iconadd = "iconadd.png";

class _PhotoState extends State<Photo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 0.0),
            child: Container(
              width: 100 * SizeConfig.widthMultiplier,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 1 * SizeConfig.heightMultiplier,
                    ),
                    Container(
                      child: Text(
                        "My Photos",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 3 * SizeConfig.textMultiplier),
                      ),
                    ),
                    SizedBox(
                      height: 2 * SizeConfig.heightMultiplier,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 32 * SizeConfig.imageSizeMultiplier,
                          width: 32.5 * SizeConfig.imageSizeMultiplier,
                          decoration: BoxDecoration(
                              border: Border.all(
                            color: Colors.green,
                            width: 2,
                          )),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  child: Image.asset(
                                    iconadd,
                                    height: 8 * SizeConfig.imageSizeMultiplier,
                                    width: 8 * SizeConfig.imageSizeMultiplier,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  height: 1 * SizeConfig.heightMultiplier,
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
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
