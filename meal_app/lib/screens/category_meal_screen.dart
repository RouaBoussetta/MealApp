import 'package:flutter/material.dart';
import '../dummy_data.dart';

class CategoryMealScreen extends StatefulWidget {


static const routeName='categorymeal';

  @override
  _CategoryMealScreenState createState() => _CategoryMealScreenState();
}

class _CategoryMealScreenState extends State<CategoryMealScreen> {
  @override
  Widget build(BuildContext context) {

    final routeArg=ModalRoute.of(context)!.settings.arguments as Map<String,String>;
    final categoryId=routeArg['id'];
    final  categoryTitle=routeArg['title'];
    final category_meal=DUMMY_MEALS.where((meal)  {
       return meal.categories.contains(categoryId);
    }).toList();
    
    return Scaffold(
      appBar: AppBar(title:  Text(categoryTitle.toString())),
      body: ListView.builder(
        itemBuilder:(ctx,index){
          return Text(category_meal[index].title);
        },
        itemCount: category_meal.length,
        
        
        
        
    
      
      ),
    
    );
  }
}