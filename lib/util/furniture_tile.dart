import 'package:flutter/material.dart';

class FurnitureTile extends StatelessWidget {
  final String furnitureImagePath;
  final String furnitureName;
  final String furniturePrice;
  final String furnitureRating;

  FurnitureTile(
      {required this.furnitureImagePath,
      required this.furnitureName,
      required this.furniturePrice,
      required this.furnitureRating});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 14.4,
        bottom: 14.4,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          width: 180,
          height: 220,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.grey,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //image
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(furnitureImagePath),
              ),
              //details
              Text(furnitureName),
              //price
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\$' + furniturePrice),
                  Icon(Icons.star),
                  Text(furnitureRating),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
