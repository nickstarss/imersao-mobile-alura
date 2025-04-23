import 'package:flutter/material.dart';
import 'package:myapp/model/restaurant.dart';
import 'package:myapp/ui/restaurant/restaurant_screen.dart';

class RestaurantWidget extends StatelessWidget {
  const RestaurantWidget({super.key, required this.restaurant});
  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return RestaurantScreen(restaurant: restaurant);
            },
          ),
        );
      },
      child: Row(
        spacing: 12.0,
        children: [
          Image.asset('assets/${restaurant.imagePath}', width: 72),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                restaurant.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              Row(
                children: List.generate(restaurant.stars.toInt(), (index) {
                  return Image.asset('assets/others/star.png', width: 16);
                }),
              ),
              Text('${restaurant.distance}km'),
            ],
          ),
        ],
      ),
    );
  }
}
