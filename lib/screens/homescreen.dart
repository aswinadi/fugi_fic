import 'package:flutter/material.dart';

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
        child: Container(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Container(
                  height: 60,
                  // margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: AppBar(
                    backgroundColor: Colors.transparent,
                    leading: Icon(
                      Icons.menu,
                    ),
                    title: Center(child: Text("Furniture Shop")),
                    actions: [
                      Icon(Icons.search),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
