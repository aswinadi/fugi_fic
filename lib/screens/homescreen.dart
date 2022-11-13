import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          child: ListView(
            children: [
              Container(
                height: 57.6,
                // margin: EdgeInsets.only(top: 28.8, right: 28.8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 57.6,
                      width: 57.6,
                      padding: EdgeInsets.all(14.4),
                      child: Icon(Icons.menu),
                    ),
                    Container(
                      height: 57.6,
                      width: 200,
                      padding: EdgeInsets.all(14.4),
                      child: Center(
                        child: Text(
                          "Home",
                          style: GoogleFonts.poppins(fontSize: 16),
                        ),
                      ),
                    ),
                    Container(
                      height: 57.6,
                      width: 57.6,
                      padding: EdgeInsets.all(14.4),
                      child: Icon(Icons.search),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 14.4, left: 14.4),
                child: Text(
                  "Discover the most\nmodern furniture",
                  style: GoogleFonts.poppins(
                    fontSize: 22,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28.8, left: 14.4),
                child: SizedBox(
                  height: 28.8,
                  child: ListView(
                    // padding: EdgeInsets.only(left: 28.8, top: 28.8),
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(
                        height: 28.8,
                        width: 50,
                        child: Text(
                          "All",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 28.8,
                        width: 80,
                        child: Text(
                          "Living Room",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 28.8,
                        width: 20,
                      ),
                      SizedBox(
                        height: 28.8,
                        width: 80,
                        child: Text(
                          "Bedroom",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 28.8,
                        width: 10,
                      ),
                      SizedBox(
                        height: 28.8,
                        width: 80,
                        child: Text(
                          "Dining Room",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 28.8,
                        width: 20,
                      ),
                      SizedBox(
                        height: 28.8,
                        width: 80,
                        child: Text(
                          "Kitchen",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
