import 'package:flutter/material.dart';
import 'package:meal_app/models/meal.dart';
import 'package:meal_app/screens/meal_detail_screen.dart';

class MealItem extends StatelessWidget {
  final String id; final String title;
  final int duration;
    final Complexity complexity;
  final Affordability affordability;
final String imageUrl;
   MealItem( { required this.id, required this.imageUrl ,required this.title,required this.duration,required this.affordability,required this.complexity}) ;


String get complexityText{
  switch(complexity){
    case Complexity.CHALLENGING : return 'Challenging'; break;
    case Complexity.SIMPLE : return 'Simple'; break;
    case Complexity.HARD : return 'Hard'; break;
    default : return 'Unknown';
  }
}



String get affordabilityText{
  switch(affordability){
    case Affordability.AFFORDABLE : return 'Affordable'; break;
    case Affordability.LUXUIOUS : return 'Luxuious'; break;
    case Affordability.PRICEY : return 'Pricey'; break;
    default : return 'Unknown';
  }
}
void selectMeal(BuildContext ctx){
  Navigator.of(ctx).pushNamed(
    MealDetailScreen.routeName,
    arguments: id);

}
  @override
  Widget build(BuildContext context) {
    return InkWell(

      onTap: ()=>selectMeal(context),
      child:  Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          

        ),

elevation: 4,
margin: const EdgeInsets.all(10),
child: Column(
  children: [
    Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          child: Image.network(imageUrl,height: 200,width: double.infinity, fit: BoxFit.cover,),
        )
      ,
      Positioned(
        bottom: 20,
        right: 10,
        child: Container(
          width: 200,
          color: Colors.black54,
          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
          child: Text(
            title,style: const TextStyle(
            fontSize: 18,
           color: Colors.white),
           softWrap: true,
          overflow: TextOverflow.fade,),
        ),
      )
      ],
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
         children: [

              const Icon(Icons.schedule),
              const SizedBox(width: 6),
              Text("$duration min"),
         ],
            
          ),
          Row(
 children: [

              const Icon(Icons.work),
              Text(complexityText),
         ],


          ),
          Row(

             children: [

              const Icon(Icons.attach_money),
              Text(affordabilityText),
         ],
          )

      ],),)

],),
      ),
      
    );
  }
}