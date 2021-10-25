import 'package:flutter/material.dart';
import 'package:meal_app/screens/categories_screen.dart';
import 'package:meal_app/screens/filters.dart';
import 'package:meal_app/screens/meal_detail_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);


Widget list(String text,IconData icon, Function tap){
  return    ListTile(
            leading: Icon(
              icon,
              size: 18,
            ),
            title: Text(
              text,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'RobotoCondensed'),
            ),
            onTap: tap(),
          
          );
}
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: Colors.pink,
            child: const Text(
              "Cooking Up!",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
         list("Meal", Icons.restaurant,(){}),
         list("Filters", Icons.filter,(){})

        ],
      ),
    );
  }
}
