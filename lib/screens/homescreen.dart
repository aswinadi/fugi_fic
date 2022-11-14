import 'package:flutter/material.dart';
import 'package:fugi_fic/util/furniture_tile.dart';
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
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Padding(
          padding: EdgeInsets.only(left: 14.4),
          child: Icon(Icons.menu),
        ),
        title: Center(
          child: Text(
            'Home',
            style: GoogleFonts.poppins(fontSize: 16),
          ),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 14.4),
            child: Icon(Icons.search),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Discover the most modern furniture
          Padding(
            padding: const EdgeInsets.only(left: 14.4),
            child: Text(
              "Discover the most\nmodern furniture",
              style: GoogleFonts.poppins(fontSize: 22),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // Horizontal list view
          SizedBox(
            height: 28.8,
            child: Padding(
              padding: const EdgeInsets.only(left: 14.4),
              child: ListView(
                scrollDirection: Axis.horizontal,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const SizedBox(
                    // height: 28.8,
                    width: 70,
                    child: Text('All'),
                  ),
                  const SizedBox(
                    // height: 28.8,
                    width: 80,
                    child: Text('Living Room'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const SizedBox(
                    // height: 28.8,
                    width: 80,
                    child: Text('Bedroom'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const SizedBox(
                    // height: 28.8,
                    width: 80,
                    child: Text('Dining Room'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const SizedBox(
                    // height: 28.8,
                    width: 80,
                    child: Text('Kitchen'),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // Recommended furniture
          const Padding(
            padding: EdgeInsets.only(left: 14.4),
            child: Text('Recommended furniture'),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                FurnitureTile(
                  furnitureImagePath: 'assets/images/furniture_composition.png',
                  furnitureName: 'Stylish Chair',
                  furniturePrice: '170',
                  furnitureRating: '4.8',
                ),
                FurnitureTile(
                  furnitureImagePath: 'assets/images/master_bedroom.png',
                  furnitureName: 'Modern Table',
                  furniturePrice: '75',
                  furnitureRating: '4.9',
                ),
                FurnitureTile(
                  furnitureImagePath: 'assets/images/modern_furniture.png',
                  furnitureName: 'Wooden Console',
                  furniturePrice: '240',
                  furnitureRating: '4.7',
                ),
                FurnitureTile(
                  furnitureImagePath: 'assets/images/vintage_furniture.png',
                  furnitureName: 'Brown Armchair',
                  furniturePrice: '210',
                  furnitureRating: '4.9',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
