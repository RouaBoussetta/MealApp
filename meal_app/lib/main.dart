import 'package:flutter/material.dart';
import 'package:meal_app/screens/categories_screen.dart';
import 'package:meal_app/screens/category_meal_screen.dart';
import 'package:meal_app/screens/filters.dart';
import 'package:meal_app/screens/meal_detail_screen.dart';
import 'package:meal_app/screens/tabs_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meal App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        primaryColor: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: const Color.fromRGBO(255,254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: const TextStyle(
     color: Color.fromRGBO(20, 50, 50, 1)

          ),
          bodyText2: const TextStyle(
                 color: Color.fromRGBO(20, 50, 50, 1)

          ),
          subtitle1:const TextStyle(
            fontSize:18,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold
          )
        ),
      ),
      //home: const MyHomePage(title: 'Meal App'),
     // home: const CategoriesScreen(),
      
      routes: {
       '/': (ctx) =>  const TabsScreen(),
     CategoryMealScreen.routeName: (ctx) =>   CategoryMealScreen(),
     MealDetailScreen.routeName: (ctx) =>  const MealDetailScreen(),
     Filters.routeName: (ctx) =>   Filters(),
     
     
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        
      ),
      body: null,
    
    );
  }
}
