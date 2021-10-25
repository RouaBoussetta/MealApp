import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_app/dummy_data.dart';
import 'package:meal_app/widget/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: 
      GridView(
        padding: const EdgeInsets.all(25),
        children: DUMMY_CATEGORIES.map((e) => 
        
      CategoryItem(e.id, e.title, e.color),
        
        ).toList(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200, // element width 200
            mainAxisSpacing: 20, //space between elements
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20),
      ),
    );
  }
}
