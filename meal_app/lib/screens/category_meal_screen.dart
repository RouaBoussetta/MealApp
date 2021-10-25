import 'package:flutter/material.dart';
import '../dummy_data.dart';
import 'package:meal_app/widget/meal_item.dart';

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
          return   MealItem(
            
            id: category_meal[index].id,
            imageUrl: category_meal[index].imageUrl,
            title: category_meal[index].title,
            duration: category_meal[index].duration,
            complexity: category_meal[index].complexity,
            affordability: category_meal[index].affordability,
          );
        },
        itemCount: category_meal.length,
        
        
        
        
    
      
      ),
    
    );
  }
}