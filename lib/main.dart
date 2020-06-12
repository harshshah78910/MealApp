import 'package:flutter/material.dart';
import 'package:mealApp/category_meal_screen.dart';
import 'package:mealApp/dummy_data.dart';
import 'package:mealApp/filter_screen.dart';
import 'package:mealApp/meal_detail_screen.dart';
import 'package:mealApp/models/meal.dart';
import 'package:mealApp/tabs_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filterMap = {
    'glutenFree': false,
    'lactoseFree': false,
    'vegan': false,
    'vegeterian': false,
  };

  List<Meal> availableMeals = DUMMY_MEALS;

  void _setFilter(Map<String, bool> filterMap) {
    setState(() {
      _filterMap = filterMap;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeal',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        accentColor: Colors.purple,
        canvasColor: Colors.white,
      ),
      home: TabsScreen(),
      routes: {
        CategoryMealScreen.routeName: (ctx) => CategoryMealScreen(availableMeals),
        MealDetail.routename: (ctx) => MealDetail(),
        FilterScreen.routeName: (ctx) => FilterScreen(_setFilter),
      },
    );
  }
}
