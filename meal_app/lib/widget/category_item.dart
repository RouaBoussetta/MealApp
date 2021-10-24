import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meal_app/dummy_data.dart';

class CategoryItem extends StatelessWidget{
 
final String id;
final String title;
final Color color;
 CategoryItem(   this.id,  this.title,  this.color);

  @override
  Widget build(BuildContext context) {
 
return  InkWell(
onTap: (){},
child: Container(
padding: const EdgeInsets.all(15),
child: Text(title),
decoration: BoxDecoration(
  gradient: LinearGradient(
    colors: [
      color.withOpacity(0.7),
      color
    ],
begin: Alignment.topLeft,
end: Alignment.bottomRight,),
borderRadius: BorderRadius.circular(15)),

),

);  }



}