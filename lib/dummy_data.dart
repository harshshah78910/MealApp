import 'package:flutter/material.dart';
import 'package:mealApp/models/category.dart';
import 'package:mealApp/models/meal.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Indian',
    color: Colors.red,
  ),
  Category(
    id: 'c2',
    title: 'Italian',
    color: Colors.blue,
  ),
  Category(
    id: 'c3',
    title: 'American',
    color: Colors.teal,
  ),
  Category(
    id: 'c4',
    title: 'Chinesse',
    color: Colors.green,
  ),
  Category(
    id: 'c5',
    title: 'Vegian',
    color: Colors.greenAccent,
  ),
  Category(
    id: 'c6',
    title: 'Meat',
    color: Colors.pink,
  ),
  Category(
    id: 'c7',
    title: 'Meat',
    color: Colors.amber,
  ),
  Category(
    id: 'c8',
    title: 'Meat',
  ),
  Category(
    id: 'c9',
    title: 'Meat',
    color: Colors.deepPurple,
  ),
  Category(
    id: 'c10',
    title: 'Meat',
    color: Colors.brown,
  ),
];



const DUMMY_MEALS = const [
  const Meal(
    id: 'M1',
    categories: ['c1', 'c2'],
    title: 'Dosa',
    imageUrl:
        'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.TyKHH-5SkD0fIIkiWx5gwwHaEN%26pid%3DApi&f=1',
    ingredients: [],
    steps: ['Take Batter', 'And Do it'],
    duration: 20,
    complexity: Complexity.Simple,
    affordaibility: Affordaibility.luxurious,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: true,
    isVegetarian: true,
  ),
  const Meal(
    id: 'M2',
    categories: ['c2', 'c3'],
    title: 'Dosa',
    imageUrl:
        'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.TyKHH-5SkD0fIIkiWx5gwwHaEN%26pid%3DApi&f=1',
    ingredients: [],
    steps: ['Take Batter', 'And Do it'],
    duration: 20,
    complexity: Complexity.Simple,
    affordaibility: Affordaibility.pricey,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: true,
    isVegetarian: true,
  ),
  const Meal(
    id: 'M3',
    categories: ['c3', 'c4'],
    title: 'Dosa',
    imageUrl:
        'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.TyKHH-5SkD0fIIkiWx5gwwHaEN%26pid%3DApi&f=1',
    ingredients: [],
    steps: ['Take Batter', 'And Do it'],
    duration: 20,
    complexity: Complexity.Simple,
    affordaibility: Affordaibility.pricey,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: true,
    isVegetarian: true,
  ),
  const Meal(
    id: 'M4',
    categories: ['c4', 'c5'],
    title: 'Dosa',
    imageUrl:
        'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.TyKHH-5SkD0fIIkiWx5gwwHaEN%26pid%3DApi&f=1',
    ingredients: [],
    steps: ['Take Batter', 'And Do it'],
    duration: 20,
    complexity: Complexity.Simple,
    affordaibility: Affordaibility.pricey,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: true,
    isVegetarian: true,
  ),
  const Meal(
    id: 'M5',
    categories: ['c5', 'c6'],
    title: 'Dosa',
    imageUrl:
        'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.TyKHH-5SkD0fIIkiWx5gwwHaEN%26pid%3DApi&f=1',
    ingredients: [],
    steps: ['Take Batter', 'And Do it'],
    duration: 20,
    complexity: Complexity.Simple,
    affordaibility: Affordaibility.pricey,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: true,
    isVegetarian: true,
  ),
];
