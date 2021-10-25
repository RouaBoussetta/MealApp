import 'dart:async';

import 'package:flutter/material.dart';
import 'package:meal_app/dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({Key? key}) : super(key: key);

  static const routeName = "meal_detail";

Widget buildContainer(Widget child){
  return Container(
         decoration: BoxDecoration(

           border: Border.all(color: Colors.grey),
           borderRadius: BorderRadius.circular(15),
         ),
          margin: const EdgeInsets.all(10),
          height:300 ,
          width: 300,
     
            child:child
           
          
          
          );
}
  Widget buildSectionTitle(String text,BuildContext context){
    return
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              text,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          );
  }
  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);

    return Scaffold(
      appBar: AppBar(
        title: Text(selectedMeal.title),
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          
          buildSectionTitle("Ingrendients",context)
         ,
          buildContainer(ListView.builder(
                itemBuilder: (ctx,index)=> Card(
                   color: Colors.pink.shade100,
                  child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                    child: Text(selectedMeal.ingredients[index],style: Theme.of(context).textTheme.subtitle2),
                  ),
                ),
                itemCount: selectedMeal.ingredients.length,),
            ),
          
              buildSectionTitle("Steps",context),
             
             
               buildContainer(ListView.builder(
                itemBuilder: (ctx,index)=> ListTile(
                leading:CircleAvatar(
                 
                 child: Text("${index+1}"),) ,
               title: Text(selectedMeal.steps[index],style: Theme.of(context).textTheme.subtitle2,),
              
                  ),
          
                  
                  itemCount: selectedMeal.steps.length,
                ),
              
            ),
      
          ],
        ),
      ),
    );
  }
}
