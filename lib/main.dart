import 'package:flutter/material.dart';
import 'package:flutter_application_1/profilefirst.dart';
import 'package:flutter_application_1/SizeConfig.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter_application_1/photo.dart';
import 'package:flutter_application_1/journeys.dart';

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
              home: ProfileHome(),
            );
          },
        );
      },
    );
  }
}

class ProfileHome extends StatefulWidget {
  @override
  _ProfileHomeState createState() => _ProfileHomeState();
}

class _ProfileHomeState extends State<ProfileHome>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    // Photo(),
    // Photo(),
    // Journeys(),
    // Journeys(),
    ProfileFirst(),
    ProfileFirst(),
    ProfileFirst(),
    ProfileFirst(),
    ProfileFirst(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Container(
          height: 10 * SizeConfig.heightMultiplier,
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
          ]),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 8),
              child: GNav(
                  gap: 6,
                  activeColor: Colors.white,
                  iconSize: 24,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  duration: Duration(milliseconds: 800),
                  tabBackgroundColor: Colors.blue,
                  tabs: [
                    GButton(
                      icon: LineIcons.compass,
                      text: '',
                    ),
                    GButton(
                      icon: LineIcons.mapMarker,
                      text: '',
                    ),
                    GButton(
                      icon: LineIcons.sms,
                      text: '',
                    ),
                    GButton(
                      icon: LineIcons.bell,
                      text: '',
                    ),
                    GButton(
                      icon: LineIcons.user,
                      text: 'Profile',
                    ),
                  ],
                  selectedIndex: _selectedIndex,
                  onTabChange: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  }),
            ),
          ),
        ));
  }
}
