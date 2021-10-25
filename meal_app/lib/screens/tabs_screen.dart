import 'package:flutter/material.dart';
import 'package:meal_app/screens/categories_screen.dart';
import 'package:meal_app/screens/favorite_screen.dart';
import 'package:meal_app/widget/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, Object>> _pages = [
    {'page': const CategoriesScreen(), 'title': 'Categories'},
    {'page': const FavoriteScreen(), 'title': 'Favorites'}
  ];
  int _selectedPageIndex = 0;
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  Widget x(){

return
    _pages[_selectedPageIndex]['title'].toString()=="Categories"? const CategoriesScreen():const FavoriteScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text(_pages[_selectedPageIndex]['title'].toString())),
      body: x(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.category),
             title: Text('Categories')),
        BottomNavigationBarItem(
            icon: Icon(Icons.star), title: Text('Favorites')),
      ]),
      drawer: const MainDrawer(),
    );
  }
}
